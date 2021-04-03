import '../api.dart';

class Streaming {
  final API _api;

  Streaming(this._api);

  /// Allows to receive data for the connection to Streaming API.
  ///
  /// Params: none
  Future<dynamic> getServerUrl([Map<String, dynamic>? params]) async {
    return _api.request('streaming.getServerUrl', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `monthly_tier` *(string)*
  Future<dynamic> setSettings([Map<String, dynamic>? params]) async {
    return _api.request('streaming.setSettings', {
      ...?params,
    });
  }
}
