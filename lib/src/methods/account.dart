import 'package:vklib/src/params.dart';

import '../api.dart';

class Account {
  late final API _api;

  Account(this._api);

  Future<Params> ban([Map<String, dynamic>? params]) async {
    return _api.request('account.ban', {
      ...?params,
    });
  }

  Future<Params> changePassword([Map<String, dynamic>? params]) async {
    return _api.request('account.changePassword', {
      ...?params,
    });
  }

  Future<Params> getActiveOffers([Map<String, dynamic>? params]) async {
    return _api.request('account.getActiveOffers', {
      ...?params,
    });
  }

  Future<Params> getAppPermissions([Map<String, dynamic>? params]) async {
    return _api.request('account.getAppPermissions', {
      ...?params,
    });
  }

  Future<Params> getBanned([Map<String, dynamic>? params]) async {
    return _api.request('account.getBanned', {
      ...?params,
    });
  }

  Future<Params> getCounters([Map<String, dynamic>? params]) async {
    return _api.request('account.getCounters', {
      ...?params,
    });
  }

  Future<Params> getInfo([Map<String, dynamic>? params]) async {
    return _api.request('account.getInfo', {
      ...?params,
    });
  }

  Future<Params> getProfileInfo([Map<String, dynamic>? params]) async {
    return _api.request('account.getProfileInfo', {
      ...?params,
    });
  }

  Future<Params> getPushSettings([Map<String, dynamic>? params]) async {
    return _api.request('account.getPushSettings', {
      ...?params,
    });
  }

  Future<Params> registerDevice([Map<String, dynamic>? params]) async {
    return _api.request('account.registerDevice', {
      ...?params,
    });
  }

  Future<Params> saveProfileInfo([Map<String, dynamic>? params]) async {
    return _api.request('account.saveProfileInfo', {
      ...?params,
    });
  }

  Future<Params> setInfo([Map<String, dynamic>? params]) async {
    return _api.request('account.setInfo', {
      ...?params,
    });
  }

  Future<Params> setNameInMenu([Map<String, dynamic>? params]) async {
    return _api.request('account.setNameInMenu', {
      ...?params,
    });
  }

  Future<Params> setOffline([Map<String, dynamic>? params]) async {
    return _api.request('account.setOffline', {
      ...?params,
    });
  }

  Future<Params> setOnline([Map<String, dynamic>? params]) async {
    return _api.request('account.setOnline', {
      ...?params,
    });
  }

  Future<Params> setPushSettings([Map<String, dynamic>? params]) async {
    return _api.request('account.setPushSettings', {
      ...?params,
    });
  }

  Future<Params> setSilenceMode([Map<String, dynamic>? params]) async {
    return _api.request('account.setSilenceMode', {
      ...?params,
    });
  }

  Future<Params> unban([Map<String, dynamic>? params]) async {
    return _api.request('account.unban', {
      ...?params,
    });
  }

  Future<Params> unregisterDevice([Map<String, dynamic>? params]) async {
    return _api.request('account.unregisterDevice', {
      ...?params,
    });
  }
}
