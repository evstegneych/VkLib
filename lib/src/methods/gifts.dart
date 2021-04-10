import '../api.dart';
import '../params.dart';

class Gifts {
  final API _api;

  Gifts(this._api);

  /// Returns a list of user gifts.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `count` *(integer)* Number of gifts to return.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  Future<Params> get([Map<String, dynamic>? params]) async {
    return _api.request('gifts.get', {
      ...?params,
    });
  }
}
