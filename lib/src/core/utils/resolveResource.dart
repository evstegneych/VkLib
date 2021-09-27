import '../lib/src/models/api.dart' show API;

final RegExp _onlyNumberRe = RegExp(r"^-?\d+$");
final RegExp _systemMentionRe = RegExp(r"\[([^|]+)\|[^\]]+\]");
final RegExp _isHttpsRe = RegExp(r"^https:\/\/", caseSensitive: false);
final RegExp _isVKUrlRe = RegExp(r"^(?:https:\/\/)?(?:m\.)?vk.com\/", caseSensitive: false);
final RegExp _parseTargetResourceRe = RegExp(r"^(id|club|public|albums|tag|app)(-?\d+)$", caseSensitive: false);
final RegExp _parseOwnerResourceRe =
    RegExp(r"^(album|topic|page|photo|video|audio|doc|audio_message|graffiti|wall|market|poll|gift)(-?\d+)_(\d+)", caseSensitive: false);

String _transformNumberResourceToTarget(int resource) => (resource < 0 ? "club${-resource}" : "id$resource");

String _transformMentionResourceToTarget(String resource) => _systemMentionRe.firstMatch(resource)!.group(1)!;

Map<String, dynamic> _resolveTargetResouce(String resourse) {
  final RegExpMatch raw = _parseTargetResourceRe.firstMatch(resourse)!;
  final String? rawType = raw.group(1);
  return {"id": int.parse(raw.group(2)!), "type": _enumResourceTypes[rawType] ?? rawType};
}

Map<String, dynamic> _resolveOwnerResource(String resource) {
  final RegExpMatch raw = _parseOwnerResourceRe.firstMatch(resource)!;

  return {"id": int.parse(raw.group(3)!), "ownerId": int.parse(raw.group(2)!), "type": raw.group(1)};
}

Future<Map<String, dynamic>> _resolveSlugResource(String resource, API api) async {
  final dynamic response = await api.utils.resolveScreenName(screenName: resource);
  if (response is List) throw _ResourceError("Resource not found");

  return {"id": response["object_id"], "type": response["type"]};
}

Future<Map<String, dynamic>> resolveResource(dynamic resource, API api) async {
  if (resource is! String && resource is! int) throw _ResourceError("text");

  resource = resource.toString().trim();

  if (_onlyNumberRe.hasMatch(resource)) return _resolveTargetResouce(_transformNumberResourceToTarget(int.parse(resource)));

  if (_systemMentionRe.hasMatch(resource)) return _resolveTargetResouce(_transformMentionResourceToTarget(resource));

  if (_parseOwnerResourceRe.hasMatch(resource)) return _resolveOwnerResource(resource);

  if (_parseTargetResourceRe.hasMatch(resource)) return _resolveTargetResouce(resource);

  if (!_isVKUrlRe.hasMatch(resource)) return _resolveSlugResource(resource, api);

  final String resourceUrl = !_isHttpsRe.hasMatch(resource) ? "https://$resource" : resource;

  final Uri raw = Uri.parse(resourceUrl);

  if (raw.path == "/") throw _ResourceError("URL should contain path");

  final String pathname = raw.path.substring(1);

  final String? search = raw.queryParameters["w"] ?? raw.queryParameters["z"];

  if (search != null && _parseOwnerResourceRe.hasMatch(search)) return _resolveOwnerResource(search);

  if (_parseOwnerResourceRe.hasMatch(pathname)) return _resolveOwnerResource(pathname);

  if (_parseTargetResourceRe.hasMatch(pathname)) return _resolveTargetResouce(pathname);

  return _resolveSlugResource(pathname, api);
}

enum _ResourceTypeEnum { USER, GROUP, APPLICATION }

final List<String> _ResourceType = ["user", "group", "application"];

final Map<String, dynamic> _enumResourceTypes = {
  "id": _ResourceType[_ResourceTypeEnum.USER.index],
  "club": _ResourceType[_ResourceTypeEnum.GROUP.index],
  "public": _ResourceType[_ResourceTypeEnum.GROUP.index],
  "app": _ResourceType[_ResourceTypeEnum.APPLICATION.index]
};

class _ResourceError {
  String text;

  _ResourceError(this.text);

  @override
  String toString() => "ResourceError: $text";
}
