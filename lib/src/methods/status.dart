import '../api.dart';

class Status {
  final API _api;

  Status(this._api);

  /// Returns data required to show the status of a user or community.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `group_id` *(integer)*
  Future<dynamic> get([Map<String, dynamic>? params]) async {
    return _api.request('status.get', {
      ...?params,
    });
  }

  /// Sets a new status for the current user.
  ///
  /// Params:
  ///
  /// `text` *(string)* Text of the new status.
  ///
  /// `group_id` *(integer)* Identifier of a community to set a status in. If left blank the status is set to current user.
  Future<dynamic> set([Map<String, dynamic>? params]) async {
    return _api.request('status.set', {
      ...?params,
    });
  }
}
