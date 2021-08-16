import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/base/types.dart';

class Account {
  final API _api;

  Account(this._api);

  /// None
  Future<Json> ban({int? owner_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('account.ban', {
      ..._params,
    });
  }

  /// Changes a user password after access is successfully restored with the [vk.com/dev/auth.restore|auth.restore] method.
  Future<Json> changePassword(
      {String? restore_sid,
      String? change_password_hash,
      String? old_password,
      String? new_password}) async {
    var _params = {};
    if (restore_sid != null) _params['restore_sid'] = restore_sid;
    if (change_password_hash != null)
      _params['change_password_hash'] = change_password_hash;
    if (old_password != null) _params['old_password'] = old_password;
    if (new_password != null) _params['new_password'] = new_password;
    return _api.request('account.changePassword', {
      ..._params,
    });
  }

  /// Returns a list of active ads (offers) which executed by the user will bring him/her respective number of votes to his balance in the application.
  Future<Json> getActiveOffers({int? offset, int? count}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('account.getActiveOffers', {
      ..._params,
    });
  }

  /// Gets settings of the user in this application.
  Future<Json> getAppPermissions({int? user_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('account.getAppPermissions', {
      ..._params,
    });
  }

  /// Returns a user's blacklist.
  Future<Json> getBanned({int? offset, int? count}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('account.getBanned', {
      ..._params,
    });
  }

  /// Returns non-null values of user counters.
  Future<Json> getCounters({List<dynamic>? filter, int? user_id}) async {
    var _params = {};
    if (filter != null) _params['filter'] = filter;
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('account.getCounters', {
      ..._params,
    });
  }

  /// Returns current account info.
  Future<Json> getInfo({List<dynamic>? fields}) async {
    var _params = {};
    if (fields != null) _params['fields'] = fields;
    return _api.request('account.getInfo', {
      ..._params,
    });
  }

  /// Returns the current account info.
  Future<Json> getProfileInfo() async {
    var _params = {};

    return _api.request('account.getProfileInfo', {
      ..._params,
    });
  }

  /// Gets settings of push notifications.
  Future<Json> getPushSettings({String? device_id}) async {
    var _params = {};
    if (device_id != null) _params['device_id'] = device_id;
    return _api.request('account.getPushSettings', {
      ..._params,
    });
  }

  /// Subscribes an iOS/Android/Windows Phone-based device to receive push notifications
  Future<Json> registerDevice(
      {String? token,
      String? device_model,
      int? device_year,
      String? device_id,
      String? system_version,
      String? settings,
      bool? sandbox}) async {
    var _params = {};
    if (token != null) _params['token'] = token;
    if (device_model != null) _params['device_model'] = device_model;
    if (device_year != null) _params['device_year'] = device_year;
    if (device_id != null) _params['device_id'] = device_id;
    if (system_version != null) _params['system_version'] = system_version;
    if (settings != null) _params['settings'] = settings;
    if (sandbox != null) _params['sandbox'] = sandbox;
    return _api.request('account.registerDevice', {
      ..._params,
    });
  }

  /// Edits current profile info.
  Future<Json> saveProfileInfo(
      {String? first_name,
      String? last_name,
      String? maiden_name,
      String? screen_name,
      int? cancel_request_id,
      int? sex,
      int? relation,
      int? relation_partner_id,
      String? bdate,
      int? bdate_visibility,
      String? home_town,
      int? country_id,
      int? city_id,
      String? status}) async {
    var _params = {};
    if (first_name != null) _params['first_name'] = first_name;
    if (last_name != null) _params['last_name'] = last_name;
    if (maiden_name != null) _params['maiden_name'] = maiden_name;
    if (screen_name != null) _params['screen_name'] = screen_name;
    if (cancel_request_id != null)
      _params['cancel_request_id'] = cancel_request_id;
    if (sex != null) _params['sex'] = sex;
    if (relation != null) _params['relation'] = relation;
    if (relation_partner_id != null)
      _params['relation_partner_id'] = relation_partner_id;
    if (bdate != null) _params['bdate'] = bdate;
    if (bdate_visibility != null)
      _params['bdate_visibility'] = bdate_visibility;
    if (home_town != null) _params['home_town'] = home_town;
    if (country_id != null) _params['country_id'] = country_id;
    if (city_id != null) _params['city_id'] = city_id;
    if (status != null) _params['status'] = status;
    return _api.request('account.saveProfileInfo', {
      ..._params,
    });
  }

  /// Allows to edit the current account info.
  Future<Json> setInfo({String? name, String? value}) async {
    var _params = {};
    if (name != null) _params['name'] = name;
    if (value != null) _params['value'] = value;
    return _api.request('account.setInfo', {
      ..._params,
    });
  }

  /// Sets an application screen name (up to 17 characters), that is shown to the user in the left menu.
  Future<Json> setNameInMenu({int? user_id, String? name}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (name != null) _params['name'] = name;
    return _api.request('account.setNameInMenu', {
      ..._params,
    });
  }

  /// Marks a current user as offline.
  Future<Json> setOffline() async {
    var _params = {};

    return _api.request('account.setOffline', {
      ..._params,
    });
  }

  /// Marks the current user as online for 15 minutes.
  Future<Json> setOnline({bool? voip}) async {
    var _params = {};
    if (voip != null) _params['voip'] = voip;
    return _api.request('account.setOnline', {
      ..._params,
    });
  }

  /// Change push settings.
  Future<Json> setPushSettings(
      {String? device_id,
      String? settings,
      String? key,
      List<dynamic>? value}) async {
    var _params = {};
    if (device_id != null) _params['device_id'] = device_id;
    if (settings != null) _params['settings'] = settings;
    if (key != null) _params['key'] = key;
    if (value != null) _params['value'] = value;
    return _api.request('account.setPushSettings', {
      ..._params,
    });
  }

  /// Mutes push notifications for the set period of time.
  Future<Json> setSilenceMode(
      {String? device_id, int? time, int? peer_id, int? sound}) async {
    var _params = {};
    if (device_id != null) _params['device_id'] = device_id;
    if (time != null) _params['time'] = time;
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (sound != null) _params['sound'] = sound;
    return _api.request('account.setSilenceMode', {
      ..._params,
    });
  }

  /// None
  Future<Json> unban({int? owner_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('account.unban', {
      ..._params,
    });
  }

  /// Unsubscribes a device from push notifications.
  Future<Json> unregisterDevice({String? device_id, bool? sandbox}) async {
    var _params = {};
    if (device_id != null) _params['device_id'] = device_id;
    if (sandbox != null) _params['sandbox'] = sandbox;
    return _api.request('account.unregisterDevice', {
      ..._params,
    });
  }
}

class Ads {
  final API _api;

  Ads(this._api);

  /// Adds managers and/or supervisors to advertising account.
  Future<Json> addOfficeUsers({int? account_id, List<dynamic>? data}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (data != null) _params['data'] = data;
    return _api.request('ads.addOfficeUsers', {
      ..._params,
    });
  }

  /// Allows to check the ad link.
  Future<Json> checkLink(
      {int? account_id,
      String? link_type,
      String? link_url,
      int? campaign_id}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (link_type != null) _params['link_type'] = link_type;
    if (link_url != null) _params['link_url'] = link_url;
    if (campaign_id != null) _params['campaign_id'] = campaign_id;
    return _api.request('ads.checkLink', {
      ..._params,
    });
  }

  /// Creates ads.
  Future<Json> createAds({int? account_id, String? data}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (data != null) _params['data'] = data;
    return _api.request('ads.createAds', {
      ..._params,
    });
  }

  /// Creates advertising campaigns.
  Future<Json> createCampaigns({int? account_id, String? data}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (data != null) _params['data'] = data;
    return _api.request('ads.createCampaigns', {
      ..._params,
    });
  }

  /// Creates clients of an advertising agency.
  Future<Json> createClients({int? account_id, String? data}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (data != null) _params['data'] = data;
    return _api.request('ads.createClients', {
      ..._params,
    });
  }

  /// Creates a group to re-target ads for users who visited advertiser's site (viewed information about the product, registered, etc.).
  Future<Json> createTargetGroup(
      {int? account_id,
      int? client_id,
      String? name,
      int? lifetime,
      int? target_pixel_id,
      String? target_pixel_rules}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (client_id != null) _params['client_id'] = client_id;
    if (name != null) _params['name'] = name;
    if (lifetime != null) _params['lifetime'] = lifetime;
    if (target_pixel_id != null) _params['target_pixel_id'] = target_pixel_id;
    if (target_pixel_rules != null)
      _params['target_pixel_rules'] = target_pixel_rules;
    return _api.request('ads.createTargetGroup', {
      ..._params,
    });
  }

  /// Archives ads.
  Future<Json> deleteAds({int? account_id, String? ids}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ids != null) _params['ids'] = ids;
    return _api.request('ads.deleteAds', {
      ..._params,
    });
  }

  /// Archives advertising campaigns.
  Future<Json> deleteCampaigns({int? account_id, String? ids}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ids != null) _params['ids'] = ids;
    return _api.request('ads.deleteCampaigns', {
      ..._params,
    });
  }

  /// Archives clients of an advertising agency.
  Future<Json> deleteClients({int? account_id, String? ids}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ids != null) _params['ids'] = ids;
    return _api.request('ads.deleteClients', {
      ..._params,
    });
  }

  /// Deletes a retarget group.
  Future<Json> deleteTargetGroup(
      {int? account_id, int? client_id, int? target_group_id}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (client_id != null) _params['client_id'] = client_id;
    if (target_group_id != null) _params['target_group_id'] = target_group_id;
    return _api.request('ads.deleteTargetGroup', {
      ..._params,
    });
  }

  /// Returns a list of advertising accounts.
  Future<Json> getAccounts() async {
    var _params = {};

    return _api.request('ads.getAccounts', {
      ..._params,
    });
  }

  /// Returns number of ads.
  Future<Json> getAds(
      {int? account_id,
      String? ad_ids,
      String? campaign_ids,
      int? client_id,
      bool? include_deleted,
      bool? only_deleted,
      int? limit,
      int? offset}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ad_ids != null) _params['ad_ids'] = ad_ids;
    if (campaign_ids != null) _params['campaign_ids'] = campaign_ids;
    if (client_id != null) _params['client_id'] = client_id;
    if (include_deleted != null) _params['include_deleted'] = include_deleted;
    if (only_deleted != null) _params['only_deleted'] = only_deleted;
    if (limit != null) _params['limit'] = limit;
    if (offset != null) _params['offset'] = offset;
    return _api.request('ads.getAds', {
      ..._params,
    });
  }

  /// Returns descriptions of ad layouts.
  Future<Json> getAdsLayout(
      {int? account_id,
      String? ad_ids,
      String? campaign_ids,
      int? client_id,
      bool? include_deleted,
      int? limit,
      int? offset}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ad_ids != null) _params['ad_ids'] = ad_ids;
    if (campaign_ids != null) _params['campaign_ids'] = campaign_ids;
    if (client_id != null) _params['client_id'] = client_id;
    if (include_deleted != null) _params['include_deleted'] = include_deleted;
    if (limit != null) _params['limit'] = limit;
    if (offset != null) _params['offset'] = offset;
    return _api.request('ads.getAdsLayout', {
      ..._params,
    });
  }

  /// Returns ad targeting parameters.
  Future<Json> getAdsTargeting(
      {int? account_id,
      String? ad_ids,
      String? campaign_ids,
      int? client_id,
      bool? include_deleted,
      int? limit,
      int? offset}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ad_ids != null) _params['ad_ids'] = ad_ids;
    if (campaign_ids != null) _params['campaign_ids'] = campaign_ids;
    if (client_id != null) _params['client_id'] = client_id;
    if (include_deleted != null) _params['include_deleted'] = include_deleted;
    if (limit != null) _params['limit'] = limit;
    if (offset != null) _params['offset'] = offset;
    return _api.request('ads.getAdsTargeting', {
      ..._params,
    });
  }

  /// Returns current budget of the advertising account.
  Future<Json> getBudget({int? account_id}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    return _api.request('ads.getBudget', {
      ..._params,
    });
  }

  /// Returns a list of campaigns in an advertising account.
  Future<Json> getCampaigns(
      {int? account_id,
      int? client_id,
      bool? include_deleted,
      String? campaign_ids,
      List<dynamic>? fields}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (client_id != null) _params['client_id'] = client_id;
    if (include_deleted != null) _params['include_deleted'] = include_deleted;
    if (campaign_ids != null) _params['campaign_ids'] = campaign_ids;
    if (fields != null) _params['fields'] = fields;
    return _api.request('ads.getCampaigns', {
      ..._params,
    });
  }

  /// Returns a list of possible ad categories.
  Future<Json> getCategories({String? lang}) async {
    var _params = {};
    if (lang != null) _params['lang'] = lang;
    return _api.request('ads.getCategories', {
      ..._params,
    });
  }

  /// Returns a list of advertising agency's clients.
  Future<Json> getClients({int? account_id}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    return _api.request('ads.getClients', {
      ..._params,
    });
  }

  /// Returns demographics for ads or campaigns.
  Future<Json> getDemographics(
      {int? account_id,
      String? ids_type,
      String? ids,
      String? period,
      String? date_from,
      String? date_to}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ids_type != null) _params['ids_type'] = ids_type;
    if (ids != null) _params['ids'] = ids;
    if (period != null) _params['period'] = period;
    if (date_from != null) _params['date_from'] = date_from;
    if (date_to != null) _params['date_to'] = date_to;
    return _api.request('ads.getDemographics', {
      ..._params,
    });
  }

  /// Returns information about current state of a counter — number of remaining runs of methods and time to the next counter nulling in seconds.
  Future<Json> getFloodStats({int? account_id}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    return _api.request('ads.getFloodStats', {
      ..._params,
    });
  }

  /// None
  Future<Json> getLookalikeRequests(
      {int? account_id,
      int? client_id,
      String? requests_ids,
      int? offset,
      int? limit,
      String? sort_by}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (client_id != null) _params['client_id'] = client_id;
    if (requests_ids != null) _params['requests_ids'] = requests_ids;
    if (offset != null) _params['offset'] = offset;
    if (limit != null) _params['limit'] = limit;
    if (sort_by != null) _params['sort_by'] = sort_by;
    return _api.request('ads.getLookalikeRequests', {
      ..._params,
    });
  }

  /// None
  Future<Json> getMusicians({String? artist_name}) async {
    var _params = {};
    if (artist_name != null) _params['artist_name'] = artist_name;
    return _api.request('ads.getMusicians', {
      ..._params,
    });
  }

  /// None
  Future<Json> getMusiciansByIds({List<dynamic>? ids}) async {
    var _params = {};
    if (ids != null) _params['ids'] = ids;
    return _api.request('ads.getMusiciansByIds', {
      ..._params,
    });
  }

  /// Returns a list of managers and supervisors of advertising account.
  Future<Json> getOfficeUsers({int? account_id}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    return _api.request('ads.getOfficeUsers', {
      ..._params,
    });
  }

  /// Returns detailed statistics of promoted posts reach from campaigns and ads.
  Future<Json> getPostsReach(
      {int? account_id, String? ids_type, String? ids}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ids_type != null) _params['ids_type'] = ids_type;
    if (ids != null) _params['ids'] = ids;
    return _api.request('ads.getPostsReach', {
      ..._params,
    });
  }

  /// Returns a reason of ad rejection for pre-moderation.
  Future<Json> getRejectionReason({int? account_id, int? ad_id}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ad_id != null) _params['ad_id'] = ad_id;
    return _api.request('ads.getRejectionReason', {
      ..._params,
    });
  }

  /// Returns statistics of performance indicators for ads, campaigns, clients or the whole account.
  Future<Json> getStatistics(
      {int? account_id,
      String? ids_type,
      String? ids,
      String? period,
      String? date_from,
      String? date_to,
      List<dynamic>? stats_fields}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ids_type != null) _params['ids_type'] = ids_type;
    if (ids != null) _params['ids'] = ids;
    if (period != null) _params['period'] = period;
    if (date_from != null) _params['date_from'] = date_from;
    if (date_to != null) _params['date_to'] = date_to;
    if (stats_fields != null) _params['stats_fields'] = stats_fields;
    return _api.request('ads.getStatistics', {
      ..._params,
    });
  }

  /// Returns a set of auto-suggestions for various targeting parameters.
  Future<Json> getSuggestions(
      {String? section,
      String? ids,
      String? q,
      int? country,
      String? cities,
      String? lang}) async {
    var _params = {};
    if (section != null) _params['section'] = section;
    if (ids != null) _params['ids'] = ids;
    if (q != null) _params['q'] = q;
    if (country != null) _params['country'] = country;
    if (cities != null) _params['cities'] = cities;
    if (lang != null) _params['lang'] = lang;
    return _api.request('ads.getSuggestions', {
      ..._params,
    });
  }

  /// Returns a list of target groups.
  Future<Json> getTargetGroups(
      {int? account_id, int? client_id, bool? extended}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (client_id != null) _params['client_id'] = client_id;
    if (extended != null) _params['extended'] = extended;
    return _api.request('ads.getTargetGroups', {
      ..._params,
    });
  }

  /// Returns the size of targeting audience, and also recommended values for CPC and CPM.
  Future<Json> getTargetingStats(
      {int? account_id,
      int? client_id,
      String? criteria,
      int? ad_id,
      int? ad_format,
      String? ad_platform,
      String? ad_platform_no_wall,
      String? ad_platform_no_ad_network,
      String? publisher_platforms,
      String? link_url,
      String? link_domain,
      bool? need_precise,
      int? impressions_limit_period}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (client_id != null) _params['client_id'] = client_id;
    if (criteria != null) _params['criteria'] = criteria;
    if (ad_id != null) _params['ad_id'] = ad_id;
    if (ad_format != null) _params['ad_format'] = ad_format;
    if (ad_platform != null) _params['ad_platform'] = ad_platform;
    if (ad_platform_no_wall != null)
      _params['ad_platform_no_wall'] = ad_platform_no_wall;
    if (ad_platform_no_ad_network != null)
      _params['ad_platform_no_ad_network'] = ad_platform_no_ad_network;
    if (publisher_platforms != null)
      _params['publisher_platforms'] = publisher_platforms;
    if (link_url != null) _params['link_url'] = link_url;
    if (link_domain != null) _params['link_domain'] = link_domain;
    if (need_precise != null) _params['need_precise'] = need_precise;
    if (impressions_limit_period != null)
      _params['impressions_limit_period'] = impressions_limit_period;
    return _api.request('ads.getTargetingStats', {
      ..._params,
    });
  }

  /// Returns URL to upload an ad photo to.
  Future<Json> getUploadURL({int? ad_format, int? icon}) async {
    var _params = {};
    if (ad_format != null) _params['ad_format'] = ad_format;
    if (icon != null) _params['icon'] = icon;
    return _api.request('ads.getUploadURL', {
      ..._params,
    });
  }

  /// Returns URL to upload an ad video to.
  Future<Json> getVideoUploadURL() async {
    var _params = {};

    return _api.request('ads.getVideoUploadURL', {
      ..._params,
    });
  }

  /// Imports a list of advertiser's contacts to count VK registered users against the target group.
  Future<Json> importTargetContacts(
      {int? account_id,
      int? client_id,
      int? target_group_id,
      String? contacts}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (client_id != null) _params['client_id'] = client_id;
    if (target_group_id != null) _params['target_group_id'] = target_group_id;
    if (contacts != null) _params['contacts'] = contacts;
    return _api.request('ads.importTargetContacts', {
      ..._params,
    });
  }

  /// Removes managers and/or supervisors from advertising account.
  Future<Json> removeOfficeUsers({int? account_id, String? ids}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (ids != null) _params['ids'] = ids;
    return _api.request('ads.removeOfficeUsers', {
      ..._params,
    });
  }

  /// Edits ads.
  Future<Json> updateAds({int? account_id, String? data}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (data != null) _params['data'] = data;
    return _api.request('ads.updateAds', {
      ..._params,
    });
  }

  /// Edits advertising campaigns.
  Future<Json> updateCampaigns({int? account_id, String? data}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (data != null) _params['data'] = data;
    return _api.request('ads.updateCampaigns', {
      ..._params,
    });
  }

  /// Edits clients of an advertising agency.
  Future<Json> updateClients({int? account_id, String? data}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (data != null) _params['data'] = data;
    return _api.request('ads.updateClients', {
      ..._params,
    });
  }

  /// Adds managers and/or supervisors to advertising account.
  Future<Json> updateOfficeUsers({int? account_id, List<dynamic>? data}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (data != null) _params['data'] = data;
    return _api.request('ads.updateOfficeUsers', {
      ..._params,
    });
  }

  /// Edits a retarget group.
  Future<Json> updateTargetGroup(
      {int? account_id,
      int? client_id,
      int? target_group_id,
      String? name,
      String? domain,
      int? lifetime,
      int? target_pixel_id,
      String? target_pixel_rules}) async {
    var _params = {};
    if (account_id != null) _params['account_id'] = account_id;
    if (client_id != null) _params['client_id'] = client_id;
    if (target_group_id != null) _params['target_group_id'] = target_group_id;
    if (name != null) _params['name'] = name;
    if (domain != null) _params['domain'] = domain;
    if (lifetime != null) _params['lifetime'] = lifetime;
    if (target_pixel_id != null) _params['target_pixel_id'] = target_pixel_id;
    if (target_pixel_rules != null)
      _params['target_pixel_rules'] = target_pixel_rules;
    return _api.request('ads.updateTargetGroup', {
      ..._params,
    });
  }
}

class Adsweb {
  final API _api;

  Adsweb(this._api);

  /// None
  Future<Json> getAdCategories({int? office_id}) async {
    var _params = {};
    if (office_id != null) _params['office_id'] = office_id;
    return _api.request('adsweb.getAdCategories', {
      ..._params,
    });
  }

  /// None
  Future<Json> getAdUnitCode() async {
    var _params = {};

    return _api.request('adsweb.getAdUnitCode', {
      ..._params,
    });
  }

  /// None
  Future<Json> getAdUnits(
      {int? office_id,
      String? sites_ids,
      String? ad_units_ids,
      String? fields,
      int? limit,
      int? offset}) async {
    var _params = {};
    if (office_id != null) _params['office_id'] = office_id;
    if (sites_ids != null) _params['sites_ids'] = sites_ids;
    if (ad_units_ids != null) _params['ad_units_ids'] = ad_units_ids;
    if (fields != null) _params['fields'] = fields;
    if (limit != null) _params['limit'] = limit;
    if (offset != null) _params['offset'] = offset;
    return _api.request('adsweb.getAdUnits', {
      ..._params,
    });
  }

  /// None
  Future<Json> getFraudHistory(
      {int? office_id, String? sites_ids, int? limit, int? offset}) async {
    var _params = {};
    if (office_id != null) _params['office_id'] = office_id;
    if (sites_ids != null) _params['sites_ids'] = sites_ids;
    if (limit != null) _params['limit'] = limit;
    if (offset != null) _params['offset'] = offset;
    return _api.request('adsweb.getFraudHistory', {
      ..._params,
    });
  }

  /// None
  Future<Json> getSites(
      {int? office_id,
      String? sites_ids,
      String? fields,
      int? limit,
      int? offset}) async {
    var _params = {};
    if (office_id != null) _params['office_id'] = office_id;
    if (sites_ids != null) _params['sites_ids'] = sites_ids;
    if (fields != null) _params['fields'] = fields;
    if (limit != null) _params['limit'] = limit;
    if (offset != null) _params['offset'] = offset;
    return _api.request('adsweb.getSites', {
      ..._params,
    });
  }

  /// None
  Future<Json> getStatistics(
      {int? office_id,
      String? ids_type,
      String? ids,
      String? period,
      String? date_from,
      String? date_to,
      String? fields,
      int? limit,
      String? page_id}) async {
    var _params = {};
    if (office_id != null) _params['office_id'] = office_id;
    if (ids_type != null) _params['ids_type'] = ids_type;
    if (ids != null) _params['ids'] = ids;
    if (period != null) _params['period'] = period;
    if (date_from != null) _params['date_from'] = date_from;
    if (date_to != null) _params['date_to'] = date_to;
    if (fields != null) _params['fields'] = fields;
    if (limit != null) _params['limit'] = limit;
    if (page_id != null) _params['page_id'] = page_id;
    return _api.request('adsweb.getStatistics', {
      ..._params,
    });
  }
}

class Appwidgets {
  final API _api;

  Appwidgets(this._api);

  /// Returns a URL for uploading a photo to the community collection for community app widgets
  Future<Json> getAppImageUploadServer({String? image_type}) async {
    var _params = {};
    if (image_type != null) _params['image_type'] = image_type;
    return _api.request('appWidgets.getAppImageUploadServer', {
      ..._params,
    });
  }

  /// Returns an app collection of images for community app widgets
  Future<Json> getAppImages(
      {int? offset, int? count, String? image_type}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (image_type != null) _params['image_type'] = image_type;
    return _api.request('appWidgets.getAppImages', {
      ..._params,
    });
  }

  /// Returns a URL for uploading a photo to the community collection for community app widgets
  Future<Json> getGroupImageUploadServer({String? image_type}) async {
    var _params = {};
    if (image_type != null) _params['image_type'] = image_type;
    return _api.request('appWidgets.getGroupImageUploadServer', {
      ..._params,
    });
  }

  /// Returns a community collection of images for community app widgets
  Future<Json> getGroupImages(
      {int? offset, int? count, String? image_type}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (image_type != null) _params['image_type'] = image_type;
    return _api.request('appWidgets.getGroupImages', {
      ..._params,
    });
  }

  /// Returns an image for community app widgets by its ID
  Future<Json> getImagesById({List<dynamic>? images}) async {
    var _params = {};
    if (images != null) _params['images'] = images;
    return _api.request('appWidgets.getImagesById', {
      ..._params,
    });
  }

  /// Allows to save image into app collection for community app widgets
  Future<Json> saveAppImage({String? hash, String? image}) async {
    var _params = {};
    if (hash != null) _params['hash'] = hash;
    if (image != null) _params['image'] = image;
    return _api.request('appWidgets.saveAppImage', {
      ..._params,
    });
  }

  /// Allows to save image into community collection for community app widgets
  Future<Json> saveGroupImage({String? hash, String? image}) async {
    var _params = {};
    if (hash != null) _params['hash'] = hash;
    if (image != null) _params['image'] = image;
    return _api.request('appWidgets.saveGroupImage', {
      ..._params,
    });
  }

  /// Allows to update community app widget
  Future<Json> update({String? code, String? type}) async {
    var _params = {};
    if (code != null) _params['code'] = code;
    if (type != null) _params['type'] = type;
    return _api.request('appWidgets.update', {
      ..._params,
    });
  }
}

class Apps {
  final API _api;

  Apps(this._api);

  /// Deletes all request notifications from the current app.
  Future<Json> deleteAppRequests() async {
    var _params = {};

    return _api.request('apps.deleteAppRequests', {
      ..._params,
    });
  }

  /// Returns applications data.
  Future<Json> get(
      {int? app_id,
      List<dynamic>? app_ids,
      String? platform,
      bool? extended,
      bool? return_friends,
      List<dynamic>? fields,
      String? name_case}) async {
    var _params = {};
    if (app_id != null) _params['app_id'] = app_id;
    if (app_ids != null) _params['app_ids'] = app_ids;
    if (platform != null) _params['platform'] = platform;
    if (extended != null) _params['extended'] = extended;
    if (return_friends != null) _params['return_friends'] = return_friends;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    return _api.request('apps.get', {
      ..._params,
    });
  }

  /// Returns a list of applications (apps) available to users in the App Catalog.
  Future<Json> getCatalog(
      {String? sort,
      int? offset,
      int? count,
      String? platform,
      bool? extended,
      bool? return_friends,
      List<dynamic>? fields,
      String? name_case,
      String? q,
      int? genre_id,
      String? filter}) async {
    var _params = {};
    if (sort != null) _params['sort'] = sort;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (platform != null) _params['platform'] = platform;
    if (extended != null) _params['extended'] = extended;
    if (return_friends != null) _params['return_friends'] = return_friends;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    if (q != null) _params['q'] = q;
    if (genre_id != null) _params['genre_id'] = genre_id;
    if (filter != null) _params['filter'] = filter;
    return _api.request('apps.getCatalog', {
      ..._params,
    });
  }

  /// Creates friends list for requests and invites in current app.
  Future<Json> getFriendsList(
      {bool? extended,
      int? count,
      int? offset,
      String? type,
      List<dynamic>? fields}) async {
    var _params = {};
    if (extended != null) _params['extended'] = extended;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    if (type != null) _params['type'] = type;
    if (fields != null) _params['fields'] = fields;
    return _api.request('apps.getFriendsList', {
      ..._params,
    });
  }

  /// Returns players rating in the game.
  Future<Json> getLeaderboard(
      {String? type, bool? global, bool? extended}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    if (global != null) _params['global'] = global;
    if (extended != null) _params['extended'] = extended;
    return _api.request('apps.getLeaderboard', {
      ..._params,
    });
  }

  /// Returns policies and terms given to a mini app.
  Future<Json> getMiniAppPolicies({int? app_id}) async {
    var _params = {};
    if (app_id != null) _params['app_id'] = app_id;
    return _api.request('apps.getMiniAppPolicies', {
      ..._params,
    });
  }

  /// Returns scopes for auth
  Future<Json> getScopes({String? type}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    return _api.request('apps.getScopes', {
      ..._params,
    });
  }

  /// Returns user score in app
  Future<Json> getScore({int? user_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('apps.getScore', {
      ..._params,
    });
  }

  /// None
  Future<Json> promoHasActiveGift({int? promo_id, int? user_id}) async {
    var _params = {};
    if (promo_id != null) _params['promo_id'] = promo_id;
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('apps.promoHasActiveGift', {
      ..._params,
    });
  }

  /// None
  Future<Json> promoUseGift({int? promo_id, int? user_id}) async {
    var _params = {};
    if (promo_id != null) _params['promo_id'] = promo_id;
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('apps.promoUseGift', {
      ..._params,
    });
  }

  /// Sends a request to another user in an app that uses VK authorization.
  Future<Json> sendRequest(
      {int? user_id,
      String? text,
      String? type,
      String? name,
      String? key,
      bool? separate}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (text != null) _params['text'] = text;
    if (type != null) _params['type'] = type;
    if (name != null) _params['name'] = name;
    if (key != null) _params['key'] = key;
    if (separate != null) _params['separate'] = separate;
    return _api.request('apps.sendRequest', {
      ..._params,
    });
  }
}

class Auth {
  final API _api;

  Auth(this._api);

  /// Allows to restore account access using a code received via SMS. ' This method is only available for apps with [vk.com/dev/auth_direct|Direct authorization] access. '
  Future<Json> restore({String? phone, String? last_name}) async {
    var _params = {};
    if (phone != null) _params['phone'] = phone;
    if (last_name != null) _params['last_name'] = last_name;
    return _api.request('auth.restore', {
      ..._params,
    });
  }
}

class Board {
  final API _api;

  Board(this._api);

  /// Creates a new topic on a community's discussion board.
  Future<Json> addTopic(
      {int? group_id,
      String? title,
      String? text,
      bool? from_group,
      List<dynamic>? attachments}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (title != null) _params['title'] = title;
    if (text != null) _params['text'] = text;
    if (from_group != null) _params['from_group'] = from_group;
    if (attachments != null) _params['attachments'] = attachments;
    return _api.request('board.addTopic', {
      ..._params,
    });
  }

  /// Closes a topic on a community's discussion board so that comments cannot be posted.
  Future<Json> closeTopic({int? group_id, int? topic_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    return _api.request('board.closeTopic', {
      ..._params,
    });
  }

  /// Adds a comment on a topic on a community's discussion board.
  Future<Json> createComment(
      {int? group_id,
      int? topic_id,
      String? message,
      List<dynamic>? attachments,
      bool? from_group,
      int? sticker_id,
      String? guid}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    if (from_group != null) _params['from_group'] = from_group;
    if (sticker_id != null) _params['sticker_id'] = sticker_id;
    if (guid != null) _params['guid'] = guid;
    return _api.request('board.createComment', {
      ..._params,
    });
  }

  /// Deletes a comment on a topic on a community's discussion board.
  Future<Json> deleteComment(
      {int? group_id, int? topic_id, int? comment_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    return _api.request('board.deleteComment', {
      ..._params,
    });
  }

  /// Deletes a topic from a community's discussion board.
  Future<Json> deleteTopic({int? group_id, int? topic_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    return _api.request('board.deleteTopic', {
      ..._params,
    });
  }

  /// Edits a comment on a topic on a community's discussion board.
  Future<Json> editComment(
      {int? group_id,
      int? topic_id,
      int? comment_id,
      String? message,
      List<dynamic>? attachments}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    return _api.request('board.editComment', {
      ..._params,
    });
  }

  /// Edits the title of a topic on a community's discussion board.
  Future<Json> editTopic({int? group_id, int? topic_id, String? title}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    if (title != null) _params['title'] = title;
    return _api.request('board.editTopic', {
      ..._params,
    });
  }

  /// Pins a topic (fixes its place) to the top of a community's discussion board.
  Future<Json> fixTopic({int? group_id, int? topic_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    return _api.request('board.fixTopic', {
      ..._params,
    });
  }

  /// Returns a list of comments on a topic on a community's discussion board.
  Future<Json> getComments(
      {int? group_id,
      int? topic_id,
      bool? need_likes,
      int? start_comment_id,
      int? offset,
      int? count,
      bool? extended,
      String? sort}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    if (need_likes != null) _params['need_likes'] = need_likes;
    if (start_comment_id != null)
      _params['start_comment_id'] = start_comment_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (sort != null) _params['sort'] = sort;
    return _api.request('board.getComments', {
      ..._params,
    });
  }

  /// Returns a list of topics on a community's discussion board.
  Future<Json> getTopics(
      {int? group_id,
      List<dynamic>? topic_ids,
      int? order,
      int? offset,
      int? count,
      bool? extended,
      int? preview,
      int? preview_length}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_ids != null) _params['topic_ids'] = topic_ids;
    if (order != null) _params['order'] = order;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (preview != null) _params['preview'] = preview;
    if (preview_length != null) _params['preview_length'] = preview_length;
    return _api.request('board.getTopics', {
      ..._params,
    });
  }

  /// Re-opens a previously closed topic on a community's discussion board.
  Future<Json> openTopic({int? group_id, int? topic_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    return _api.request('board.openTopic', {
      ..._params,
    });
  }

  /// Restores a comment deleted from a topic on a community's discussion board.
  Future<Json> restoreComment(
      {int? group_id, int? topic_id, int? comment_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    return _api.request('board.restoreComment', {
      ..._params,
    });
  }

  /// Unpins a pinned topic from the top of a community's discussion board.
  Future<Json> unfixTopic({int? group_id, int? topic_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (topic_id != null) _params['topic_id'] = topic_id;
    return _api.request('board.unfixTopic', {
      ..._params,
    });
  }
}

class Database {
  final API _api;

  Database(this._api);

  /// Returns list of chairs on a specified faculty.
  Future<Json> getChairs({int? faculty_id, int? offset, int? count}) async {
    var _params = {};
    if (faculty_id != null) _params['faculty_id'] = faculty_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('database.getChairs', {
      ..._params,
    });
  }

  /// Returns a list of cities.
  Future<Json> getCities(
      {int? country_id,
      int? region_id,
      String? q,
      bool? need_all,
      int? offset,
      int? count}) async {
    var _params = {};
    if (country_id != null) _params['country_id'] = country_id;
    if (region_id != null) _params['region_id'] = region_id;
    if (q != null) _params['q'] = q;
    if (need_all != null) _params['need_all'] = need_all;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('database.getCities', {
      ..._params,
    });
  }

  /// Returns information about cities by their IDs.
  Future<Json> getCitiesById({List<dynamic>? city_ids}) async {
    var _params = {};
    if (city_ids != null) _params['city_ids'] = city_ids;
    return _api.request('database.getCitiesById', {
      ..._params,
    });
  }

  /// Returns a list of countries.
  Future<Json> getCountries(
      {bool? need_all, String? code, int? offset, int? count}) async {
    var _params = {};
    if (need_all != null) _params['need_all'] = need_all;
    if (code != null) _params['code'] = code;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('database.getCountries', {
      ..._params,
    });
  }

  /// Returns information about countries by their IDs.
  Future<Json> getCountriesById({List<dynamic>? country_ids}) async {
    var _params = {};
    if (country_ids != null) _params['country_ids'] = country_ids;
    return _api.request('database.getCountriesById', {
      ..._params,
    });
  }

  /// Returns a list of faculties (i.e., university departments).
  Future<Json> getFaculties(
      {int? university_id, int? offset, int? count}) async {
    var _params = {};
    if (university_id != null) _params['university_id'] = university_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('database.getFaculties', {
      ..._params,
    });
  }

  /// Get metro stations by city
  Future<Json> getMetroStations(
      {int? city_id, int? offset, int? count, bool? extended}) async {
    var _params = {};
    if (city_id != null) _params['city_id'] = city_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    return _api.request('database.getMetroStations', {
      ..._params,
    });
  }

  /// Get metro station by his id
  Future<Json> getMetroStationsById({List<dynamic>? station_ids}) async {
    var _params = {};
    if (station_ids != null) _params['station_ids'] = station_ids;
    return _api.request('database.getMetroStationsById', {
      ..._params,
    });
  }

  /// Returns a list of regions.
  Future<Json> getRegions(
      {int? country_id, String? q, int? offset, int? count}) async {
    var _params = {};
    if (country_id != null) _params['country_id'] = country_id;
    if (q != null) _params['q'] = q;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('database.getRegions', {
      ..._params,
    });
  }

  /// Returns a list of school classes specified for the country.
  Future<Json> getSchoolClasses({int? country_id}) async {
    var _params = {};
    if (country_id != null) _params['country_id'] = country_id;
    return _api.request('database.getSchoolClasses', {
      ..._params,
    });
  }

  /// Returns a list of schools.
  Future<Json> getSchools(
      {String? q, int? city_id, int? offset, int? count}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (city_id != null) _params['city_id'] = city_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('database.getSchools', {
      ..._params,
    });
  }

  /// Returns a list of higher education institutions.
  Future<Json> getUniversities(
      {String? q,
      int? country_id,
      int? city_id,
      int? offset,
      int? count}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (country_id != null) _params['country_id'] = country_id;
    if (city_id != null) _params['city_id'] = city_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('database.getUniversities', {
      ..._params,
    });
  }
}

class Docs {
  final API _api;

  Docs(this._api);

  /// Copies a document to a user's or community's document list.
  Future<Json> add({int? owner_id, int? doc_id, String? access_key}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (doc_id != null) _params['doc_id'] = doc_id;
    if (access_key != null) _params['access_key'] = access_key;
    return _api.request('docs.add', {
      ..._params,
    });
  }

  /// Deletes a user or community document.
  Future<Json> delete({int? owner_id, int? doc_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (doc_id != null) _params['doc_id'] = doc_id;
    return _api.request('docs.delete', {
      ..._params,
    });
  }

  /// Edits a document.
  Future<Json> edit(
      {int? owner_id, int? doc_id, String? title, List<dynamic>? tags}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (doc_id != null) _params['doc_id'] = doc_id;
    if (title != null) _params['title'] = title;
    if (tags != null) _params['tags'] = tags;
    return _api.request('docs.edit', {
      ..._params,
    });
  }

  /// Returns detailed information about user or community documents.
  Future<Json> get(
      {int? count,
      int? offset,
      int? type,
      int? owner_id,
      bool? return_tags}) async {
    var _params = {};
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    if (type != null) _params['type'] = type;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (return_tags != null) _params['return_tags'] = return_tags;
    return _api.request('docs.get', {
      ..._params,
    });
  }

  /// Returns information about documents by their IDs.
  Future<Json> getById({List<dynamic>? docs, bool? return_tags}) async {
    var _params = {};
    if (docs != null) _params['docs'] = docs;
    if (return_tags != null) _params['return_tags'] = return_tags;
    return _api.request('docs.getById', {
      ..._params,
    });
  }

  /// Returns the server address for document upload.
  Future<Json> getMessagesUploadServer({String? type, int? peer_id}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    if (peer_id != null) _params['peer_id'] = peer_id;
    return _api.request('docs.getMessagesUploadServer', {
      ..._params,
    });
  }

  /// Returns documents types available for current user.
  Future<Json> getTypes({int? owner_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('docs.getTypes', {
      ..._params,
    });
  }

  /// Returns the server address for document upload.
  Future<Json> getUploadServer({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('docs.getUploadServer', {
      ..._params,
    });
  }

  /// Returns the server address for document upload onto a user's or community's wall.
  Future<Json> getWallUploadServer({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('docs.getWallUploadServer', {
      ..._params,
    });
  }

  /// Saves a document after [vk.com/dev/upload_files_2|uploading it to a server].
  Future<Json> save(
      {String? file, String? title, String? tags, bool? return_tags}) async {
    var _params = {};
    if (file != null) _params['file'] = file;
    if (title != null) _params['title'] = title;
    if (tags != null) _params['tags'] = tags;
    if (return_tags != null) _params['return_tags'] = return_tags;
    return _api.request('docs.save', {
      ..._params,
    });
  }

  /// Returns a list of documents matching the search criteria.
  Future<Json> search(
      {String? q,
      bool? search_own,
      int? count,
      int? offset,
      bool? return_tags}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (search_own != null) _params['search_own'] = search_own;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    if (return_tags != null) _params['return_tags'] = return_tags;
    return _api.request('docs.search', {
      ..._params,
    });
  }
}

class Donut {
  final API _api;

  Donut(this._api);

  /// None
  Future<Json> getFriends(
      {int? owner_id, int? offset, int? count, List<dynamic>? fields}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    return _api.request('donut.getFriends', {
      ..._params,
    });
  }

  /// None
  Future<Json> getSubscription({int? owner_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('donut.getSubscription', {
      ..._params,
    });
  }

  /// Returns a list of user's VK Donut subscriptions.
  Future<Json> getSubscriptions(
      {List<dynamic>? fields, int? offset, int? count}) async {
    var _params = {};
    if (fields != null) _params['fields'] = fields;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('donut.getSubscriptions', {
      ..._params,
    });
  }

  /// None
  Future<Json> isDon({int? owner_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('donut.isDon', {
      ..._params,
    });
  }
}

class Downloadedgames {
  final API _api;

  Downloadedgames(this._api);

  /// None
  Future<Json> getPaidStatus({int? user_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('downloadedGames.getPaidStatus', {
      ..._params,
    });
  }
}

class Fave {
  final API _api;

  Fave(this._api);

  /// None
  Future<Json> addArticle({String? url}) async {
    var _params = {};
    if (url != null) _params['url'] = url;
    return _api.request('fave.addArticle', {
      ..._params,
    });
  }

  /// Adds a link to user faves.
  Future<Json> addLink({String? link}) async {
    var _params = {};
    if (link != null) _params['link'] = link;
    return _api.request('fave.addLink', {
      ..._params,
    });
  }

  /// None
  Future<Json> addPage({int? user_id, int? group_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('fave.addPage', {
      ..._params,
    });
  }

  /// None
  Future<Json> addPost({int? owner_id, int? id, String? access_key}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (id != null) _params['id'] = id;
    if (access_key != null) _params['access_key'] = access_key;
    return _api.request('fave.addPost', {
      ..._params,
    });
  }

  /// None
  Future<Json> addProduct({int? owner_id, int? id, String? access_key}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (id != null) _params['id'] = id;
    if (access_key != null) _params['access_key'] = access_key;
    return _api.request('fave.addProduct', {
      ..._params,
    });
  }

  /// None
  Future<Json> addTag({String? name, String? position}) async {
    var _params = {};
    if (name != null) _params['name'] = name;
    if (position != null) _params['position'] = position;
    return _api.request('fave.addTag', {
      ..._params,
    });
  }

  /// None
  Future<Json> addVideo({int? owner_id, int? id, String? access_key}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (id != null) _params['id'] = id;
    if (access_key != null) _params['access_key'] = access_key;
    return _api.request('fave.addVideo', {
      ..._params,
    });
  }

  /// None
  Future<Json> editTag({int? id, String? name}) async {
    var _params = {};
    if (id != null) _params['id'] = id;
    if (name != null) _params['name'] = name;
    return _api.request('fave.editTag', {
      ..._params,
    });
  }

  /// None
  Future<Json> get(
      {bool? extended,
      String? item_type,
      int? tag_id,
      int? offset,
      int? count,
      String? fields,
      bool? is_from_snackbar}) async {
    var _params = {};
    if (extended != null) _params['extended'] = extended;
    if (item_type != null) _params['item_type'] = item_type;
    if (tag_id != null) _params['tag_id'] = tag_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    if (is_from_snackbar != null)
      _params['is_from_snackbar'] = is_from_snackbar;
    return _api.request('fave.get', {
      ..._params,
    });
  }

  /// None
  Future<Json> getPages(
      {int? offset,
      int? count,
      String? type,
      List<dynamic>? fields,
      int? tag_id}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (type != null) _params['type'] = type;
    if (fields != null) _params['fields'] = fields;
    if (tag_id != null) _params['tag_id'] = tag_id;
    return _api.request('fave.getPages', {
      ..._params,
    });
  }

  /// None
  Future<Json> getTags() async {
    var _params = {};

    return _api.request('fave.getTags', {
      ..._params,
    });
  }

  /// None
  Future<Json> markSeen() async {
    var _params = {};

    return _api.request('fave.markSeen', {
      ..._params,
    });
  }

  /// None
  Future<Json> removeArticle({int? owner_id, int? article_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (article_id != null) _params['article_id'] = article_id;
    return _api.request('fave.removeArticle', {
      ..._params,
    });
  }

  /// Removes link from the user's faves.
  Future<Json> removeLink({String? link_id, String? link}) async {
    var _params = {};
    if (link_id != null) _params['link_id'] = link_id;
    if (link != null) _params['link'] = link;
    return _api.request('fave.removeLink', {
      ..._params,
    });
  }

  /// None
  Future<Json> removePage({int? user_id, int? group_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('fave.removePage', {
      ..._params,
    });
  }

  /// None
  Future<Json> removePost({int? owner_id, int? id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (id != null) _params['id'] = id;
    return _api.request('fave.removePost', {
      ..._params,
    });
  }

  /// None
  Future<Json> removeProduct({int? owner_id, int? id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (id != null) _params['id'] = id;
    return _api.request('fave.removeProduct', {
      ..._params,
    });
  }

  /// None
  Future<Json> removeTag({int? id}) async {
    var _params = {};
    if (id != null) _params['id'] = id;
    return _api.request('fave.removeTag', {
      ..._params,
    });
  }

  /// None
  Future<Json> removeVideo({int? owner_id, int? id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (id != null) _params['id'] = id;
    return _api.request('fave.removeVideo', {
      ..._params,
    });
  }

  /// None
  Future<Json> reorderTags({List<dynamic>? ids}) async {
    var _params = {};
    if (ids != null) _params['ids'] = ids;
    return _api.request('fave.reorderTags', {
      ..._params,
    });
  }

  /// None
  Future<Json> setPageTags(
      {int? user_id, int? group_id, List<dynamic>? tag_ids}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (group_id != null) _params['group_id'] = group_id;
    if (tag_ids != null) _params['tag_ids'] = tag_ids;
    return _api.request('fave.setPageTags', {
      ..._params,
    });
  }

  /// None
  Future<Json> setTags(
      {String? item_type,
      int? item_owner_id,
      int? item_id,
      List<dynamic>? tag_ids,
      String? link_id,
      String? link_url}) async {
    var _params = {};
    if (item_type != null) _params['item_type'] = item_type;
    if (item_owner_id != null) _params['item_owner_id'] = item_owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (tag_ids != null) _params['tag_ids'] = tag_ids;
    if (link_id != null) _params['link_id'] = link_id;
    if (link_url != null) _params['link_url'] = link_url;
    return _api.request('fave.setTags', {
      ..._params,
    });
  }

  /// None
  Future<Json> trackPageInteraction({int? user_id, int? group_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('fave.trackPageInteraction', {
      ..._params,
    });
  }
}

class Friends {
  final API _api;

  Friends(this._api);

  /// Approves or creates a friend request.
  Future<Json> add({int? user_id, String? text, bool? follow}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (text != null) _params['text'] = text;
    if (follow != null) _params['follow'] = follow;
    return _api.request('friends.add', {
      ..._params,
    });
  }

  /// Creates a new friend list for the current user.
  Future<Json> addList({String? name, List<dynamic>? user_ids}) async {
    var _params = {};
    if (name != null) _params['name'] = name;
    if (user_ids != null) _params['user_ids'] = user_ids;
    return _api.request('friends.addList', {
      ..._params,
    });
  }

  /// Checks the current user's friendship status with other specified users.
  Future<Json> areFriends(
      {List<dynamic>? user_ids, bool? need_sign, bool? extended}) async {
    var _params = {};
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (need_sign != null) _params['need_sign'] = need_sign;
    if (extended != null) _params['extended'] = extended;
    return _api.request('friends.areFriends', {
      ..._params,
    });
  }

  /// Declines a friend request or deletes a user from the current user's friend list.
  Future<Json> delete({int? user_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('friends.delete', {
      ..._params,
    });
  }

  /// Marks all incoming friend requests as viewed.
  Future<Json> deleteAllRequests() async {
    var _params = {};

    return _api.request('friends.deleteAllRequests', {
      ..._params,
    });
  }

  /// Deletes a friend list of the current user.
  Future<Json> deleteList({int? list_id}) async {
    var _params = {};
    if (list_id != null) _params['list_id'] = list_id;
    return _api.request('friends.deleteList', {
      ..._params,
    });
  }

  /// Edits the friend lists of the selected user.
  Future<Json> edit({int? user_id, List<dynamic>? list_ids}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (list_ids != null) _params['list_ids'] = list_ids;
    return _api.request('friends.edit', {
      ..._params,
    });
  }

  /// Edits a friend list of the current user.
  Future<Json> editList(
      {String? name,
      int? list_id,
      List<dynamic>? user_ids,
      List<dynamic>? add_user_ids,
      List<dynamic>? delete_user_ids}) async {
    var _params = {};
    if (name != null) _params['name'] = name;
    if (list_id != null) _params['list_id'] = list_id;
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (add_user_ids != null) _params['add_user_ids'] = add_user_ids;
    if (delete_user_ids != null) _params['delete_user_ids'] = delete_user_ids;
    return _api.request('friends.editList', {
      ..._params,
    });
  }

  /// Returns a list of user IDs or detailed information about a user's friends.
  Future<Json> get(
      {int? user_id,
      String? order,
      int? list_id,
      int? count,
      int? offset,
      List<dynamic>? fields,
      String? name_case,
      String? ref}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (order != null) _params['order'] = order;
    if (list_id != null) _params['list_id'] = list_id;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    if (ref != null) _params['ref'] = ref;
    return _api.request('friends.get', {
      ..._params,
    });
  }

  /// Returns a list of IDs of the current user's friends who installed the application.
  Future<Json> getAppUsers() async {
    var _params = {};

    return _api.request('friends.getAppUsers', {
      ..._params,
    });
  }

  /// Returns a list of the current user's friends whose phone numbers, validated or specified in a profile, are in a given list.
  Future<Json> getByPhones(
      {List<dynamic>? phones, List<dynamic>? fields}) async {
    var _params = {};
    if (phones != null) _params['phones'] = phones;
    if (fields != null) _params['fields'] = fields;
    return _api.request('friends.getByPhones', {
      ..._params,
    });
  }

  /// Returns a list of the user's friend lists.
  Future<Json> getLists({int? user_id, bool? return_system}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (return_system != null) _params['return_system'] = return_system;
    return _api.request('friends.getLists', {
      ..._params,
    });
  }

  /// Returns a list of user IDs of the mutual friends of two users.
  Future<Json> getMutual(
      {int? source_uid,
      int? target_uid,
      List<dynamic>? target_uids,
      String? order,
      int? count,
      int? offset}) async {
    var _params = {};
    if (source_uid != null) _params['source_uid'] = source_uid;
    if (target_uid != null) _params['target_uid'] = target_uid;
    if (target_uids != null) _params['target_uids'] = target_uids;
    if (order != null) _params['order'] = order;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    return _api.request('friends.getMutual', {
      ..._params,
    });
  }

  /// Returns a list of user IDs of a user's friends who are online.
  Future<Json> getOnline(
      {int? user_id,
      int? list_id,
      bool? online_mobile,
      String? order,
      int? count,
      int? offset}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (list_id != null) _params['list_id'] = list_id;
    if (online_mobile != null) _params['online_mobile'] = online_mobile;
    if (order != null) _params['order'] = order;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    return _api.request('friends.getOnline', {
      ..._params,
    });
  }

  /// Returns a list of user IDs of the current user's recently added friends.
  Future<Json> getRecent({int? count}) async {
    var _params = {};
    if (count != null) _params['count'] = count;
    return _api.request('friends.getRecent', {
      ..._params,
    });
  }

  /// Returns information about the current user's incoming and outgoing friend requests.
  Future<Json> getRequests(
      {int? offset,
      int? count,
      bool? extended,
      bool? need_mutual,
      bool? out,
      int? sort,
      bool? need_viewed,
      bool? suggested,
      String? ref,
      List<dynamic>? fields}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (need_mutual != null) _params['need_mutual'] = need_mutual;
    if (out != null) _params['out'] = out;
    if (sort != null) _params['sort'] = sort;
    if (need_viewed != null) _params['need_viewed'] = need_viewed;
    if (suggested != null) _params['suggested'] = suggested;
    if (ref != null) _params['ref'] = ref;
    if (fields != null) _params['fields'] = fields;
    return _api.request('friends.getRequests', {
      ..._params,
    });
  }

  /// Returns a list of profiles of users whom the current user may know.
  Future<Json> getSuggestions(
      {List<dynamic>? filter,
      int? count,
      int? offset,
      List<dynamic>? fields,
      String? name_case}) async {
    var _params = {};
    if (filter != null) _params['filter'] = filter;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    return _api.request('friends.getSuggestions', {
      ..._params,
    });
  }

  /// Returns a list of friends matching the search criteria.
  Future<Json> search(
      {int? user_id,
      String? q,
      List<dynamic>? fields,
      String? name_case,
      int? offset,
      int? count}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (q != null) _params['q'] = q;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('friends.search', {
      ..._params,
    });
  }
}

class Gifts {
  final API _api;

  Gifts(this._api);

  /// Returns a list of user gifts.
  Future<Json> get({int? user_id, int? count, int? offset}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    return _api.request('gifts.get', {
      ..._params,
    });
  }
}

class Groups {
  final API _api;

  Groups(this._api);

  /// None
  Future<Json> addAddress(
      {int? group_id,
      String? title,
      String? address,
      String? additional_address,
      int? country_id,
      int? city_id,
      int? metro_id,
      dynamic latitude,
      dynamic longitude,
      String? phone,
      String? work_info_status,
      String? timetable,
      bool? is_main_address}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (title != null) _params['title'] = title;
    if (address != null) _params['address'] = address;
    if (additional_address != null)
      _params['additional_address'] = additional_address;
    if (country_id != null) _params['country_id'] = country_id;
    if (city_id != null) _params['city_id'] = city_id;
    if (metro_id != null) _params['metro_id'] = metro_id;
    if (latitude != null) _params['latitude'] = latitude;
    if (longitude != null) _params['longitude'] = longitude;
    if (phone != null) _params['phone'] = phone;
    if (work_info_status != null)
      _params['work_info_status'] = work_info_status;
    if (timetable != null) _params['timetable'] = timetable;
    if (is_main_address != null) _params['is_main_address'] = is_main_address;
    return _api.request('groups.addAddress', {
      ..._params,
    });
  }

  /// None
  Future<Json> addCallbackServer(
      {int? group_id, String? url, String? title, String? secret_key}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (url != null) _params['url'] = url;
    if (title != null) _params['title'] = title;
    if (secret_key != null) _params['secret_key'] = secret_key;
    return _api.request('groups.addCallbackServer', {
      ..._params,
    });
  }

  /// Allows to add a link to the community.
  Future<Json> addLink({int? group_id, String? link, String? text}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (link != null) _params['link'] = link;
    if (text != null) _params['text'] = text;
    return _api.request('groups.addLink', {
      ..._params,
    });
  }

  /// Allows to approve join request to the community.
  Future<Json> approveRequest({int? group_id, int? user_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('groups.approveRequest', {
      ..._params,
    });
  }

  /// None
  Future<Json> ban(
      {int? group_id,
      int? owner_id,
      int? end_date,
      int? reason,
      String? comment,
      bool? comment_visible}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (end_date != null) _params['end_date'] = end_date;
    if (reason != null) _params['reason'] = reason;
    if (comment != null) _params['comment'] = comment;
    if (comment_visible != null) _params['comment_visible'] = comment_visible;
    return _api.request('groups.ban', {
      ..._params,
    });
  }

  /// Creates a new community.
  Future<Json> create(
      {String? title,
      String? description,
      String? type,
      int? public_category,
      int? subtype}) async {
    var _params = {};
    if (title != null) _params['title'] = title;
    if (description != null) _params['description'] = description;
    if (type != null) _params['type'] = type;
    if (public_category != null) _params['public_category'] = public_category;
    if (subtype != null) _params['subtype'] = subtype;
    return _api.request('groups.create', {
      ..._params,
    });
  }

  /// None
  Future<Json> deleteAddress({int? group_id, int? address_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (address_id != null) _params['address_id'] = address_id;
    return _api.request('groups.deleteAddress', {
      ..._params,
    });
  }

  /// None
  Future<Json> deleteCallbackServer({int? group_id, int? server_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (server_id != null) _params['server_id'] = server_id;
    return _api.request('groups.deleteCallbackServer', {
      ..._params,
    });
  }

  /// Allows to delete a link from the community.
  Future<Json> deleteLink({int? group_id, int? link_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (link_id != null) _params['link_id'] = link_id;
    return _api.request('groups.deleteLink', {
      ..._params,
    });
  }

  /// None
  Future<Json> disableOnline({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('groups.disableOnline', {
      ..._params,
    });
  }

  /// Edits a community.
  Future<Json> edit(
      {int? group_id,
      String? title,
      String? description,
      String? screen_name,
      int? access,
      String? website,
      String? subject,
      String? email,
      String? phone,
      String? rss,
      int? event_start_date,
      int? event_finish_date,
      int? event_group_id,
      int? public_category,
      int? public_subcategory,
      String? public_date,
      int? wall,
      int? topics,
      int? photos,
      int? video,
      int? audio,
      bool? links,
      bool? events,
      bool? places,
      bool? contacts,
      int? docs,
      int? wiki,
      bool? messages,
      bool? articles,
      bool? addresses,
      int? age_limits,
      bool? market,
      bool? market_comments,
      List<dynamic>? market_country,
      List<dynamic>? market_city,
      int? market_currency,
      int? market_contact,
      int? market_wiki,
      bool? obscene_filter,
      bool? obscene_stopwords,
      List<dynamic>? obscene_words,
      int? main_section,
      int? secondary_section,
      int? country,
      int? city}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (title != null) _params['title'] = title;
    if (description != null) _params['description'] = description;
    if (screen_name != null) _params['screen_name'] = screen_name;
    if (access != null) _params['access'] = access;
    if (website != null) _params['website'] = website;
    if (subject != null) _params['subject'] = subject;
    if (email != null) _params['email'] = email;
    if (phone != null) _params['phone'] = phone;
    if (rss != null) _params['rss'] = rss;
    if (event_start_date != null)
      _params['event_start_date'] = event_start_date;
    if (event_finish_date != null)
      _params['event_finish_date'] = event_finish_date;
    if (event_group_id != null) _params['event_group_id'] = event_group_id;
    if (public_category != null) _params['public_category'] = public_category;
    if (public_subcategory != null)
      _params['public_subcategory'] = public_subcategory;
    if (public_date != null) _params['public_date'] = public_date;
    if (wall != null) _params['wall'] = wall;
    if (topics != null) _params['topics'] = topics;
    if (photos != null) _params['photos'] = photos;
    if (video != null) _params['video'] = video;
    if (audio != null) _params['audio'] = audio;
    if (links != null) _params['links'] = links;
    if (events != null) _params['events'] = events;
    if (places != null) _params['places'] = places;
    if (contacts != null) _params['contacts'] = contacts;
    if (docs != null) _params['docs'] = docs;
    if (wiki != null) _params['wiki'] = wiki;
    if (messages != null) _params['messages'] = messages;
    if (articles != null) _params['articles'] = articles;
    if (addresses != null) _params['addresses'] = addresses;
    if (age_limits != null) _params['age_limits'] = age_limits;
    if (market != null) _params['market'] = market;
    if (market_comments != null) _params['market_comments'] = market_comments;
    if (market_country != null) _params['market_country'] = market_country;
    if (market_city != null) _params['market_city'] = market_city;
    if (market_currency != null) _params['market_currency'] = market_currency;
    if (market_contact != null) _params['market_contact'] = market_contact;
    if (market_wiki != null) _params['market_wiki'] = market_wiki;
    if (obscene_filter != null) _params['obscene_filter'] = obscene_filter;
    if (obscene_stopwords != null)
      _params['obscene_stopwords'] = obscene_stopwords;
    if (obscene_words != null) _params['obscene_words'] = obscene_words;
    if (main_section != null) _params['main_section'] = main_section;
    if (secondary_section != null)
      _params['secondary_section'] = secondary_section;
    if (country != null) _params['country'] = country;
    if (city != null) _params['city'] = city;
    return _api.request('groups.edit', {
      ..._params,
    });
  }

  /// None
  Future<Json> editAddress(
      {int? group_id,
      int? address_id,
      String? title,
      String? address,
      String? additional_address,
      int? country_id,
      int? city_id,
      int? metro_id,
      dynamic latitude,
      dynamic longitude,
      String? phone,
      String? work_info_status,
      String? timetable,
      bool? is_main_address}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (address_id != null) _params['address_id'] = address_id;
    if (title != null) _params['title'] = title;
    if (address != null) _params['address'] = address;
    if (additional_address != null)
      _params['additional_address'] = additional_address;
    if (country_id != null) _params['country_id'] = country_id;
    if (city_id != null) _params['city_id'] = city_id;
    if (metro_id != null) _params['metro_id'] = metro_id;
    if (latitude != null) _params['latitude'] = latitude;
    if (longitude != null) _params['longitude'] = longitude;
    if (phone != null) _params['phone'] = phone;
    if (work_info_status != null)
      _params['work_info_status'] = work_info_status;
    if (timetable != null) _params['timetable'] = timetable;
    if (is_main_address != null) _params['is_main_address'] = is_main_address;
    return _api.request('groups.editAddress', {
      ..._params,
    });
  }

  /// None
  Future<Json> editCallbackServer(
      {int? group_id,
      int? server_id,
      String? url,
      String? title,
      String? secret_key}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (server_id != null) _params['server_id'] = server_id;
    if (url != null) _params['url'] = url;
    if (title != null) _params['title'] = title;
    if (secret_key != null) _params['secret_key'] = secret_key;
    return _api.request('groups.editCallbackServer', {
      ..._params,
    });
  }

  /// Allows to edit a link in the community.
  Future<Json> editLink({int? group_id, int? link_id, String? text}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (link_id != null) _params['link_id'] = link_id;
    if (text != null) _params['text'] = text;
    return _api.request('groups.editLink', {
      ..._params,
    });
  }

  /// Allows to add, remove or edit the community manager.
  Future<Json> editManager(
      {int? group_id,
      int? user_id,
      String? role,
      bool? is_contact,
      String? contact_position,
      String? contact_phone,
      String? contact_email}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (role != null) _params['role'] = role;
    if (is_contact != null) _params['is_contact'] = is_contact;
    if (contact_position != null)
      _params['contact_position'] = contact_position;
    if (contact_phone != null) _params['contact_phone'] = contact_phone;
    if (contact_email != null) _params['contact_email'] = contact_email;
    return _api.request('groups.editManager', {
      ..._params,
    });
  }

  /// None
  Future<Json> enableOnline({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('groups.enableOnline', {
      ..._params,
    });
  }

  /// Returns a list of the communities to which a user belongs.
  Future<Json> get(
      {int? user_id,
      bool? extended,
      List<dynamic>? filter,
      List<dynamic>? fields,
      int? offset,
      int? count}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (extended != null) _params['extended'] = extended;
    if (filter != null) _params['filter'] = filter;
    if (fields != null) _params['fields'] = fields;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('groups.get', {
      ..._params,
    });
  }

  /// Returns a list of community addresses.
  Future<Json> getAddresses(
      {int? group_id,
      List<dynamic>? address_ids,
      dynamic latitude,
      dynamic longitude,
      int? offset,
      int? count,
      List<dynamic>? fields}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (address_ids != null) _params['address_ids'] = address_ids;
    if (latitude != null) _params['latitude'] = latitude;
    if (longitude != null) _params['longitude'] = longitude;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    return _api.request('groups.getAddresses', {
      ..._params,
    });
  }

  /// Returns a list of users on a community blacklist.
  Future<Json> getBanned(
      {int? group_id,
      int? offset,
      int? count,
      List<dynamic>? fields,
      int? owner_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('groups.getBanned', {
      ..._params,
    });
  }

  /// Returns information about communities by their IDs.
  Future<Json> getById(
      {List<dynamic>? group_ids,
      String? group_id,
      List<dynamic>? fields}) async {
    var _params = {};
    if (group_ids != null) _params['group_ids'] = group_ids;
    if (group_id != null) _params['group_id'] = group_id;
    if (fields != null) _params['fields'] = fields;
    return _api.request('groups.getById', {
      ..._params,
    });
  }

  /// Returns Callback API confirmation code for the community.
  Future<Json> getCallbackConfirmationCode({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('groups.getCallbackConfirmationCode', {
      ..._params,
    });
  }

  /// None
  Future<Json> getCallbackServers(
      {int? group_id, List<dynamic>? server_ids}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (server_ids != null) _params['server_ids'] = server_ids;
    return _api.request('groups.getCallbackServers', {
      ..._params,
    });
  }

  /// Returns [vk.com/dev/callback_api|Callback API] notifications settings.
  Future<Json> getCallbackSettings({int? group_id, int? server_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (server_id != null) _params['server_id'] = server_id;
    return _api.request('groups.getCallbackSettings', {
      ..._params,
    });
  }

  /// Returns communities list for a catalog category.
  Future<Json> getCatalog({int? category_id, int? subcategory_id}) async {
    var _params = {};
    if (category_id != null) _params['category_id'] = category_id;
    if (subcategory_id != null) _params['subcategory_id'] = subcategory_id;
    return _api.request('groups.getCatalog', {
      ..._params,
    });
  }

  /// Returns categories list for communities catalog
  Future<Json> getCatalogInfo({bool? extended, bool? subcategories}) async {
    var _params = {};
    if (extended != null) _params['extended'] = extended;
    if (subcategories != null) _params['subcategories'] = subcategories;
    return _api.request('groups.getCatalogInfo', {
      ..._params,
    });
  }

  /// Returns invited users list of a community
  Future<Json> getInvitedUsers(
      {int? group_id,
      int? offset,
      int? count,
      List<dynamic>? fields,
      String? name_case}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    return _api.request('groups.getInvitedUsers', {
      ..._params,
    });
  }

  /// Returns a list of invitations to join communities and events.
  Future<Json> getInvites({int? offset, int? count, bool? extended}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    return _api.request('groups.getInvites', {
      ..._params,
    });
  }

  /// Returns the data needed to query a Long Poll server for events
  Future<Json> getLongPollServer({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('groups.getLongPollServer', {
      ..._params,
    });
  }

  /// Returns Long Poll notification settings
  Future<Json> getLongPollSettings({int? group_id, String? version}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (version != null) _params['version'] = version;
    return _api.request('groups.getLongPollSettings', {
      ..._params,
    });
  }

  /// Returns a list of community members.
  Future<Json> getMembers(
      {String? group_id,
      String? sort,
      int? offset,
      int? count,
      List<dynamic>? fields,
      String? filter}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (sort != null) _params['sort'] = sort;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    if (filter != null) _params['filter'] = filter;
    return _api.request('groups.getMembers', {
      ..._params,
    });
  }

  /// Returns a list of requests to the community.
  Future<Json> getRequests(
      {int? group_id, int? offset, int? count, List<dynamic>? fields}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    return _api.request('groups.getRequests', {
      ..._params,
    });
  }

  /// Returns community settings.
  Future<Json> getSettings({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('groups.getSettings', {
      ..._params,
    });
  }

  /// List of group's tags
  Future<Json> getTagList({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('groups.getTagList', {
      ..._params,
    });
  }

  /// None
  Future<Json> getTokenPermissions() async {
    var _params = {};

    return _api.request('groups.getTokenPermissions', {
      ..._params,
    });
  }

  /// Allows to invite friends to the community.
  Future<Json> invite({int? group_id, int? user_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('groups.invite', {
      ..._params,
    });
  }

  /// Returns information specifying whether a user is a member of a community.
  Future<Json> isMember(
      {String? group_id,
      int? user_id,
      List<dynamic>? user_ids,
      bool? extended}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (extended != null) _params['extended'] = extended;
    return _api.request('groups.isMember', {
      ..._params,
    });
  }

  /// With this method you can join the group or public page, and also confirm your participation in an event.
  Future<Json> join({int? group_id, String? not_sure}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (not_sure != null) _params['not_sure'] = not_sure;
    return _api.request('groups.join', {
      ..._params,
    });
  }

  /// With this method you can leave a group, public page, or event.
  Future<Json> leave({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('groups.leave', {
      ..._params,
    });
  }

  /// Removes a user from the community.
  Future<Json> removeUser({int? group_id, int? user_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('groups.removeUser', {
      ..._params,
    });
  }

  /// Allows to reorder links in the community.
  Future<Json> reorderLink({int? group_id, int? link_id, int? after}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (link_id != null) _params['link_id'] = link_id;
    if (after != null) _params['after'] = after;
    return _api.request('groups.reorderLink', {
      ..._params,
    });
  }

  /// Returns a list of communities matching the search criteria.
  Future<Json> search(
      {String? q,
      String? type,
      int? country_id,
      int? city_id,
      bool? future,
      bool? market,
      int? sort,
      int? offset,
      int? count}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (type != null) _params['type'] = type;
    if (country_id != null) _params['country_id'] = country_id;
    if (city_id != null) _params['city_id'] = city_id;
    if (future != null) _params['future'] = future;
    if (market != null) _params['market'] = market;
    if (sort != null) _params['sort'] = sort;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('groups.search', {
      ..._params,
    });
  }

  /// Allow to set notifications settings for group.
  Future<Json> setCallbackSettings(
      {int? group_id,
      int? server_id,
      String? api_version,
      bool? message_new,
      bool? message_reply,
      bool? message_allow,
      bool? message_edit,
      bool? message_deny,
      bool? message_typing_state,
      bool? photo_new,
      bool? audio_new,
      bool? video_new,
      bool? wall_reply_new,
      bool? wall_reply_edit,
      bool? wall_reply_delete,
      bool? wall_reply_restore,
      bool? wall_post_new,
      bool? wall_repost,
      bool? board_post_new,
      bool? board_post_edit,
      bool? board_post_restore,
      bool? board_post_delete,
      bool? photo_comment_new,
      bool? photo_comment_edit,
      bool? photo_comment_delete,
      bool? photo_comment_restore,
      bool? video_comment_new,
      bool? video_comment_edit,
      bool? video_comment_delete,
      bool? video_comment_restore,
      bool? market_comment_new,
      bool? market_comment_edit,
      bool? market_comment_delete,
      bool? market_comment_restore,
      bool? market_order_new,
      bool? market_order_edit,
      bool? poll_vote_new,
      bool? group_join,
      bool? group_leave,
      bool? group_change_settings,
      bool? group_change_photo,
      bool? group_officers_edit,
      bool? user_block,
      bool? user_unblock,
      bool? lead_forms_new,
      bool? like_add,
      bool? like_remove,
      bool? message_event,
      bool? donut_subscription_create,
      bool? donut_subscription_prolonged,
      bool? donut_subscription_cancelled,
      bool? donut_subscription_price_changed,
      bool? donut_subscription_expired,
      bool? donut_money_withdraw,
      bool? donut_money_withdraw_error}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (server_id != null) _params['server_id'] = server_id;
    if (api_version != null) _params['api_version'] = api_version;
    if (message_new != null) _params['message_new'] = message_new;
    if (message_reply != null) _params['message_reply'] = message_reply;
    if (message_allow != null) _params['message_allow'] = message_allow;
    if (message_edit != null) _params['message_edit'] = message_edit;
    if (message_deny != null) _params['message_deny'] = message_deny;
    if (message_typing_state != null)
      _params['message_typing_state'] = message_typing_state;
    if (photo_new != null) _params['photo_new'] = photo_new;
    if (audio_new != null) _params['audio_new'] = audio_new;
    if (video_new != null) _params['video_new'] = video_new;
    if (wall_reply_new != null) _params['wall_reply_new'] = wall_reply_new;
    if (wall_reply_edit != null) _params['wall_reply_edit'] = wall_reply_edit;
    if (wall_reply_delete != null)
      _params['wall_reply_delete'] = wall_reply_delete;
    if (wall_reply_restore != null)
      _params['wall_reply_restore'] = wall_reply_restore;
    if (wall_post_new != null) _params['wall_post_new'] = wall_post_new;
    if (wall_repost != null) _params['wall_repost'] = wall_repost;
    if (board_post_new != null) _params['board_post_new'] = board_post_new;
    if (board_post_edit != null) _params['board_post_edit'] = board_post_edit;
    if (board_post_restore != null)
      _params['board_post_restore'] = board_post_restore;
    if (board_post_delete != null)
      _params['board_post_delete'] = board_post_delete;
    if (photo_comment_new != null)
      _params['photo_comment_new'] = photo_comment_new;
    if (photo_comment_edit != null)
      _params['photo_comment_edit'] = photo_comment_edit;
    if (photo_comment_delete != null)
      _params['photo_comment_delete'] = photo_comment_delete;
    if (photo_comment_restore != null)
      _params['photo_comment_restore'] = photo_comment_restore;
    if (video_comment_new != null)
      _params['video_comment_new'] = video_comment_new;
    if (video_comment_edit != null)
      _params['video_comment_edit'] = video_comment_edit;
    if (video_comment_delete != null)
      _params['video_comment_delete'] = video_comment_delete;
    if (video_comment_restore != null)
      _params['video_comment_restore'] = video_comment_restore;
    if (market_comment_new != null)
      _params['market_comment_new'] = market_comment_new;
    if (market_comment_edit != null)
      _params['market_comment_edit'] = market_comment_edit;
    if (market_comment_delete != null)
      _params['market_comment_delete'] = market_comment_delete;
    if (market_comment_restore != null)
      _params['market_comment_restore'] = market_comment_restore;
    if (market_order_new != null)
      _params['market_order_new'] = market_order_new;
    if (market_order_edit != null)
      _params['market_order_edit'] = market_order_edit;
    if (poll_vote_new != null) _params['poll_vote_new'] = poll_vote_new;
    if (group_join != null) _params['group_join'] = group_join;
    if (group_leave != null) _params['group_leave'] = group_leave;
    if (group_change_settings != null)
      _params['group_change_settings'] = group_change_settings;
    if (group_change_photo != null)
      _params['group_change_photo'] = group_change_photo;
    if (group_officers_edit != null)
      _params['group_officers_edit'] = group_officers_edit;
    if (user_block != null) _params['user_block'] = user_block;
    if (user_unblock != null) _params['user_unblock'] = user_unblock;
    if (lead_forms_new != null) _params['lead_forms_new'] = lead_forms_new;
    if (like_add != null) _params['like_add'] = like_add;
    if (like_remove != null) _params['like_remove'] = like_remove;
    if (message_event != null) _params['message_event'] = message_event;
    if (donut_subscription_create != null)
      _params['donut_subscription_create'] = donut_subscription_create;
    if (donut_subscription_prolonged != null)
      _params['donut_subscription_prolonged'] = donut_subscription_prolonged;
    if (donut_subscription_cancelled != null)
      _params['donut_subscription_cancelled'] = donut_subscription_cancelled;
    if (donut_subscription_price_changed != null)
      _params['donut_subscription_price_changed'] =
          donut_subscription_price_changed;
    if (donut_subscription_expired != null)
      _params['donut_subscription_expired'] = donut_subscription_expired;
    if (donut_money_withdraw != null)
      _params['donut_money_withdraw'] = donut_money_withdraw;
    if (donut_money_withdraw_error != null)
      _params['donut_money_withdraw_error'] = donut_money_withdraw_error;
    return _api.request('groups.setCallbackSettings', {
      ..._params,
    });
  }

  /// Sets Long Poll notification settings
  Future<Json> setLongPollSettings(
      {int? group_id,
      bool? enabled,
      String? api_version,
      bool? message_new,
      bool? message_reply,
      bool? message_allow,
      bool? message_deny,
      bool? message_edit,
      bool? message_typing_state,
      bool? photo_new,
      bool? audio_new,
      bool? video_new,
      bool? wall_reply_new,
      bool? wall_reply_edit,
      bool? wall_reply_delete,
      bool? wall_reply_restore,
      bool? wall_post_new,
      bool? wall_repost,
      bool? board_post_new,
      bool? board_post_edit,
      bool? board_post_restore,
      bool? board_post_delete,
      bool? photo_comment_new,
      bool? photo_comment_edit,
      bool? photo_comment_delete,
      bool? photo_comment_restore,
      bool? video_comment_new,
      bool? video_comment_edit,
      bool? video_comment_delete,
      bool? video_comment_restore,
      bool? market_comment_new,
      bool? market_comment_edit,
      bool? market_comment_delete,
      bool? market_comment_restore,
      bool? poll_vote_new,
      bool? group_join,
      bool? group_leave,
      bool? group_change_settings,
      bool? group_change_photo,
      bool? group_officers_edit,
      bool? user_block,
      bool? user_unblock,
      bool? like_add,
      bool? like_remove,
      bool? message_event,
      bool? donut_subscription_create,
      bool? donut_subscription_prolonged,
      bool? donut_subscription_cancelled,
      bool? donut_subscription_price_changed,
      bool? donut_subscription_expired,
      bool? donut_money_withdraw,
      bool? donut_money_withdraw_error}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (enabled != null) _params['enabled'] = enabled;
    if (api_version != null) _params['api_version'] = api_version;
    if (message_new != null) _params['message_new'] = message_new;
    if (message_reply != null) _params['message_reply'] = message_reply;
    if (message_allow != null) _params['message_allow'] = message_allow;
    if (message_deny != null) _params['message_deny'] = message_deny;
    if (message_edit != null) _params['message_edit'] = message_edit;
    if (message_typing_state != null)
      _params['message_typing_state'] = message_typing_state;
    if (photo_new != null) _params['photo_new'] = photo_new;
    if (audio_new != null) _params['audio_new'] = audio_new;
    if (video_new != null) _params['video_new'] = video_new;
    if (wall_reply_new != null) _params['wall_reply_new'] = wall_reply_new;
    if (wall_reply_edit != null) _params['wall_reply_edit'] = wall_reply_edit;
    if (wall_reply_delete != null)
      _params['wall_reply_delete'] = wall_reply_delete;
    if (wall_reply_restore != null)
      _params['wall_reply_restore'] = wall_reply_restore;
    if (wall_post_new != null) _params['wall_post_new'] = wall_post_new;
    if (wall_repost != null) _params['wall_repost'] = wall_repost;
    if (board_post_new != null) _params['board_post_new'] = board_post_new;
    if (board_post_edit != null) _params['board_post_edit'] = board_post_edit;
    if (board_post_restore != null)
      _params['board_post_restore'] = board_post_restore;
    if (board_post_delete != null)
      _params['board_post_delete'] = board_post_delete;
    if (photo_comment_new != null)
      _params['photo_comment_new'] = photo_comment_new;
    if (photo_comment_edit != null)
      _params['photo_comment_edit'] = photo_comment_edit;
    if (photo_comment_delete != null)
      _params['photo_comment_delete'] = photo_comment_delete;
    if (photo_comment_restore != null)
      _params['photo_comment_restore'] = photo_comment_restore;
    if (video_comment_new != null)
      _params['video_comment_new'] = video_comment_new;
    if (video_comment_edit != null)
      _params['video_comment_edit'] = video_comment_edit;
    if (video_comment_delete != null)
      _params['video_comment_delete'] = video_comment_delete;
    if (video_comment_restore != null)
      _params['video_comment_restore'] = video_comment_restore;
    if (market_comment_new != null)
      _params['market_comment_new'] = market_comment_new;
    if (market_comment_edit != null)
      _params['market_comment_edit'] = market_comment_edit;
    if (market_comment_delete != null)
      _params['market_comment_delete'] = market_comment_delete;
    if (market_comment_restore != null)
      _params['market_comment_restore'] = market_comment_restore;
    if (poll_vote_new != null) _params['poll_vote_new'] = poll_vote_new;
    if (group_join != null) _params['group_join'] = group_join;
    if (group_leave != null) _params['group_leave'] = group_leave;
    if (group_change_settings != null)
      _params['group_change_settings'] = group_change_settings;
    if (group_change_photo != null)
      _params['group_change_photo'] = group_change_photo;
    if (group_officers_edit != null)
      _params['group_officers_edit'] = group_officers_edit;
    if (user_block != null) _params['user_block'] = user_block;
    if (user_unblock != null) _params['user_unblock'] = user_unblock;
    if (like_add != null) _params['like_add'] = like_add;
    if (like_remove != null) _params['like_remove'] = like_remove;
    if (message_event != null) _params['message_event'] = message_event;
    if (donut_subscription_create != null)
      _params['donut_subscription_create'] = donut_subscription_create;
    if (donut_subscription_prolonged != null)
      _params['donut_subscription_prolonged'] = donut_subscription_prolonged;
    if (donut_subscription_cancelled != null)
      _params['donut_subscription_cancelled'] = donut_subscription_cancelled;
    if (donut_subscription_price_changed != null)
      _params['donut_subscription_price_changed'] =
          donut_subscription_price_changed;
    if (donut_subscription_expired != null)
      _params['donut_subscription_expired'] = donut_subscription_expired;
    if (donut_money_withdraw != null)
      _params['donut_money_withdraw'] = donut_money_withdraw;
    if (donut_money_withdraw_error != null)
      _params['donut_money_withdraw_error'] = donut_money_withdraw_error;
    return _api.request('groups.setLongPollSettings', {
      ..._params,
    });
  }

  /// None
  Future<Json> setSettings(
      {int? group_id,
      bool? messages,
      bool? bots_capabilities,
      bool? bots_start_button,
      bool? bots_add_to_chat}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (messages != null) _params['messages'] = messages;
    if (bots_capabilities != null)
      _params['bots_capabilities'] = bots_capabilities;
    if (bots_start_button != null)
      _params['bots_start_button'] = bots_start_button;
    if (bots_add_to_chat != null)
      _params['bots_add_to_chat'] = bots_add_to_chat;
    return _api.request('groups.setSettings', {
      ..._params,
    });
  }

  /// In order to save note about group participant
  Future<Json> setUserNote({int? group_id, int? user_id, String? note}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (note != null) _params['note'] = note;
    return _api.request('groups.setUserNote', {
      ..._params,
    });
  }

  /// Add new group's tag
  Future<Json> tagAdd(
      {int? group_id, String? tag_name, String? tag_color}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (tag_name != null) _params['tag_name'] = tag_name;
    if (tag_color != null) _params['tag_color'] = tag_color;
    return _api.request('groups.tagAdd', {
      ..._params,
    });
  }

  /// Bind or unbind group's tag to user
  Future<Json> tagBind(
      {int? group_id, int? tag_id, int? user_id, String? act}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (tag_id != null) _params['tag_id'] = tag_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (act != null) _params['act'] = act;
    return _api.request('groups.tagBind', {
      ..._params,
    });
  }

  /// Delete group's tag
  Future<Json> tagDelete({int? group_id, int? tag_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (tag_id != null) _params['tag_id'] = tag_id;
    return _api.request('groups.tagDelete', {
      ..._params,
    });
  }

  /// Update group's tag
  Future<Json> tagUpdate({int? group_id, int? tag_id, String? tag_name}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (tag_id != null) _params['tag_id'] = tag_id;
    if (tag_name != null) _params['tag_name'] = tag_name;
    return _api.request('groups.tagUpdate', {
      ..._params,
    });
  }

  /// None
  Future<Json> toggleMarket({int? group_id, String? state, String? ref}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (state != null) _params['state'] = state;
    if (ref != null) _params['ref'] = ref;
    return _api.request('groups.toggleMarket', {
      ..._params,
    });
  }

  /// None
  Future<Json> unban({int? group_id, int? owner_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('groups.unban', {
      ..._params,
    });
  }
}

class Likes {
  final API _api;

  Likes(this._api);

  /// Adds the specified object to the 'Likes' list of the current user.
  Future<Json> add(
      {String? type, int? owner_id, int? item_id, String? access_key}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (access_key != null) _params['access_key'] = access_key;
    return _api.request('likes.add', {
      ..._params,
    });
  }

  /// Deletes the specified object from the 'Likes' list of the current user.
  Future<Json> delete(
      {String? type, int? owner_id, int? item_id, String? access_key}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (access_key != null) _params['access_key'] = access_key;
    return _api.request('likes.delete', {
      ..._params,
    });
  }

  /// Returns a list of IDs of users who added the specified object to their 'Likes' list.
  Future<Json> getList(
      {String? type,
      int? owner_id,
      int? item_id,
      String? page_url,
      String? filter,
      int? friends_only,
      bool? extended,
      int? offset,
      int? count,
      bool? skip_own}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (page_url != null) _params['page_url'] = page_url;
    if (filter != null) _params['filter'] = filter;
    if (friends_only != null) _params['friends_only'] = friends_only;
    if (extended != null) _params['extended'] = extended;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (skip_own != null) _params['skip_own'] = skip_own;
    return _api.request('likes.getList', {
      ..._params,
    });
  }

  /// Checks for the object in the 'Likes' list of the specified user.
  Future<Json> isLiked(
      {int? user_id, String? type, int? owner_id, int? item_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (type != null) _params['type'] = type;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    return _api.request('likes.isLiked', {
      ..._params,
    });
  }
}

class Market {
  final API _api;

  Market(this._api);

  /// Ads a new item to the market.
  Future<Json> add(
      {int? owner_id,
      String? name,
      String? description,
      int? category_id,
      dynamic price,
      dynamic old_price,
      bool? deleted,
      int? main_photo_id,
      List<dynamic>? photo_ids,
      String? url,
      int? dimension_width,
      int? dimension_height,
      int? dimension_length,
      int? weight,
      String? sku}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (name != null) _params['name'] = name;
    if (description != null) _params['description'] = description;
    if (category_id != null) _params['category_id'] = category_id;
    if (price != null) _params['price'] = price;
    if (old_price != null) _params['old_price'] = old_price;
    if (deleted != null) _params['deleted'] = deleted;
    if (main_photo_id != null) _params['main_photo_id'] = main_photo_id;
    if (photo_ids != null) _params['photo_ids'] = photo_ids;
    if (url != null) _params['url'] = url;
    if (dimension_width != null) _params['dimension_width'] = dimension_width;
    if (dimension_height != null)
      _params['dimension_height'] = dimension_height;
    if (dimension_length != null)
      _params['dimension_length'] = dimension_length;
    if (weight != null) _params['weight'] = weight;
    if (sku != null) _params['sku'] = sku;
    return _api.request('market.add', {
      ..._params,
    });
  }

  /// Creates new collection of items
  Future<Json> addAlbum(
      {int? owner_id,
      String? title,
      int? photo_id,
      bool? main_album,
      bool? is_hidden}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (title != null) _params['title'] = title;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (main_album != null) _params['main_album'] = main_album;
    if (is_hidden != null) _params['is_hidden'] = is_hidden;
    return _api.request('market.addAlbum', {
      ..._params,
    });
  }

  /// Adds an item to one or multiple collections.
  Future<Json> addToAlbum(
      {int? owner_id,
      List<dynamic>? item_ids,
      List<dynamic>? album_ids}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_ids != null) _params['item_ids'] = item_ids;
    if (album_ids != null) _params['album_ids'] = album_ids;
    return _api.request('market.addToAlbum', {
      ..._params,
    });
  }

  /// Creates a new comment for an item.
  Future<Json> createComment(
      {int? owner_id,
      int? item_id,
      String? message,
      List<dynamic>? attachments,
      bool? from_group,
      int? reply_to_comment,
      int? sticker_id,
      String? guid}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    if (from_group != null) _params['from_group'] = from_group;
    if (reply_to_comment != null)
      _params['reply_to_comment'] = reply_to_comment;
    if (sticker_id != null) _params['sticker_id'] = sticker_id;
    if (guid != null) _params['guid'] = guid;
    return _api.request('market.createComment', {
      ..._params,
    });
  }

  /// Deletes an item.
  Future<Json> delete({int? owner_id, int? item_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    return _api.request('market.delete', {
      ..._params,
    });
  }

  /// Deletes a collection of items.
  Future<Json> deleteAlbum({int? owner_id, int? album_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    return _api.request('market.deleteAlbum', {
      ..._params,
    });
  }

  /// Deletes an item's comment
  Future<Json> deleteComment({int? owner_id, int? comment_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    return _api.request('market.deleteComment', {
      ..._params,
    });
  }

  /// Edits an item.
  Future<Json> edit(
      {int? owner_id,
      int? item_id,
      String? name,
      String? description,
      int? category_id,
      dynamic price,
      bool? deleted,
      int? main_photo_id,
      List<dynamic>? photo_ids,
      String? url}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (name != null) _params['name'] = name;
    if (description != null) _params['description'] = description;
    if (category_id != null) _params['category_id'] = category_id;
    if (price != null) _params['price'] = price;
    if (deleted != null) _params['deleted'] = deleted;
    if (main_photo_id != null) _params['main_photo_id'] = main_photo_id;
    if (photo_ids != null) _params['photo_ids'] = photo_ids;
    if (url != null) _params['url'] = url;
    return _api.request('market.edit', {
      ..._params,
    });
  }

  /// Edits a collection of items
  Future<Json> editAlbum(
      {int? owner_id,
      int? album_id,
      String? title,
      int? photo_id,
      bool? main_album,
      bool? is_hidden}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (title != null) _params['title'] = title;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (main_album != null) _params['main_album'] = main_album;
    if (is_hidden != null) _params['is_hidden'] = is_hidden;
    return _api.request('market.editAlbum', {
      ..._params,
    });
  }

  /// Chages item comment's text
  Future<Json> editComment(
      {int? owner_id,
      int? comment_id,
      String? message,
      List<dynamic>? attachments}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    return _api.request('market.editComment', {
      ..._params,
    });
  }

  /// Edit order
  Future<Json> editOrder(
      {int? user_id,
      int? order_id,
      String? merchant_comment,
      int? status,
      String? track_number,
      String? payment_status,
      int? delivery_price,
      int? width,
      int? length,
      int? height,
      int? weight}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (order_id != null) _params['order_id'] = order_id;
    if (merchant_comment != null)
      _params['merchant_comment'] = merchant_comment;
    if (status != null) _params['status'] = status;
    if (track_number != null) _params['track_number'] = track_number;
    if (payment_status != null) _params['payment_status'] = payment_status;
    if (delivery_price != null) _params['delivery_price'] = delivery_price;
    if (width != null) _params['width'] = width;
    if (length != null) _params['length'] = length;
    if (height != null) _params['height'] = height;
    if (weight != null) _params['weight'] = weight;
    return _api.request('market.editOrder', {
      ..._params,
    });
  }

  /// Returns items list for a community.
  Future<Json> get(
      {int? owner_id,
      int? album_id,
      int? count,
      int? offset,
      bool? extended,
      String? date_from,
      String? date_to}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    if (extended != null) _params['extended'] = extended;
    if (date_from != null) _params['date_from'] = date_from;
    if (date_to != null) _params['date_to'] = date_to;
    return _api.request('market.get', {
      ..._params,
    });
  }

  /// Returns items album's data
  Future<Json> getAlbumById({int? owner_id, List<dynamic>? album_ids}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_ids != null) _params['album_ids'] = album_ids;
    return _api.request('market.getAlbumById', {
      ..._params,
    });
  }

  /// Returns community's market collections list.
  Future<Json> getAlbums({int? owner_id, int? offset, int? count}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('market.getAlbums', {
      ..._params,
    });
  }

  /// Returns information about market items by their ids.
  Future<Json> getById({List<dynamic>? item_ids, bool? extended}) async {
    var _params = {};
    if (item_ids != null) _params['item_ids'] = item_ids;
    if (extended != null) _params['extended'] = extended;
    return _api.request('market.getById', {
      ..._params,
    });
  }

  /// Returns a list of market categories.
  Future<Json> getCategories({int? count, int? offset}) async {
    var _params = {};
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    return _api.request('market.getCategories', {
      ..._params,
    });
  }

  /// Returns comments list for an item.
  Future<Json> getComments(
      {int? owner_id,
      int? item_id,
      bool? need_likes,
      int? start_comment_id,
      int? offset,
      int? count,
      String? sort,
      bool? extended,
      List<dynamic>? fields}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (need_likes != null) _params['need_likes'] = need_likes;
    if (start_comment_id != null)
      _params['start_comment_id'] = start_comment_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (sort != null) _params['sort'] = sort;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('market.getComments', {
      ..._params,
    });
  }

  /// Get market orders
  Future<Json> getGroupOrders({int? group_id, int? offset, int? count}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('market.getGroupOrders', {
      ..._params,
    });
  }

  /// Get order
  Future<Json> getOrderById(
      {int? user_id, int? order_id, bool? extended}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (order_id != null) _params['order_id'] = order_id;
    if (extended != null) _params['extended'] = extended;
    return _api.request('market.getOrderById', {
      ..._params,
    });
  }

  /// Get market items in the order
  Future<Json> getOrderItems(
      {int? user_id, int? order_id, int? offset, int? count}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (order_id != null) _params['order_id'] = order_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('market.getOrderItems', {
      ..._params,
    });
  }

  /// None
  Future<Json> getOrders(
      {int? offset,
      int? count,
      bool? extended,
      String? date_from,
      String? date_to}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (date_from != null) _params['date_from'] = date_from;
    if (date_to != null) _params['date_to'] = date_to;
    return _api.request('market.getOrders', {
      ..._params,
    });
  }

  /// Removes an item from one or multiple collections.
  Future<Json> removeFromAlbum(
      {int? owner_id, int? item_id, List<dynamic>? album_ids}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (album_ids != null) _params['album_ids'] = album_ids;
    return _api.request('market.removeFromAlbum', {
      ..._params,
    });
  }

  /// Reorders the collections list.
  Future<Json> reorderAlbums(
      {int? owner_id, int? album_id, int? before, int? after}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (before != null) _params['before'] = before;
    if (after != null) _params['after'] = after;
    return _api.request('market.reorderAlbums', {
      ..._params,
    });
  }

  /// Changes item place in a collection.
  Future<Json> reorderItems(
      {int? owner_id,
      int? album_id,
      int? item_id,
      int? before,
      int? after}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (before != null) _params['before'] = before;
    if (after != null) _params['after'] = after;
    return _api.request('market.reorderItems', {
      ..._params,
    });
  }

  /// Sends a complaint to the item.
  Future<Json> report({int? owner_id, int? item_id, int? reason}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (reason != null) _params['reason'] = reason;
    return _api.request('market.report', {
      ..._params,
    });
  }

  /// Sends a complaint to the item's comment.
  Future<Json> reportComment(
      {int? owner_id, int? comment_id, int? reason}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (reason != null) _params['reason'] = reason;
    return _api.request('market.reportComment', {
      ..._params,
    });
  }

  /// Restores recently deleted item
  Future<Json> restore({int? owner_id, int? item_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    return _api.request('market.restore', {
      ..._params,
    });
  }

  /// Restores a recently deleted comment
  Future<Json> restoreComment({int? owner_id, int? comment_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    return _api.request('market.restoreComment', {
      ..._params,
    });
  }

  /// Searches market items in a community's catalog
  Future<Json> search(
      {int? owner_id,
      int? album_id,
      String? q,
      int? price_from,
      int? price_to,
      int? sort,
      int? rev,
      int? offset,
      int? count,
      bool? extended,
      int? status}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (q != null) _params['q'] = q;
    if (price_from != null) _params['price_from'] = price_from;
    if (price_to != null) _params['price_to'] = price_to;
    if (sort != null) _params['sort'] = sort;
    if (rev != null) _params['rev'] = rev;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (status != null) _params['status'] = status;
    return _api.request('market.search', {
      ..._params,
    });
  }
}

class Messages {
  final API _api;

  Messages(this._api);

  /// Adds a new user to a chat.
  Future<Json> addChatUser(
      {int? chat_id, int? user_id, int? visible_messages_count}) async {
    var _params = {};
    if (chat_id != null) _params['chat_id'] = chat_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (visible_messages_count != null)
      _params['visible_messages_count'] = visible_messages_count;
    return _api.request('messages.addChatUser', {
      ..._params,
    });
  }

  /// Allows sending messages from community to the current user.
  Future<Json> allowMessagesFromGroup({int? group_id, String? key}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (key != null) _params['key'] = key;
    return _api.request('messages.allowMessagesFromGroup', {
      ..._params,
    });
  }

  /// Creates a chat with several participants.
  Future<Json> createChat(
      {List<dynamic>? user_ids, String? title, int? group_id}) async {
    var _params = {};
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (title != null) _params['title'] = title;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.createChat', {
      ..._params,
    });
  }

  /// Deletes one or more messages.
  Future<Json> delete(
      {List<dynamic>? message_ids,
      bool? spam,
      int? group_id,
      bool? delete_for_all,
      int? peer_id,
      List<dynamic>? conversation_message_ids}) async {
    var _params = {};
    if (message_ids != null) _params['message_ids'] = message_ids;
    if (spam != null) _params['spam'] = spam;
    if (group_id != null) _params['group_id'] = group_id;
    if (delete_for_all != null) _params['delete_for_all'] = delete_for_all;
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (conversation_message_ids != null)
      _params['conversation_message_ids'] = conversation_message_ids;
    return _api.request('messages.delete', {
      ..._params,
    });
  }

  /// Deletes a chat's cover picture.
  Future<Json> deleteChatPhoto({int? chat_id, int? group_id}) async {
    var _params = {};
    if (chat_id != null) _params['chat_id'] = chat_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.deleteChatPhoto', {
      ..._params,
    });
  }

  /// Deletes all private messages in a conversation.
  Future<Json> deleteConversation(
      {int? user_id, int? peer_id, int? group_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.deleteConversation', {
      ..._params,
    });
  }

  /// Denies sending message from community to the current user.
  Future<Json> denyMessagesFromGroup({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.denyMessagesFromGroup', {
      ..._params,
    });
  }

  /// Edits the message.
  Future<Json> edit(
      {int? peer_id,
      String? message,
      dynamic lat,
      dynamic long,
      String? attachment,
      bool? keep_forward_messages,
      bool? keep_snippets,
      int? group_id,
      bool? dont_parse_links,
      int? message_id,
      int? conversation_message_id,
      String? template,
      String? keyboard}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (message != null) _params['message'] = message;
    if (lat != null) _params['lat'] = lat;
    if (long != null) _params['long'] = long;
    if (attachment != null) _params['attachment'] = attachment;
    if (keep_forward_messages != null)
      _params['keep_forward_messages'] = keep_forward_messages;
    if (keep_snippets != null) _params['keep_snippets'] = keep_snippets;
    if (group_id != null) _params['group_id'] = group_id;
    if (dont_parse_links != null)
      _params['dont_parse_links'] = dont_parse_links;
    if (message_id != null) _params['message_id'] = message_id;
    if (conversation_message_id != null)
      _params['conversation_message_id'] = conversation_message_id;
    if (template != null) _params['template'] = template;
    if (keyboard != null) _params['keyboard'] = keyboard;
    return _api.request('messages.edit', {
      ..._params,
    });
  }

  /// Edits the title of a chat.
  Future<Json> editChat({int? chat_id, String? title}) async {
    var _params = {};
    if (chat_id != null) _params['chat_id'] = chat_id;
    if (title != null) _params['title'] = title;
    return _api.request('messages.editChat', {
      ..._params,
    });
  }

  /// Returns messages by their IDs within the conversation.
  Future<Json> getByConversationMessageId(
      {int? peer_id,
      List<dynamic>? conversation_message_ids,
      bool? extended,
      List<dynamic>? fields,
      int? group_id}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (conversation_message_ids != null)
      _params['conversation_message_ids'] = conversation_message_ids;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.getByConversationMessageId', {
      ..._params,
    });
  }

  /// Returns messages by their IDs.
  Future<Json> getById(
      {List<dynamic>? message_ids,
      int? preview_length,
      bool? extended,
      List<dynamic>? fields,
      int? group_id}) async {
    var _params = {};
    if (message_ids != null) _params['message_ids'] = message_ids;
    if (preview_length != null) _params['preview_length'] = preview_length;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.getById', {
      ..._params,
    });
  }

  /// None
  Future<Json> getChatPreview(
      {int? peer_id, String? link, List<dynamic>? fields}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (link != null) _params['link'] = link;
    if (fields != null) _params['fields'] = fields;
    return _api.request('messages.getChatPreview', {
      ..._params,
    });
  }

  /// Returns a list of IDs of users participating in a chat.
  Future<Json> getConversationMembers(
      {int? peer_id, List<dynamic>? fields, int? group_id}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (fields != null) _params['fields'] = fields;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.getConversationMembers', {
      ..._params,
    });
  }

  /// Returns a list of the current user's conversations.
  Future<Json> getConversations(
      {int? offset,
      int? count,
      String? filter,
      bool? extended,
      int? start_message_id,
      List<dynamic>? fields,
      int? group_id}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (filter != null) _params['filter'] = filter;
    if (extended != null) _params['extended'] = extended;
    if (start_message_id != null)
      _params['start_message_id'] = start_message_id;
    if (fields != null) _params['fields'] = fields;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.getConversations', {
      ..._params,
    });
  }

  /// Returns conversations by their IDs
  Future<Json> getConversationsById(
      {List<dynamic>? peer_ids,
      bool? extended,
      List<dynamic>? fields,
      int? group_id}) async {
    var _params = {};
    if (peer_ids != null) _params['peer_ids'] = peer_ids;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.getConversationsById', {
      ..._params,
    });
  }

  /// Returns message history for the specified user or group chat.
  Future<Json> getHistory(
      {int? offset,
      int? count,
      int? user_id,
      int? peer_id,
      int? start_message_id,
      int? rev,
      bool? extended,
      List<dynamic>? fields,
      int? group_id}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (user_id != null) _params['user_id'] = user_id;
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (start_message_id != null)
      _params['start_message_id'] = start_message_id;
    if (rev != null) _params['rev'] = rev;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.getHistory', {
      ..._params,
    });
  }

  /// Returns media files from the dialog or group chat.
  Future<Json> getHistoryAttachments(
      {int? peer_id,
      String? media_type,
      String? start_from,
      int? count,
      bool? photo_sizes,
      List<dynamic>? fields,
      int? group_id,
      bool? preserve_order,
      int? max_forwards_level}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (media_type != null) _params['media_type'] = media_type;
    if (start_from != null) _params['start_from'] = start_from;
    if (count != null) _params['count'] = count;
    if (photo_sizes != null) _params['photo_sizes'] = photo_sizes;
    if (fields != null) _params['fields'] = fields;
    if (group_id != null) _params['group_id'] = group_id;
    if (preserve_order != null) _params['preserve_order'] = preserve_order;
    if (max_forwards_level != null)
      _params['max_forwards_level'] = max_forwards_level;
    return _api.request('messages.getHistoryAttachments', {
      ..._params,
    });
  }

  /// Returns a list of user's important messages.
  Future<Json> getImportantMessages(
      {int? count,
      int? offset,
      int? start_message_id,
      int? preview_length,
      List<dynamic>? fields,
      bool? extended,
      int? group_id}) async {
    var _params = {};
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    if (start_message_id != null)
      _params['start_message_id'] = start_message_id;
    if (preview_length != null) _params['preview_length'] = preview_length;
    if (fields != null) _params['fields'] = fields;
    if (extended != null) _params['extended'] = extended;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.getImportantMessages', {
      ..._params,
    });
  }

  /// None
  Future<Json> getIntentUsers(
      {String? intent,
      int? subscribe_id,
      int? offset,
      int? count,
      bool? extended,
      List<dynamic>? name_case,
      List<dynamic>? fields}) async {
    var _params = {};
    if (intent != null) _params['intent'] = intent;
    if (subscribe_id != null) _params['subscribe_id'] = subscribe_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (name_case != null) _params['name_case'] = name_case;
    if (fields != null) _params['fields'] = fields;
    return _api.request('messages.getIntentUsers', {
      ..._params,
    });
  }

  /// None
  Future<Json> getInviteLink({int? peer_id, bool? reset, int? group_id}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (reset != null) _params['reset'] = reset;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.getInviteLink', {
      ..._params,
    });
  }

  /// Returns a user's current status and date of last activity.
  Future<Json> getLastActivity({int? user_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('messages.getLastActivity', {
      ..._params,
    });
  }

  /// Returns updates in user's private messages.
  Future<Json> getLongPollHistory(
      {int? ts,
      int? pts,
      int? preview_length,
      bool? onlines,
      List<dynamic>? fields,
      int? events_limit,
      int? msgs_limit,
      int? max_msg_id,
      int? group_id,
      int? lp_version,
      int? last_n,
      bool? credentials}) async {
    var _params = {};
    if (ts != null) _params['ts'] = ts;
    if (pts != null) _params['pts'] = pts;
    if (preview_length != null) _params['preview_length'] = preview_length;
    if (onlines != null) _params['onlines'] = onlines;
    if (fields != null) _params['fields'] = fields;
    if (events_limit != null) _params['events_limit'] = events_limit;
    if (msgs_limit != null) _params['msgs_limit'] = msgs_limit;
    if (max_msg_id != null) _params['max_msg_id'] = max_msg_id;
    if (group_id != null) _params['group_id'] = group_id;
    if (lp_version != null) _params['lp_version'] = lp_version;
    if (last_n != null) _params['last_n'] = last_n;
    if (credentials != null) _params['credentials'] = credentials;
    return _api.request('messages.getLongPollHistory', {
      ..._params,
    });
  }

  /// Returns data required for connection to a Long Poll server.
  Future<Json> getLongPollServer(
      {bool? need_pts, int? group_id, int? lp_version}) async {
    var _params = {};
    if (need_pts != null) _params['need_pts'] = need_pts;
    if (group_id != null) _params['group_id'] = group_id;
    if (lp_version != null) _params['lp_version'] = lp_version;
    return _api.request('messages.getLongPollServer', {
      ..._params,
    });
  }

  /// Returns information whether sending messages from the community to current user is allowed.
  Future<Json> isMessagesFromGroupAllowed({int? group_id, int? user_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('messages.isMessagesFromGroupAllowed', {
      ..._params,
    });
  }

  /// None
  Future<Json> joinChatByInviteLink({String? link}) async {
    var _params = {};
    if (link != null) _params['link'] = link;
    return _api.request('messages.joinChatByInviteLink', {
      ..._params,
    });
  }

  /// Marks and unmarks conversations as unanswered.
  Future<Json> markAsAnsweredConversation(
      {int? peer_id, bool? answered, int? group_id}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (answered != null) _params['answered'] = answered;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.markAsAnsweredConversation', {
      ..._params,
    });
  }

  /// Marks and unmarks messages as important (starred).
  Future<Json> markAsImportant(
      {List<dynamic>? message_ids, int? important}) async {
    var _params = {};
    if (message_ids != null) _params['message_ids'] = message_ids;
    if (important != null) _params['important'] = important;
    return _api.request('messages.markAsImportant', {
      ..._params,
    });
  }

  /// Marks and unmarks conversations as important.
  Future<Json> markAsImportantConversation(
      {int? peer_id, bool? important, int? group_id}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (important != null) _params['important'] = important;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.markAsImportantConversation', {
      ..._params,
    });
  }

  /// Marks messages as read.
  Future<Json> markAsRead(
      {List<dynamic>? message_ids,
      int? peer_id,
      int? start_message_id,
      int? group_id,
      bool? mark_conversation_as_read}) async {
    var _params = {};
    if (message_ids != null) _params['message_ids'] = message_ids;
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (start_message_id != null)
      _params['start_message_id'] = start_message_id;
    if (group_id != null) _params['group_id'] = group_id;
    if (mark_conversation_as_read != null)
      _params['mark_conversation_as_read'] = mark_conversation_as_read;
    return _api.request('messages.markAsRead', {
      ..._params,
    });
  }

  /// Pin a message.
  Future<Json> pin(
      {int? peer_id, int? message_id, int? conversation_message_id}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (message_id != null) _params['message_id'] = message_id;
    if (conversation_message_id != null)
      _params['conversation_message_id'] = conversation_message_id;
    return _api.request('messages.pin', {
      ..._params,
    });
  }

  /// Allows the current user to leave a chat or, if the current user started the chat, allows the user to remove another user from the chat.
  Future<Json> removeChatUser(
      {int? chat_id, int? user_id, int? member_id}) async {
    var _params = {};
    if (chat_id != null) _params['chat_id'] = chat_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (member_id != null) _params['member_id'] = member_id;
    return _api.request('messages.removeChatUser', {
      ..._params,
    });
  }

  /// Restores a deleted message.
  Future<Json> restore({int? message_id, int? group_id}) async {
    var _params = {};
    if (message_id != null) _params['message_id'] = message_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.restore', {
      ..._params,
    });
  }

  /// Returns a list of the current user's private messages that match search criteria.
  Future<Json> search(
      {String? q,
      int? peer_id,
      int? date,
      int? preview_length,
      int? offset,
      int? count,
      bool? extended,
      List<dynamic>? fields,
      int? group_id}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (date != null) _params['date'] = date;
    if (preview_length != null) _params['preview_length'] = preview_length;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.search', {
      ..._params,
    });
  }

  /// Returns a list of the current user's conversations that match search criteria.
  Future<Json> searchConversations(
      {String? q,
      int? count,
      bool? extended,
      List<dynamic>? fields,
      int? group_id}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.searchConversations', {
      ..._params,
    });
  }

  /// Sends a message.
  Future<Json> send(
      {int? user_id,
      int? random_id,
      int? peer_id,
      List<dynamic>? peer_ids,
      String? domain,
      int? chat_id,
      List<dynamic>? user_ids,
      String? message,
      dynamic lat,
      dynamic long,
      String? attachment,
      int? reply_to,
      List<dynamic>? forward_messages,
      String? forward,
      int? sticker_id,
      int? group_id,
      String? keyboard,
      String? template,
      String? payload,
      String? content_source,
      bool? dont_parse_links,
      bool? disable_mentions,
      String? intent,
      int? subscribe_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (random_id != null) _params['random_id'] = random_id;
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (peer_ids != null) _params['peer_ids'] = peer_ids;
    if (domain != null) _params['domain'] = domain;
    if (chat_id != null) _params['chat_id'] = chat_id;
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (message != null) _params['message'] = message;
    if (lat != null) _params['lat'] = lat;
    if (long != null) _params['long'] = long;
    if (attachment != null) _params['attachment'] = attachment;
    if (reply_to != null) _params['reply_to'] = reply_to;
    if (forward_messages != null)
      _params['forward_messages'] = forward_messages;
    if (forward != null) _params['forward'] = forward;
    if (sticker_id != null) _params['sticker_id'] = sticker_id;
    if (group_id != null) _params['group_id'] = group_id;
    if (keyboard != null) _params['keyboard'] = keyboard;
    if (template != null) _params['template'] = template;
    if (payload != null) _params['payload'] = payload;
    if (content_source != null) _params['content_source'] = content_source;
    if (dont_parse_links != null)
      _params['dont_parse_links'] = dont_parse_links;
    if (disable_mentions != null)
      _params['disable_mentions'] = disable_mentions;
    if (intent != null) _params['intent'] = intent;
    if (subscribe_id != null) _params['subscribe_id'] = subscribe_id;
    return _api.request('messages.send', {
      ..._params,
    });
  }

  /// None
  Future<Json> sendMessageEventAnswer(
      {String? event_id,
      int? user_id,
      int? peer_id,
      String? event_data}) async {
    var _params = {};
    if (event_id != null) _params['event_id'] = event_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (event_data != null) _params['event_data'] = event_data;
    return _api.request('messages.sendMessageEventAnswer', {
      ..._params,
    });
  }

  /// Changes the status of a user as typing in a conversation.
  Future<Json> setActivity(
      {int? user_id, String? type, int? peer_id, int? group_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (type != null) _params['type'] = type;
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.setActivity', {
      ..._params,
    });
  }

  /// Sets a previously-uploaded picture as the cover picture of a chat.
  Future<Json> setChatPhoto({String? file}) async {
    var _params = {};
    if (file != null) _params['file'] = file;
    return _api.request('messages.setChatPhoto', {
      ..._params,
    });
  }

  /// None
  Future<Json> unpin({int? peer_id, int? group_id}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('messages.unpin', {
      ..._params,
    });
  }
}

class Newsfeed {
  final API _api;

  Newsfeed(this._api);

  /// Prevents news from specified users and communities from appearing in the current user's newsfeed.
  Future<Json> addBan(
      {List<dynamic>? user_ids, List<dynamic>? group_ids}) async {
    var _params = {};
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (group_ids != null) _params['group_ids'] = group_ids;
    return _api.request('newsfeed.addBan', {
      ..._params,
    });
  }

  /// Allows news from previously banned users and communities to be shown in the current user's newsfeed.
  Future<Json> deleteBan(
      {List<dynamic>? user_ids, List<dynamic>? group_ids}) async {
    var _params = {};
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (group_ids != null) _params['group_ids'] = group_ids;
    return _api.request('newsfeed.deleteBan', {
      ..._params,
    });
  }

  /// None
  Future<Json> deleteList({int? list_id}) async {
    var _params = {};
    if (list_id != null) _params['list_id'] = list_id;
    return _api.request('newsfeed.deleteList', {
      ..._params,
    });
  }

  /// Returns data required to show newsfeed for the current user.
  Future<Json> get(
      {List<dynamic>? filters,
      bool? return_banned,
      int? start_time,
      int? end_time,
      int? max_photos,
      String? source_ids,
      String? start_from,
      int? count,
      List<dynamic>? fields,
      String? section}) async {
    var _params = {};
    if (filters != null) _params['filters'] = filters;
    if (return_banned != null) _params['return_banned'] = return_banned;
    if (start_time != null) _params['start_time'] = start_time;
    if (end_time != null) _params['end_time'] = end_time;
    if (max_photos != null) _params['max_photos'] = max_photos;
    if (source_ids != null) _params['source_ids'] = source_ids;
    if (start_from != null) _params['start_from'] = start_from;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    if (section != null) _params['section'] = section;
    return _api.request('newsfeed.get', {
      ..._params,
    });
  }

  /// Returns a list of users and communities banned from the current user's newsfeed.
  Future<Json> getBanned(
      {bool? extended, List<dynamic>? fields, String? name_case}) async {
    var _params = {};
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    return _api.request('newsfeed.getBanned', {
      ..._params,
    });
  }

  /// Returns a list of comments in the current user's newsfeed.
  Future<Json> getComments(
      {int? count,
      List<dynamic>? filters,
      String? reposts,
      int? start_time,
      int? end_time,
      int? last_comments_count,
      String? start_from,
      List<dynamic>? fields}) async {
    var _params = {};
    if (count != null) _params['count'] = count;
    if (filters != null) _params['filters'] = filters;
    if (reposts != null) _params['reposts'] = reposts;
    if (start_time != null) _params['start_time'] = start_time;
    if (end_time != null) _params['end_time'] = end_time;
    if (last_comments_count != null)
      _params['last_comments_count'] = last_comments_count;
    if (start_from != null) _params['start_from'] = start_from;
    if (fields != null) _params['fields'] = fields;
    return _api.request('newsfeed.getComments', {
      ..._params,
    });
  }

  /// Returns a list of newsfeeds followed by the current user.
  Future<Json> getLists({List<dynamic>? list_ids, bool? extended}) async {
    var _params = {};
    if (list_ids != null) _params['list_ids'] = list_ids;
    if (extended != null) _params['extended'] = extended;
    return _api.request('newsfeed.getLists', {
      ..._params,
    });
  }

  /// Returns a list of posts on user walls in which the current user is mentioned.
  Future<Json> getMentions(
      {int? owner_id,
      int? start_time,
      int? end_time,
      int? offset,
      int? count}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (start_time != null) _params['start_time'] = start_time;
    if (end_time != null) _params['end_time'] = end_time;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('newsfeed.getMentions', {
      ..._params,
    });
  }

  /// , Returns a list of newsfeeds recommended to the current user.
  Future<Json> getRecommended(
      {int? start_time,
      int? end_time,
      int? max_photos,
      String? start_from,
      int? count,
      List<dynamic>? fields}) async {
    var _params = {};
    if (start_time != null) _params['start_time'] = start_time;
    if (end_time != null) _params['end_time'] = end_time;
    if (max_photos != null) _params['max_photos'] = max_photos;
    if (start_from != null) _params['start_from'] = start_from;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    return _api.request('newsfeed.getRecommended', {
      ..._params,
    });
  }

  /// Returns communities and users that current user is suggested to follow.
  Future<Json> getSuggestedSources(
      {int? offset, int? count, bool? shuffle, List<dynamic>? fields}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (shuffle != null) _params['shuffle'] = shuffle;
    if (fields != null) _params['fields'] = fields;
    return _api.request('newsfeed.getSuggestedSources', {
      ..._params,
    });
  }

  /// Hides an item from the newsfeed.
  Future<Json> ignoreItem({String? type, int? owner_id, int? item_id}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    return _api.request('newsfeed.ignoreItem', {
      ..._params,
    });
  }

  /// Creates and edits user newsfeed lists
  Future<Json> saveList(
      {int? list_id,
      String? title,
      List<dynamic>? source_ids,
      bool? no_reposts}) async {
    var _params = {};
    if (list_id != null) _params['list_id'] = list_id;
    if (title != null) _params['title'] = title;
    if (source_ids != null) _params['source_ids'] = source_ids;
    if (no_reposts != null) _params['no_reposts'] = no_reposts;
    return _api.request('newsfeed.saveList', {
      ..._params,
    });
  }

  /// Returns search results by statuses.
  Future<Json> search(
      {String? q,
      bool? extended,
      int? count,
      dynamic latitude,
      dynamic longitude,
      int? start_time,
      int? end_time,
      String? start_from,
      List<dynamic>? fields}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (extended != null) _params['extended'] = extended;
    if (count != null) _params['count'] = count;
    if (latitude != null) _params['latitude'] = latitude;
    if (longitude != null) _params['longitude'] = longitude;
    if (start_time != null) _params['start_time'] = start_time;
    if (end_time != null) _params['end_time'] = end_time;
    if (start_from != null) _params['start_from'] = start_from;
    if (fields != null) _params['fields'] = fields;
    return _api.request('newsfeed.search', {
      ..._params,
    });
  }

  /// Returns a hidden item to the newsfeed.
  Future<Json> unignoreItem(
      {String? type, int? owner_id, int? item_id, String? track_code}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    if (track_code != null) _params['track_code'] = track_code;
    return _api.request('newsfeed.unignoreItem', {
      ..._params,
    });
  }

  /// Unsubscribes the current user from specified newsfeeds.
  Future<Json> unsubscribe({String? type, int? owner_id, int? item_id}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (item_id != null) _params['item_id'] = item_id;
    return _api.request('newsfeed.unsubscribe', {
      ..._params,
    });
  }
}

class Notes {
  final API _api;

  Notes(this._api);

  /// Creates a new note for the current user.
  Future<Json> add(
      {String? title,
      String? text,
      List<dynamic>? privacy_view,
      List<dynamic>? privacy_comment}) async {
    var _params = {};
    if (title != null) _params['title'] = title;
    if (text != null) _params['text'] = text;
    if (privacy_view != null) _params['privacy_view'] = privacy_view;
    if (privacy_comment != null) _params['privacy_comment'] = privacy_comment;
    return _api.request('notes.add', {
      ..._params,
    });
  }

  /// Adds a new comment on a note.
  Future<Json> createComment(
      {int? note_id,
      int? owner_id,
      int? reply_to,
      String? message,
      String? guid}) async {
    var _params = {};
    if (note_id != null) _params['note_id'] = note_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (reply_to != null) _params['reply_to'] = reply_to;
    if (message != null) _params['message'] = message;
    if (guid != null) _params['guid'] = guid;
    return _api.request('notes.createComment', {
      ..._params,
    });
  }

  /// Deletes a note of the current user.
  Future<Json> delete({int? note_id}) async {
    var _params = {};
    if (note_id != null) _params['note_id'] = note_id;
    return _api.request('notes.delete', {
      ..._params,
    });
  }

  /// Deletes a comment on a note.
  Future<Json> deleteComment({int? comment_id, int? owner_id}) async {
    var _params = {};
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('notes.deleteComment', {
      ..._params,
    });
  }

  /// Edits a note of the current user.
  Future<Json> edit(
      {int? note_id,
      String? title,
      String? text,
      List<dynamic>? privacy_view,
      List<dynamic>? privacy_comment}) async {
    var _params = {};
    if (note_id != null) _params['note_id'] = note_id;
    if (title != null) _params['title'] = title;
    if (text != null) _params['text'] = text;
    if (privacy_view != null) _params['privacy_view'] = privacy_view;
    if (privacy_comment != null) _params['privacy_comment'] = privacy_comment;
    return _api.request('notes.edit', {
      ..._params,
    });
  }

  /// Edits a comment on a note.
  Future<Json> editComment(
      {int? comment_id, int? owner_id, String? message}) async {
    var _params = {};
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (message != null) _params['message'] = message;
    return _api.request('notes.editComment', {
      ..._params,
    });
  }

  /// Returns a list of notes created by a user.
  Future<Json> get(
      {List<dynamic>? note_ids,
      int? user_id,
      int? offset,
      int? count,
      int? sort}) async {
    var _params = {};
    if (note_ids != null) _params['note_ids'] = note_ids;
    if (user_id != null) _params['user_id'] = user_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (sort != null) _params['sort'] = sort;
    return _api.request('notes.get', {
      ..._params,
    });
  }

  /// Returns a note by its ID.
  Future<Json> getById({int? note_id, int? owner_id, bool? need_wiki}) async {
    var _params = {};
    if (note_id != null) _params['note_id'] = note_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (need_wiki != null) _params['need_wiki'] = need_wiki;
    return _api.request('notes.getById', {
      ..._params,
    });
  }

  /// Returns a list of comments on a note.
  Future<Json> getComments(
      {int? note_id, int? owner_id, int? sort, int? offset, int? count}) async {
    var _params = {};
    if (note_id != null) _params['note_id'] = note_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (sort != null) _params['sort'] = sort;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('notes.getComments', {
      ..._params,
    });
  }

  /// Restores a deleted comment on a note.
  Future<Json> restoreComment({int? comment_id, int? owner_id}) async {
    var _params = {};
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('notes.restoreComment', {
      ..._params,
    });
  }
}

class Notifications {
  final API _api;

  Notifications(this._api);

  /// Returns a list of notifications about other users' feedback to the current user's wall posts.
  Future<Json> get(
      {int? count,
      String? start_from,
      List<dynamic>? filters,
      int? start_time,
      int? end_time}) async {
    var _params = {};
    if (count != null) _params['count'] = count;
    if (start_from != null) _params['start_from'] = start_from;
    if (filters != null) _params['filters'] = filters;
    if (start_time != null) _params['start_time'] = start_time;
    if (end_time != null) _params['end_time'] = end_time;
    return _api.request('notifications.get', {
      ..._params,
    });
  }

  /// Resets the counter of new notifications about other users' feedback to the current user's wall posts.
  Future<Json> markAsViewed() async {
    var _params = {};

    return _api.request('notifications.markAsViewed', {
      ..._params,
    });
  }

  /// None
  Future<Json> sendMessage(
      {List<dynamic>? user_ids,
      String? message,
      String? fragment,
      int? group_id,
      int? random_id,
      String? sending_mode}) async {
    var _params = {};
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (message != null) _params['message'] = message;
    if (fragment != null) _params['fragment'] = fragment;
    if (group_id != null) _params['group_id'] = group_id;
    if (random_id != null) _params['random_id'] = random_id;
    if (sending_mode != null) _params['sending_mode'] = sending_mode;
    return _api.request('notifications.sendMessage', {
      ..._params,
    });
  }
}

class Orders {
  final API _api;

  Orders(this._api);

  /// None
  Future<Json> cancelSubscription(
      {int? user_id, int? subscription_id, bool? pending_cancel}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (subscription_id != null) _params['subscription_id'] = subscription_id;
    if (pending_cancel != null) _params['pending_cancel'] = pending_cancel;
    return _api.request('orders.cancelSubscription', {
      ..._params,
    });
  }

  /// Changes order status.
  Future<Json> changeState(
      {int? order_id,
      String? action,
      int? app_order_id,
      bool? test_mode}) async {
    var _params = {};
    if (order_id != null) _params['order_id'] = order_id;
    if (action != null) _params['action'] = action;
    if (app_order_id != null) _params['app_order_id'] = app_order_id;
    if (test_mode != null) _params['test_mode'] = test_mode;
    return _api.request('orders.changeState', {
      ..._params,
    });
  }

  /// Returns a list of orders.
  Future<Json> get({int? offset, int? count, bool? test_mode}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (test_mode != null) _params['test_mode'] = test_mode;
    return _api.request('orders.get', {
      ..._params,
    });
  }

  /// None
  Future<Json> getAmount({int? user_id, List<dynamic>? votes}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (votes != null) _params['votes'] = votes;
    return _api.request('orders.getAmount', {
      ..._params,
    });
  }

  /// Returns information about orders by their IDs.
  Future<Json> getById(
      {int? order_id, List<dynamic>? order_ids, bool? test_mode}) async {
    var _params = {};
    if (order_id != null) _params['order_id'] = order_id;
    if (order_ids != null) _params['order_ids'] = order_ids;
    if (test_mode != null) _params['test_mode'] = test_mode;
    return _api.request('orders.getById', {
      ..._params,
    });
  }

  /// None
  Future<Json> getUserSubscriptionById(
      {int? user_id, int? subscription_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (subscription_id != null) _params['subscription_id'] = subscription_id;
    return _api.request('orders.getUserSubscriptionById', {
      ..._params,
    });
  }

  /// None
  Future<Json> getUserSubscriptions({int? user_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('orders.getUserSubscriptions', {
      ..._params,
    });
  }

  /// None
  Future<Json> updateSubscription(
      {int? user_id, int? subscription_id, int? price}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (subscription_id != null) _params['subscription_id'] = subscription_id;
    if (price != null) _params['price'] = price;
    return _api.request('orders.updateSubscription', {
      ..._params,
    });
  }
}

class Pages {
  final API _api;

  Pages(this._api);

  /// Allows to clear the cache of particular 'external' pages which may be attached to VK posts.
  Future<Json> clearCache({String? url}) async {
    var _params = {};
    if (url != null) _params['url'] = url;
    return _api.request('pages.clearCache', {
      ..._params,
    });
  }

  /// Returns information about a wiki page.
  Future<Json> get(
      {int? owner_id,
      int? page_id,
      bool? global,
      bool? site_preview,
      String? title,
      bool? need_source,
      bool? need_html}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (page_id != null) _params['page_id'] = page_id;
    if (global != null) _params['global'] = global;
    if (site_preview != null) _params['site_preview'] = site_preview;
    if (title != null) _params['title'] = title;
    if (need_source != null) _params['need_source'] = need_source;
    if (need_html != null) _params['need_html'] = need_html;
    return _api.request('pages.get', {
      ..._params,
    });
  }

  /// Returns a list of all previous versions of a wiki page.
  Future<Json> getHistory({int? page_id, int? group_id, int? user_id}) async {
    var _params = {};
    if (page_id != null) _params['page_id'] = page_id;
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('pages.getHistory', {
      ..._params,
    });
  }

  /// Returns a list of wiki pages in a group.
  Future<Json> getTitles({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('pages.getTitles', {
      ..._params,
    });
  }

  /// Returns the text of one of the previous versions of a wiki page.
  Future<Json> getVersion(
      {int? version_id, int? group_id, int? user_id, bool? need_html}) async {
    var _params = {};
    if (version_id != null) _params['version_id'] = version_id;
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (need_html != null) _params['need_html'] = need_html;
    return _api.request('pages.getVersion', {
      ..._params,
    });
  }

  /// Returns HTML representation of the wiki markup.
  Future<Json> parseWiki({String? text, int? group_id}) async {
    var _params = {};
    if (text != null) _params['text'] = text;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('pages.parseWiki', {
      ..._params,
    });
  }

  /// Saves the text of a wiki page.
  Future<Json> save(
      {String? text,
      int? page_id,
      int? group_id,
      int? user_id,
      String? title}) async {
    var _params = {};
    if (text != null) _params['text'] = text;
    if (page_id != null) _params['page_id'] = page_id;
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (title != null) _params['title'] = title;
    return _api.request('pages.save', {
      ..._params,
    });
  }

  /// Saves modified read and edit access settings for a wiki page.
  Future<Json> saveAccess(
      {int? page_id, int? group_id, int? user_id, int? view, int? edit}) async {
    var _params = {};
    if (page_id != null) _params['page_id'] = page_id;
    if (group_id != null) _params['group_id'] = group_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (view != null) _params['view'] = view;
    if (edit != null) _params['edit'] = edit;
    return _api.request('pages.saveAccess', {
      ..._params,
    });
  }
}

class Photos {
  final API _api;

  Photos(this._api);

  /// Confirms a tag on a photo.
  Future<Json> confirmTag(
      {int? owner_id, String? photo_id, int? tag_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (tag_id != null) _params['tag_id'] = tag_id;
    return _api.request('photos.confirmTag', {
      ..._params,
    });
  }

  /// Allows to copy a photo to the 'Saved photos' album
  Future<Json> copy({int? owner_id, int? photo_id, String? access_key}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (access_key != null) _params['access_key'] = access_key;
    return _api.request('photos.copy', {
      ..._params,
    });
  }

  /// Creates an empty photo album.
  Future<Json> createAlbum(
      {String? title,
      int? group_id,
      String? description,
      List<dynamic>? privacy_view,
      List<dynamic>? privacy_comment,
      bool? upload_by_admins_only,
      bool? comments_disabled}) async {
    var _params = {};
    if (title != null) _params['title'] = title;
    if (group_id != null) _params['group_id'] = group_id;
    if (description != null) _params['description'] = description;
    if (privacy_view != null) _params['privacy_view'] = privacy_view;
    if (privacy_comment != null) _params['privacy_comment'] = privacy_comment;
    if (upload_by_admins_only != null)
      _params['upload_by_admins_only'] = upload_by_admins_only;
    if (comments_disabled != null)
      _params['comments_disabled'] = comments_disabled;
    return _api.request('photos.createAlbum', {
      ..._params,
    });
  }

  /// Adds a new comment on the photo.
  Future<Json> createComment(
      {int? owner_id,
      int? photo_id,
      String? message,
      List<dynamic>? attachments,
      bool? from_group,
      int? reply_to_comment,
      int? sticker_id,
      String? access_key,
      String? guid}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    if (from_group != null) _params['from_group'] = from_group;
    if (reply_to_comment != null)
      _params['reply_to_comment'] = reply_to_comment;
    if (sticker_id != null) _params['sticker_id'] = sticker_id;
    if (access_key != null) _params['access_key'] = access_key;
    if (guid != null) _params['guid'] = guid;
    return _api.request('photos.createComment', {
      ..._params,
    });
  }

  /// Deletes a photo.
  Future<Json> delete({int? owner_id, int? photo_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    return _api.request('photos.delete', {
      ..._params,
    });
  }

  /// Deletes a photo album belonging to the current user.
  Future<Json> deleteAlbum({int? album_id, int? group_id}) async {
    var _params = {};
    if (album_id != null) _params['album_id'] = album_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('photos.deleteAlbum', {
      ..._params,
    });
  }

  /// Deletes a comment on the photo.
  Future<Json> deleteComment({int? owner_id, int? comment_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    return _api.request('photos.deleteComment', {
      ..._params,
    });
  }

  /// Edits the caption of a photo.
  Future<Json> edit(
      {int? owner_id,
      int? photo_id,
      String? caption,
      dynamic latitude,
      dynamic longitude,
      String? place_str,
      String? foursquare_id,
      bool? delete_place}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (caption != null) _params['caption'] = caption;
    if (latitude != null) _params['latitude'] = latitude;
    if (longitude != null) _params['longitude'] = longitude;
    if (place_str != null) _params['place_str'] = place_str;
    if (foursquare_id != null) _params['foursquare_id'] = foursquare_id;
    if (delete_place != null) _params['delete_place'] = delete_place;
    return _api.request('photos.edit', {
      ..._params,
    });
  }

  /// Edits information about a photo album.
  Future<Json> editAlbum(
      {int? album_id,
      String? title,
      String? description,
      int? owner_id,
      List<dynamic>? privacy_view,
      List<dynamic>? privacy_comment,
      bool? upload_by_admins_only,
      bool? comments_disabled}) async {
    var _params = {};
    if (album_id != null) _params['album_id'] = album_id;
    if (title != null) _params['title'] = title;
    if (description != null) _params['description'] = description;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (privacy_view != null) _params['privacy_view'] = privacy_view;
    if (privacy_comment != null) _params['privacy_comment'] = privacy_comment;
    if (upload_by_admins_only != null)
      _params['upload_by_admins_only'] = upload_by_admins_only;
    if (comments_disabled != null)
      _params['comments_disabled'] = comments_disabled;
    return _api.request('photos.editAlbum', {
      ..._params,
    });
  }

  /// Edits a comment on a photo.
  Future<Json> editComment(
      {int? owner_id,
      int? comment_id,
      String? message,
      List<dynamic>? attachments}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    return _api.request('photos.editComment', {
      ..._params,
    });
  }

  /// Returns a list of a user's or community's photos.
  Future<Json> get(
      {int? owner_id,
      String? album_id,
      List<dynamic>? photo_ids,
      bool? rev,
      bool? extended,
      String? feed_type,
      int? feed,
      bool? photo_sizes,
      int? offset,
      int? count}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (photo_ids != null) _params['photo_ids'] = photo_ids;
    if (rev != null) _params['rev'] = rev;
    if (extended != null) _params['extended'] = extended;
    if (feed_type != null) _params['feed_type'] = feed_type;
    if (feed != null) _params['feed'] = feed;
    if (photo_sizes != null) _params['photo_sizes'] = photo_sizes;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('photos.get', {
      ..._params,
    });
  }

  /// Returns a list of a user's or community's photo albums.
  Future<Json> getAlbums(
      {int? owner_id,
      List<dynamic>? album_ids,
      int? offset,
      int? count,
      bool? need_system,
      bool? need_covers,
      bool? photo_sizes}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_ids != null) _params['album_ids'] = album_ids;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (need_system != null) _params['need_system'] = need_system;
    if (need_covers != null) _params['need_covers'] = need_covers;
    if (photo_sizes != null) _params['photo_sizes'] = photo_sizes;
    return _api.request('photos.getAlbums', {
      ..._params,
    });
  }

  /// Returns the number of photo albums belonging to a user or community.
  Future<Json> getAlbumsCount({int? user_id, int? group_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('photos.getAlbumsCount', {
      ..._params,
    });
  }

  /// Returns a list of photos belonging to a user or community, in reverse chronological order.
  Future<Json> getAll(
      {int? owner_id,
      bool? extended,
      int? offset,
      int? count,
      bool? photo_sizes,
      bool? no_service_albums,
      bool? need_hidden,
      bool? skip_hidden}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (extended != null) _params['extended'] = extended;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (photo_sizes != null) _params['photo_sizes'] = photo_sizes;
    if (no_service_albums != null)
      _params['no_service_albums'] = no_service_albums;
    if (need_hidden != null) _params['need_hidden'] = need_hidden;
    if (skip_hidden != null) _params['skip_hidden'] = skip_hidden;
    return _api.request('photos.getAll', {
      ..._params,
    });
  }

  /// Returns a list of comments on a specific photo album or all albums of the user sorted in reverse chronological order.
  Future<Json> getAllComments(
      {int? owner_id,
      int? album_id,
      bool? need_likes,
      int? offset,
      int? count}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (need_likes != null) _params['need_likes'] = need_likes;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('photos.getAllComments', {
      ..._params,
    });
  }

  /// Returns information about photos by their IDs.
  Future<Json> getById(
      {List<dynamic>? photos, bool? extended, bool? photo_sizes}) async {
    var _params = {};
    if (photos != null) _params['photos'] = photos;
    if (extended != null) _params['extended'] = extended;
    if (photo_sizes != null) _params['photo_sizes'] = photo_sizes;
    return _api.request('photos.getById', {
      ..._params,
    });
  }

  /// Returns an upload link for chat cover pictures.
  Future<Json> getChatUploadServer(
      {int? chat_id, int? crop_x, int? crop_y, int? crop_width}) async {
    var _params = {};
    if (chat_id != null) _params['chat_id'] = chat_id;
    if (crop_x != null) _params['crop_x'] = crop_x;
    if (crop_y != null) _params['crop_y'] = crop_y;
    if (crop_width != null) _params['crop_width'] = crop_width;
    return _api.request('photos.getChatUploadServer', {
      ..._params,
    });
  }

  /// Returns a list of comments on a photo.
  Future<Json> getComments(
      {int? owner_id,
      int? photo_id,
      bool? need_likes,
      int? start_comment_id,
      int? offset,
      int? count,
      String? sort,
      String? access_key,
      bool? extended,
      List<dynamic>? fields}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (need_likes != null) _params['need_likes'] = need_likes;
    if (start_comment_id != null)
      _params['start_comment_id'] = start_comment_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (sort != null) _params['sort'] = sort;
    if (access_key != null) _params['access_key'] = access_key;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('photos.getComments', {
      ..._params,
    });
  }

  /// Returns the server address for market album photo upload.
  Future<Json> getMarketAlbumUploadServer({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('photos.getMarketAlbumUploadServer', {
      ..._params,
    });
  }

  /// Returns the server address for market photo upload.
  Future<Json> getMarketUploadServer(
      {int? group_id,
      bool? main_photo,
      int? crop_x,
      int? crop_y,
      int? crop_width}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (main_photo != null) _params['main_photo'] = main_photo;
    if (crop_x != null) _params['crop_x'] = crop_x;
    if (crop_y != null) _params['crop_y'] = crop_y;
    if (crop_width != null) _params['crop_width'] = crop_width;
    return _api.request('photos.getMarketUploadServer', {
      ..._params,
    });
  }

  /// Returns the server address for photo upload in a private message for a user.
  Future<Json> getMessagesUploadServer({int? peer_id}) async {
    var _params = {};
    if (peer_id != null) _params['peer_id'] = peer_id;
    return _api.request('photos.getMessagesUploadServer', {
      ..._params,
    });
  }

  /// Returns a list of photos with tags that have not been viewed.
  Future<Json> getNewTags({int? offset, int? count}) async {
    var _params = {};
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('photos.getNewTags', {
      ..._params,
    });
  }

  /// Returns the server address for owner cover upload.
  Future<Json> getOwnerCoverPhotoUploadServer(
      {int? group_id,
      int? crop_x,
      int? crop_y,
      int? crop_x2,
      int? crop_y2}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (crop_x != null) _params['crop_x'] = crop_x;
    if (crop_y != null) _params['crop_y'] = crop_y;
    if (crop_x2 != null) _params['crop_x2'] = crop_x2;
    if (crop_y2 != null) _params['crop_y2'] = crop_y2;
    return _api.request('photos.getOwnerCoverPhotoUploadServer', {
      ..._params,
    });
  }

  /// Returns an upload server address for a profile or community photo.
  Future<Json> getOwnerPhotoUploadServer({int? owner_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('photos.getOwnerPhotoUploadServer', {
      ..._params,
    });
  }

  /// Returns a list of tags on a photo.
  Future<Json> getTags(
      {int? owner_id, int? photo_id, String? access_key}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (access_key != null) _params['access_key'] = access_key;
    return _api.request('photos.getTags', {
      ..._params,
    });
  }

  /// Returns the server address for photo upload.
  Future<Json> getUploadServer({int? group_id, int? album_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (album_id != null) _params['album_id'] = album_id;
    return _api.request('photos.getUploadServer', {
      ..._params,
    });
  }

  /// Returns a list of photos in which a user is tagged.
  Future<Json> getUserPhotos(
      {int? user_id,
      int? offset,
      int? count,
      bool? extended,
      String? sort}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (sort != null) _params['sort'] = sort;
    return _api.request('photos.getUserPhotos', {
      ..._params,
    });
  }

  /// Returns the server address for photo upload onto a user's wall.
  Future<Json> getWallUploadServer({int? group_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('photos.getWallUploadServer', {
      ..._params,
    });
  }

  /// Makes a photo into an album cover.
  Future<Json> makeCover({int? owner_id, int? photo_id, int? album_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (album_id != null) _params['album_id'] = album_id;
    return _api.request('photos.makeCover', {
      ..._params,
    });
  }

  /// Moves a photo from one album to another.
  Future<Json> move(
      {int? owner_id, int? target_album_id, int? photo_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (target_album_id != null) _params['target_album_id'] = target_album_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    return _api.request('photos.move', {
      ..._params,
    });
  }

  /// Adds a tag on the photo.
  Future<Json> putTag(
      {int? owner_id,
      int? photo_id,
      int? user_id,
      dynamic x,
      dynamic y,
      dynamic x2,
      dynamic y2}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (user_id != null) _params['user_id'] = user_id;
    if (x != null) _params['x'] = x;
    if (y != null) _params['y'] = y;
    if (x2 != null) _params['x2'] = x2;
    if (y2 != null) _params['y2'] = y2;
    return _api.request('photos.putTag', {
      ..._params,
    });
  }

  /// Removes a tag from a photo.
  Future<Json> removeTag({int? owner_id, int? photo_id, int? tag_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (tag_id != null) _params['tag_id'] = tag_id;
    return _api.request('photos.removeTag', {
      ..._params,
    });
  }

  /// Reorders the album in the list of user albums.
  Future<Json> reorderAlbums(
      {int? owner_id, int? album_id, int? before, int? after}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (before != null) _params['before'] = before;
    if (after != null) _params['after'] = after;
    return _api.request('photos.reorderAlbums', {
      ..._params,
    });
  }

  /// Reorders the photo in the list of photos of the user album.
  Future<Json> reorderPhotos(
      {int? owner_id, int? photo_id, int? before, int? after}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (before != null) _params['before'] = before;
    if (after != null) _params['after'] = after;
    return _api.request('photos.reorderPhotos', {
      ..._params,
    });
  }

  /// Reports (submits a complaint about) a photo.
  Future<Json> report({int? owner_id, int? photo_id, int? reason}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (reason != null) _params['reason'] = reason;
    return _api.request('photos.report', {
      ..._params,
    });
  }

  /// Reports (submits a complaint about) a comment on a photo.
  Future<Json> reportComment(
      {int? owner_id, int? comment_id, int? reason}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (reason != null) _params['reason'] = reason;
    return _api.request('photos.reportComment', {
      ..._params,
    });
  }

  /// Restores a deleted photo.
  Future<Json> restore({int? owner_id, int? photo_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo_id != null) _params['photo_id'] = photo_id;
    return _api.request('photos.restore', {
      ..._params,
    });
  }

  /// Restores a deleted comment on a photo.
  Future<Json> restoreComment({int? owner_id, int? comment_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    return _api.request('photos.restoreComment', {
      ..._params,
    });
  }

  /// Saves photos after successful uploading.
  Future<Json> save(
      {int? album_id,
      int? group_id,
      int? server,
      String? photos_list,
      String? hash,
      dynamic latitude,
      dynamic longitude,
      String? caption}) async {
    var _params = {};
    if (album_id != null) _params['album_id'] = album_id;
    if (group_id != null) _params['group_id'] = group_id;
    if (server != null) _params['server'] = server;
    if (photos_list != null) _params['photos_list'] = photos_list;
    if (hash != null) _params['hash'] = hash;
    if (latitude != null) _params['latitude'] = latitude;
    if (longitude != null) _params['longitude'] = longitude;
    if (caption != null) _params['caption'] = caption;
    return _api.request('photos.save', {
      ..._params,
    });
  }

  /// Saves market album photos after successful uploading.
  Future<Json> saveMarketAlbumPhoto(
      {int? group_id, String? photo, int? server, String? hash}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (photo != null) _params['photo'] = photo;
    if (server != null) _params['server'] = server;
    if (hash != null) _params['hash'] = hash;
    return _api.request('photos.saveMarketAlbumPhoto', {
      ..._params,
    });
  }

  /// Saves market photos after successful uploading.
  Future<Json> saveMarketPhoto(
      {int? group_id,
      String? photo,
      int? server,
      String? hash,
      String? crop_data,
      String? crop_hash}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (photo != null) _params['photo'] = photo;
    if (server != null) _params['server'] = server;
    if (hash != null) _params['hash'] = hash;
    if (crop_data != null) _params['crop_data'] = crop_data;
    if (crop_hash != null) _params['crop_hash'] = crop_hash;
    return _api.request('photos.saveMarketPhoto', {
      ..._params,
    });
  }

  /// Saves a photo after being successfully uploaded. URL obtained with [vk.com/dev/photos.getMessagesUploadServer|photos.getMessagesUploadServer] method.
  Future<Json> saveMessagesPhoto(
      {String? photo, int? server, String? hash}) async {
    var _params = {};
    if (photo != null) _params['photo'] = photo;
    if (server != null) _params['server'] = server;
    if (hash != null) _params['hash'] = hash;
    return _api.request('photos.saveMessagesPhoto', {
      ..._params,
    });
  }

  /// Saves cover photo after successful uploading.
  Future<Json> saveOwnerCoverPhoto({String? hash, String? photo}) async {
    var _params = {};
    if (hash != null) _params['hash'] = hash;
    if (photo != null) _params['photo'] = photo;
    return _api.request('photos.saveOwnerCoverPhoto', {
      ..._params,
    });
  }

  /// Saves a profile or community photo. Upload URL can be got with the [vk.com/dev/photos.getOwnerPhotoUploadServer|photos.getOwnerPhotoUploadServer] method.
  Future<Json> saveOwnerPhoto(
      {String? server, String? hash, String? photo}) async {
    var _params = {};
    if (server != null) _params['server'] = server;
    if (hash != null) _params['hash'] = hash;
    if (photo != null) _params['photo'] = photo;
    return _api.request('photos.saveOwnerPhoto', {
      ..._params,
    });
  }

  /// Saves a photo to a user's or community's wall after being uploaded.
  Future<Json> saveWallPhoto(
      {int? user_id,
      int? group_id,
      String? photo,
      int? server,
      String? hash,
      dynamic latitude,
      dynamic longitude,
      String? caption}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (group_id != null) _params['group_id'] = group_id;
    if (photo != null) _params['photo'] = photo;
    if (server != null) _params['server'] = server;
    if (hash != null) _params['hash'] = hash;
    if (latitude != null) _params['latitude'] = latitude;
    if (longitude != null) _params['longitude'] = longitude;
    if (caption != null) _params['caption'] = caption;
    return _api.request('photos.saveWallPhoto', {
      ..._params,
    });
  }

  /// Returns a list of photos.
  Future<Json> search(
      {String? q,
      dynamic lat,
      dynamic long,
      int? start_time,
      int? end_time,
      int? sort,
      int? offset,
      int? count,
      int? radius}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (lat != null) _params['lat'] = lat;
    if (long != null) _params['long'] = long;
    if (start_time != null) _params['start_time'] = start_time;
    if (end_time != null) _params['end_time'] = end_time;
    if (sort != null) _params['sort'] = sort;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (radius != null) _params['radius'] = radius;
    return _api.request('photos.search', {
      ..._params,
    });
  }
}

class Podcasts {
  final API _api;

  Podcasts(this._api);

  /// None
  Future<Json> searchPodcast(
      {String? search_string, int? offset, int? count}) async {
    var _params = {};
    if (search_string != null) _params['search_string'] = search_string;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('podcasts.searchPodcast', {
      ..._params,
    });
  }
}

class Polls {
  final API _api;

  Polls(this._api);

  /// Adds the current user's vote to the selected answer in the poll.
  Future<Json> addVote(
      {int? owner_id,
      int? poll_id,
      List<dynamic>? answer_ids,
      bool? is_board}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (poll_id != null) _params['poll_id'] = poll_id;
    if (answer_ids != null) _params['answer_ids'] = answer_ids;
    if (is_board != null) _params['is_board'] = is_board;
    return _api.request('polls.addVote', {
      ..._params,
    });
  }

  /// Creates polls that can be attached to the users' or communities' posts.
  Future<Json> create(
      {String? question,
      bool? is_anonymous,
      bool? is_multiple,
      int? end_date,
      int? owner_id,
      int? app_id,
      String? add_answers,
      int? photo_id,
      String? background_id,
      bool? disable_unvote}) async {
    var _params = {};
    if (question != null) _params['question'] = question;
    if (is_anonymous != null) _params['is_anonymous'] = is_anonymous;
    if (is_multiple != null) _params['is_multiple'] = is_multiple;
    if (end_date != null) _params['end_date'] = end_date;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (app_id != null) _params['app_id'] = app_id;
    if (add_answers != null) _params['add_answers'] = add_answers;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (background_id != null) _params['background_id'] = background_id;
    if (disable_unvote != null) _params['disable_unvote'] = disable_unvote;
    return _api.request('polls.create', {
      ..._params,
    });
  }

  /// Deletes the current user's vote from the selected answer in the poll.
  Future<Json> deleteVote(
      {int? owner_id, int? poll_id, int? answer_id, bool? is_board}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (poll_id != null) _params['poll_id'] = poll_id;
    if (answer_id != null) _params['answer_id'] = answer_id;
    if (is_board != null) _params['is_board'] = is_board;
    return _api.request('polls.deleteVote', {
      ..._params,
    });
  }

  /// Edits created polls
  Future<Json> edit(
      {int? owner_id,
      int? poll_id,
      String? question,
      String? add_answers,
      String? edit_answers,
      String? delete_answers,
      int? end_date,
      int? photo_id,
      String? background_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (poll_id != null) _params['poll_id'] = poll_id;
    if (question != null) _params['question'] = question;
    if (add_answers != null) _params['add_answers'] = add_answers;
    if (edit_answers != null) _params['edit_answers'] = edit_answers;
    if (delete_answers != null) _params['delete_answers'] = delete_answers;
    if (end_date != null) _params['end_date'] = end_date;
    if (photo_id != null) _params['photo_id'] = photo_id;
    if (background_id != null) _params['background_id'] = background_id;
    return _api.request('polls.edit', {
      ..._params,
    });
  }

  /// None
  Future<Json> getBackgrounds() async {
    var _params = {};

    return _api.request('polls.getBackgrounds', {
      ..._params,
    });
  }

  /// Returns detailed information about a poll by its ID.
  Future<Json> getById(
      {int? owner_id,
      bool? is_board,
      int? poll_id,
      bool? extended,
      int? friends_count,
      List<dynamic>? fields,
      String? name_case}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (is_board != null) _params['is_board'] = is_board;
    if (poll_id != null) _params['poll_id'] = poll_id;
    if (extended != null) _params['extended'] = extended;
    if (friends_count != null) _params['friends_count'] = friends_count;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    return _api.request('polls.getById', {
      ..._params,
    });
  }

  /// None
  Future<Json> getPhotoUploadServer({int? owner_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('polls.getPhotoUploadServer', {
      ..._params,
    });
  }

  /// Returns a list of IDs of users who selected specific answers in the poll.
  Future<Json> getVoters(
      {int? owner_id,
      int? poll_id,
      List<dynamic>? answer_ids,
      bool? is_board,
      bool? friends_only,
      int? offset,
      int? count,
      List<dynamic>? fields,
      String? name_case}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (poll_id != null) _params['poll_id'] = poll_id;
    if (answer_ids != null) _params['answer_ids'] = answer_ids;
    if (is_board != null) _params['is_board'] = is_board;
    if (friends_only != null) _params['friends_only'] = friends_only;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    return _api.request('polls.getVoters', {
      ..._params,
    });
  }

  /// None
  Future<Json> savePhoto({String? photo, String? hash}) async {
    var _params = {};
    if (photo != null) _params['photo'] = photo;
    if (hash != null) _params['hash'] = hash;
    return _api.request('polls.savePhoto', {
      ..._params,
    });
  }
}

class PrettyCards {
  final API _api;

  PrettyCards(this._api);

  /// None
  Future<Json> create(
      {int? owner_id,
      String? photo,
      String? title,
      String? link,
      String? price,
      String? price_old,
      String? button}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (photo != null) _params['photo'] = photo;
    if (title != null) _params['title'] = title;
    if (link != null) _params['link'] = link;
    if (price != null) _params['price'] = price;
    if (price_old != null) _params['price_old'] = price_old;
    if (button != null) _params['button'] = button;
    return _api.request('prettyCards.create', {
      ..._params,
    });
  }

  /// None
  Future<Json> delete({int? owner_id, int? card_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (card_id != null) _params['card_id'] = card_id;
    return _api.request('prettyCards.delete', {
      ..._params,
    });
  }

  /// None
  Future<Json> edit(
      {int? owner_id,
      int? card_id,
      String? photo,
      String? title,
      String? link,
      String? price,
      String? price_old,
      String? button}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (card_id != null) _params['card_id'] = card_id;
    if (photo != null) _params['photo'] = photo;
    if (title != null) _params['title'] = title;
    if (link != null) _params['link'] = link;
    if (price != null) _params['price'] = price;
    if (price_old != null) _params['price_old'] = price_old;
    if (button != null) _params['button'] = button;
    return _api.request('prettyCards.edit', {
      ..._params,
    });
  }

  /// None
  Future<Json> get({int? owner_id, int? offset, int? count}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('prettyCards.get', {
      ..._params,
    });
  }

  /// None
  Future<Json> getById({int? owner_id, List<dynamic>? card_ids}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (card_ids != null) _params['card_ids'] = card_ids;
    return _api.request('prettyCards.getById', {
      ..._params,
    });
  }

  /// None
  Future<Json> getUploadURL() async {
    var _params = {};

    return _api.request('prettyCards.getUploadURL', {
      ..._params,
    });
  }
}

class Search {
  final API _api;

  Search(this._api);

  /// Allows the programmer to do a quick search for any substring.
  Future<Json> getHints(
      {String? q,
      int? offset,
      int? limit,
      List<dynamic>? filters,
      List<dynamic>? fields,
      bool? search_global}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (offset != null) _params['offset'] = offset;
    if (limit != null) _params['limit'] = limit;
    if (filters != null) _params['filters'] = filters;
    if (fields != null) _params['fields'] = fields;
    if (search_global != null) _params['search_global'] = search_global;
    return _api.request('search.getHints', {
      ..._params,
    });
  }
}

class Secure {
  final API _api;

  Secure(this._api);

  /// Adds user activity information to an application
  Future<Json> addAppEvent({int? user_id, int? activity_id, int? value}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (activity_id != null) _params['activity_id'] = activity_id;
    if (value != null) _params['value'] = value;
    return _api.request('secure.addAppEvent', {
      ..._params,
    });
  }

  /// Checks the user authentication in 'IFrame' and 'Flash' apps using the 'access_token' parameter.
  Future<Json> checkToken({String? token, String? ip}) async {
    var _params = {};
    if (token != null) _params['token'] = token;
    if (ip != null) _params['ip'] = ip;
    return _api.request('secure.checkToken', {
      ..._params,
    });
  }

  /// Returns payment balance of the application in hundredth of a vote.
  Future<Json> getAppBalance() async {
    var _params = {};

    return _api.request('secure.getAppBalance', {
      ..._params,
    });
  }

  /// Shows a list of SMS notifications sent by the application using [vk.com/dev/secure.sendSMSNotification|secure.sendSMSNotification] method.
  Future<Json> getSMSHistory(
      {int? user_id, int? date_from, int? date_to, int? limit}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (date_from != null) _params['date_from'] = date_from;
    if (date_to != null) _params['date_to'] = date_to;
    if (limit != null) _params['limit'] = limit;
    return _api.request('secure.getSMSHistory', {
      ..._params,
    });
  }

  /// Shows history of votes transaction between users and the application.
  Future<Json> getTransactionsHistory(
      {int? type,
      int? uid_from,
      int? uid_to,
      int? date_from,
      int? date_to,
      int? limit}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    if (uid_from != null) _params['uid_from'] = uid_from;
    if (uid_to != null) _params['uid_to'] = uid_to;
    if (date_from != null) _params['date_from'] = date_from;
    if (date_to != null) _params['date_to'] = date_to;
    if (limit != null) _params['limit'] = limit;
    return _api.request('secure.getTransactionsHistory', {
      ..._params,
    });
  }

  /// Returns one of the previously set game levels of one or more users in the application.
  Future<Json> getUserLevel({List<dynamic>? user_ids}) async {
    var _params = {};
    if (user_ids != null) _params['user_ids'] = user_ids;
    return _api.request('secure.getUserLevel', {
      ..._params,
    });
  }

  /// Opens the game achievement and gives the user a sticker
  Future<Json> giveEventSticker(
      {List<dynamic>? user_ids, int? achievement_id}) async {
    var _params = {};
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (achievement_id != null) _params['achievement_id'] = achievement_id;
    return _api.request('secure.giveEventSticker', {
      ..._params,
    });
  }

  /// Sends notification to the user.
  Future<Json> sendNotification(
      {List<dynamic>? user_ids, int? user_id, String? message}) async {
    var _params = {};
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (user_id != null) _params['user_id'] = user_id;
    if (message != null) _params['message'] = message;
    return _api.request('secure.sendNotification', {
      ..._params,
    });
  }

  /// Sends 'SMS' notification to a user's mobile device.
  Future<Json> sendSMSNotification({int? user_id, String? message}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (message != null) _params['message'] = message;
    return _api.request('secure.sendSMSNotification', {
      ..._params,
    });
  }

  /// Sets a counter which is shown to the user in bold in the left menu.
  Future<Json> setCounter(
      {List<dynamic>? counters,
      int? user_id,
      int? counter,
      bool? increment}) async {
    var _params = {};
    if (counters != null) _params['counters'] = counters;
    if (user_id != null) _params['user_id'] = user_id;
    if (counter != null) _params['counter'] = counter;
    if (increment != null) _params['increment'] = increment;
    return _api.request('secure.setCounter', {
      ..._params,
    });
  }
}

class Stats {
  final API _api;

  Stats(this._api);

  /// Returns statistics of a community or an application.
  Future<Json> get(
      {int? group_id,
      int? app_id,
      int? timestamp_from,
      int? timestamp_to,
      String? interval,
      int? intervals_count,
      List<dynamic>? filters,
      List<dynamic>? stats_groups,
      bool? extended}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (app_id != null) _params['app_id'] = app_id;
    if (timestamp_from != null) _params['timestamp_from'] = timestamp_from;
    if (timestamp_to != null) _params['timestamp_to'] = timestamp_to;
    if (interval != null) _params['interval'] = interval;
    if (intervals_count != null) _params['intervals_count'] = intervals_count;
    if (filters != null) _params['filters'] = filters;
    if (stats_groups != null) _params['stats_groups'] = stats_groups;
    if (extended != null) _params['extended'] = extended;
    return _api.request('stats.get', {
      ..._params,
    });
  }

  /// Returns stats for a wall post.
  Future<Json> getPostReach({String? owner_id, List<dynamic>? post_ids}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_ids != null) _params['post_ids'] = post_ids;
    return _api.request('stats.getPostReach', {
      ..._params,
    });
  }

  /// None
  Future<Json> trackVisitor({String? id}) async {
    var _params = {};
    if (id != null) _params['id'] = id;
    return _api.request('stats.trackVisitor', {
      ..._params,
    });
  }
}

class Status {
  final API _api;

  Status(this._api);

  /// Returns data required to show the status of a user or community.
  Future<Json> get({int? user_id, int? group_id}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('status.get', {
      ..._params,
    });
  }

  /// Sets a new status for the current user.
  Future<Json> set({String? text, int? group_id}) async {
    var _params = {};
    if (text != null) _params['text'] = text;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('status.set', {
      ..._params,
    });
  }
}

class Storage {
  final API _api;

  Storage(this._api);

  /// Returns a value of variable with the name set by key parameter.
  Future<Json> get({String? key, List<dynamic>? keys, int? user_id}) async {
    var _params = {};
    if (key != null) _params['key'] = key;
    if (keys != null) _params['keys'] = keys;
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('storage.get', {
      ..._params,
    });
  }

  /// Returns the names of all variables.
  Future<Json> getKeys({int? user_id, int? offset, int? count}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('storage.getKeys', {
      ..._params,
    });
  }

  /// Saves a value of variable with the name set by 'key' parameter.
  Future<Json> set({String? key, String? value, int? user_id}) async {
    var _params = {};
    if (key != null) _params['key'] = key;
    if (value != null) _params['value'] = value;
    if (user_id != null) _params['user_id'] = user_id;
    return _api.request('storage.set', {
      ..._params,
    });
  }
}

class Store {
  final API _api;

  Store(this._api);

  /// Adds given sticker IDs to the list of user's favorite stickers
  Future<Json> addStickersToFavorite({List<dynamic>? sticker_ids}) async {
    var _params = {};
    if (sticker_ids != null) _params['sticker_ids'] = sticker_ids;
    return _api.request('store.addStickersToFavorite', {
      ..._params,
    });
  }

  /// None
  Future<Json> getFavoriteStickers() async {
    var _params = {};

    return _api.request('store.getFavoriteStickers', {
      ..._params,
    });
  }

  /// None
  Future<Json> getProducts(
      {String? type,
      String? merchant,
      String? section,
      List<dynamic>? product_ids,
      List<dynamic>? filters,
      bool? extended}) async {
    var _params = {};
    if (type != null) _params['type'] = type;
    if (merchant != null) _params['merchant'] = merchant;
    if (section != null) _params['section'] = section;
    if (product_ids != null) _params['product_ids'] = product_ids;
    if (filters != null) _params['filters'] = filters;
    if (extended != null) _params['extended'] = extended;
    return _api.request('store.getProducts', {
      ..._params,
    });
  }

  /// None
  Future<Json> getStickersKeywords(
      {List<dynamic>? stickers_ids,
      List<dynamic>? products_ids,
      bool? aliases,
      bool? all_products,
      bool? need_stickers}) async {
    var _params = {};
    if (stickers_ids != null) _params['stickers_ids'] = stickers_ids;
    if (products_ids != null) _params['products_ids'] = products_ids;
    if (aliases != null) _params['aliases'] = aliases;
    if (all_products != null) _params['all_products'] = all_products;
    if (need_stickers != null) _params['need_stickers'] = need_stickers;
    return _api.request('store.getStickersKeywords', {
      ..._params,
    });
  }

  /// Removes given sticker IDs from the list of user's favorite stickers
  Future<Json> removeStickersFromFavorite({List<dynamic>? sticker_ids}) async {
    var _params = {};
    if (sticker_ids != null) _params['sticker_ids'] = sticker_ids;
    return _api.request('store.removeStickersFromFavorite', {
      ..._params,
    });
  }
}

class Stories {
  final API _api;

  Stories(this._api);

  /// Allows to hide stories from chosen sources from current user's feed.
  Future<Json> banOwner({List<dynamic>? owners_ids}) async {
    var _params = {};
    if (owners_ids != null) _params['owners_ids'] = owners_ids;
    return _api.request('stories.banOwner', {
      ..._params,
    });
  }

  /// Allows to delete story.
  Future<Json> delete(
      {int? owner_id, int? story_id, List<dynamic>? stories}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (story_id != null) _params['story_id'] = story_id;
    if (stories != null) _params['stories'] = stories;
    return _api.request('stories.delete', {
      ..._params,
    });
  }

  /// Returns stories available for current user.
  Future<Json> get(
      {int? owner_id, bool? extended, List<dynamic>? fields}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('stories.get', {
      ..._params,
    });
  }

  /// Returns list of sources hidden from current user's feed.
  Future<Json> getBanned({bool? extended, List<dynamic>? fields}) async {
    var _params = {};
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('stories.getBanned', {
      ..._params,
    });
  }

  /// Returns story by its ID.
  Future<Json> getById(
      {List<dynamic>? stories, bool? extended, List<dynamic>? fields}) async {
    var _params = {};
    if (stories != null) _params['stories'] = stories;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('stories.getById', {
      ..._params,
    });
  }

  /// Returns URL for uploading a story with photo.
  Future<Json> getPhotoUploadServer(
      {bool? add_to_news,
      List<dynamic>? user_ids,
      String? reply_to_story,
      String? link_text,
      String? link_url,
      int? group_id,
      String? clickable_stickers}) async {
    var _params = {};
    if (add_to_news != null) _params['add_to_news'] = add_to_news;
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (reply_to_story != null) _params['reply_to_story'] = reply_to_story;
    if (link_text != null) _params['link_text'] = link_text;
    if (link_url != null) _params['link_url'] = link_url;
    if (group_id != null) _params['group_id'] = group_id;
    if (clickable_stickers != null)
      _params['clickable_stickers'] = clickable_stickers;
    return _api.request('stories.getPhotoUploadServer', {
      ..._params,
    });
  }

  /// Returns replies to the story.
  Future<Json> getReplies(
      {int? owner_id,
      int? story_id,
      String? access_key,
      bool? extended,
      List<dynamic>? fields}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (story_id != null) _params['story_id'] = story_id;
    if (access_key != null) _params['access_key'] = access_key;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('stories.getReplies', {
      ..._params,
    });
  }

  /// Returns stories available for current user.
  Future<Json> getStats({int? owner_id, int? story_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (story_id != null) _params['story_id'] = story_id;
    return _api.request('stories.getStats', {
      ..._params,
    });
  }

  /// Allows to receive URL for uploading story with video.
  Future<Json> getVideoUploadServer(
      {bool? add_to_news,
      List<dynamic>? user_ids,
      String? reply_to_story,
      String? link_text,
      String? link_url,
      int? group_id,
      String? clickable_stickers}) async {
    var _params = {};
    if (add_to_news != null) _params['add_to_news'] = add_to_news;
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (reply_to_story != null) _params['reply_to_story'] = reply_to_story;
    if (link_text != null) _params['link_text'] = link_text;
    if (link_url != null) _params['link_url'] = link_url;
    if (group_id != null) _params['group_id'] = group_id;
    if (clickable_stickers != null)
      _params['clickable_stickers'] = clickable_stickers;
    return _api.request('stories.getVideoUploadServer', {
      ..._params,
    });
  }

  /// Returns a list of story viewers.
  Future<Json> getViewers(
      {int? owner_id,
      int? story_id,
      int? count,
      int? offset,
      bool? extended}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (story_id != null) _params['story_id'] = story_id;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    if (extended != null) _params['extended'] = extended;
    return _api.request('stories.getViewers', {
      ..._params,
    });
  }

  /// Hides all replies in the last 24 hours from the user to current user's stories.
  Future<Json> hideAllReplies({int? owner_id, int? group_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (group_id != null) _params['group_id'] = group_id;
    return _api.request('stories.hideAllReplies', {
      ..._params,
    });
  }

  /// Hides the reply to the current user's story.
  Future<Json> hideReply({int? owner_id, int? story_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (story_id != null) _params['story_id'] = story_id;
    return _api.request('stories.hideReply', {
      ..._params,
    });
  }

  /// None
  Future<Json> save(
      {List<dynamic>? upload_results,
      bool? extended,
      List<dynamic>? fields}) async {
    var _params = {};
    if (upload_results != null) _params['upload_results'] = upload_results;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('stories.save', {
      ..._params,
    });
  }

  /// None
  Future<Json> search(
      {String? q,
      int? place_id,
      dynamic latitude,
      dynamic longitude,
      int? radius,
      int? mentioned_id,
      int? count,
      bool? extended,
      List<dynamic>? fields}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (place_id != null) _params['place_id'] = place_id;
    if (latitude != null) _params['latitude'] = latitude;
    if (longitude != null) _params['longitude'] = longitude;
    if (radius != null) _params['radius'] = radius;
    if (mentioned_id != null) _params['mentioned_id'] = mentioned_id;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('stories.search', {
      ..._params,
    });
  }

  /// None
  Future<Json> sendInteraction(
      {String? access_key,
      String? message,
      bool? is_broadcast,
      bool? is_anonymous,
      bool? unseen_marker}) async {
    var _params = {};
    if (access_key != null) _params['access_key'] = access_key;
    if (message != null) _params['message'] = message;
    if (is_broadcast != null) _params['is_broadcast'] = is_broadcast;
    if (is_anonymous != null) _params['is_anonymous'] = is_anonymous;
    if (unseen_marker != null) _params['unseen_marker'] = unseen_marker;
    return _api.request('stories.sendInteraction', {
      ..._params,
    });
  }

  /// Allows to show stories from hidden sources in current user's feed.
  Future<Json> unbanOwner({List<dynamic>? owners_ids}) async {
    var _params = {};
    if (owners_ids != null) _params['owners_ids'] = owners_ids;
    return _api.request('stories.unbanOwner', {
      ..._params,
    });
  }
}

class Streaming {
  final API _api;

  Streaming(this._api);

  /// Allows to receive data for the connection to Streaming API.
  Future<Json> getServerUrl() async {
    var _params = {};

    return _api.request('streaming.getServerUrl', {
      ..._params,
    });
  }

  /// None
  Future<Json> setSettings({String? monthly_tier}) async {
    var _params = {};
    if (monthly_tier != null) _params['monthly_tier'] = monthly_tier;
    return _api.request('streaming.setSettings', {
      ..._params,
    });
  }
}

class Users {
  final API _api;

  Users(this._api);

  /// Returns detailed information on users.
  Future<Json> get(
      {List<dynamic>? user_ids,
      List<dynamic>? fields,
      String? name_case}) async {
    var _params = {};
    if (user_ids != null) _params['user_ids'] = user_ids;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    return _api.request('users.get', {
      ..._params,
    });
  }

  /// Returns a list of IDs of followers of the user in question, sorted by date added, most recent first.
  Future<Json> getFollowers(
      {int? user_id,
      int? offset,
      int? count,
      List<dynamic>? fields,
      String? name_case}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    if (name_case != null) _params['name_case'] = name_case;
    return _api.request('users.getFollowers', {
      ..._params,
    });
  }

  /// Returns a list of IDs of users and communities followed by the user.
  Future<Json> getSubscriptions(
      {int? user_id,
      bool? extended,
      int? offset,
      int? count,
      List<dynamic>? fields}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (extended != null) _params['extended'] = extended;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    return _api.request('users.getSubscriptions', {
      ..._params,
    });
  }

  /// Reports (submits a complain about) a user.
  Future<Json> report({int? user_id, String? type, String? comment}) async {
    var _params = {};
    if (user_id != null) _params['user_id'] = user_id;
    if (type != null) _params['type'] = type;
    if (comment != null) _params['comment'] = comment;
    return _api.request('users.report', {
      ..._params,
    });
  }

  /// Returns a list of users matching the search criteria.
  Future<Json> search(
      {String? q,
      int? sort,
      int? offset,
      int? count,
      List<dynamic>? fields,
      int? city,
      int? country,
      String? hometown,
      int? university_country,
      int? university,
      int? university_year,
      int? university_faculty,
      int? university_chair,
      int? sex,
      int? status,
      int? age_from,
      int? age_to,
      int? birth_day,
      int? birth_month,
      int? birth_year,
      bool? online,
      bool? has_photo,
      int? school_country,
      int? school_city,
      int? school_class,
      int? school,
      int? school_year,
      String? religion,
      String? company,
      String? position,
      int? group_id,
      List<dynamic>? from_list}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (sort != null) _params['sort'] = sort;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (fields != null) _params['fields'] = fields;
    if (city != null) _params['city'] = city;
    if (country != null) _params['country'] = country;
    if (hometown != null) _params['hometown'] = hometown;
    if (university_country != null)
      _params['university_country'] = university_country;
    if (university != null) _params['university'] = university;
    if (university_year != null) _params['university_year'] = university_year;
    if (university_faculty != null)
      _params['university_faculty'] = university_faculty;
    if (university_chair != null)
      _params['university_chair'] = university_chair;
    if (sex != null) _params['sex'] = sex;
    if (status != null) _params['status'] = status;
    if (age_from != null) _params['age_from'] = age_from;
    if (age_to != null) _params['age_to'] = age_to;
    if (birth_day != null) _params['birth_day'] = birth_day;
    if (birth_month != null) _params['birth_month'] = birth_month;
    if (birth_year != null) _params['birth_year'] = birth_year;
    if (online != null) _params['online'] = online;
    if (has_photo != null) _params['has_photo'] = has_photo;
    if (school_country != null) _params['school_country'] = school_country;
    if (school_city != null) _params['school_city'] = school_city;
    if (school_class != null) _params['school_class'] = school_class;
    if (school != null) _params['school'] = school;
    if (school_year != null) _params['school_year'] = school_year;
    if (religion != null) _params['religion'] = religion;
    if (company != null) _params['company'] = company;
    if (position != null) _params['position'] = position;
    if (group_id != null) _params['group_id'] = group_id;
    if (from_list != null) _params['from_list'] = from_list;
    return _api.request('users.search', {
      ..._params,
    });
  }
}

class Utils {
  final API _api;

  Utils(this._api);

  /// Checks whether a link is blocked in VK.
  Future<Json> checkLink({String? url}) async {
    var _params = {};
    if (url != null) _params['url'] = url;
    return _api.request('utils.checkLink', {
      ..._params,
    });
  }

  /// Deletes shortened link from user's list.
  Future<Json> deleteFromLastShortened({String? key}) async {
    var _params = {};
    if (key != null) _params['key'] = key;
    return _api.request('utils.deleteFromLastShortened', {
      ..._params,
    });
  }

  /// Returns a list of user's shortened links.
  Future<Json> getLastShortenedLinks({int? count, int? offset}) async {
    var _params = {};
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    return _api.request('utils.getLastShortenedLinks', {
      ..._params,
    });
  }

  /// Returns stats data for shortened link.
  Future<Json> getLinkStats(
      {String? key,
      String? source,
      String? access_key,
      String? interval,
      int? intervals_count,
      bool? extended}) async {
    var _params = {};
    if (key != null) _params['key'] = key;
    if (source != null) _params['source'] = source;
    if (access_key != null) _params['access_key'] = access_key;
    if (interval != null) _params['interval'] = interval;
    if (intervals_count != null) _params['intervals_count'] = intervals_count;
    if (extended != null) _params['extended'] = extended;
    return _api.request('utils.getLinkStats', {
      ..._params,
    });
  }

  /// Returns the current time of the VK server.
  Future<Json> getServerTime() async {
    var _params = {};

    return _api.request('utils.getServerTime', {
      ..._params,
    });
  }

  /// Allows to receive a link shortened via vk.cc.
  Future<Json> getShortLink({String? url, bool? private}) async {
    var _params = {};
    if (url != null) _params['url'] = url;
    if (private != null) _params['private'] = private;
    return _api.request('utils.getShortLink', {
      ..._params,
    });
  }

  /// Detects a type of object (e.g., user, community, application) and its ID by screen name.
  Future<Json> resolveScreenName({String? screen_name}) async {
    var _params = {};
    if (screen_name != null) _params['screen_name'] = screen_name;
    return _api.request('utils.resolveScreenName', {
      ..._params,
    });
  }
}

class Video {
  final API _api;

  Video(this._api);

  /// Adds a video to a user or community page.
  Future<Json> add({int? target_id, int? video_id, int? owner_id}) async {
    var _params = {};
    if (target_id != null) _params['target_id'] = target_id;
    if (video_id != null) _params['video_id'] = video_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('video.add', {
      ..._params,
    });
  }

  /// Creates an empty album for videos.
  Future<Json> addAlbum(
      {int? group_id, String? title, List<dynamic>? privacy}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (title != null) _params['title'] = title;
    if (privacy != null) _params['privacy'] = privacy;
    return _api.request('video.addAlbum', {
      ..._params,
    });
  }

  /// None
  Future<Json> addToAlbum(
      {int? target_id,
      int? album_id,
      List<dynamic>? album_ids,
      int? owner_id,
      int? video_id}) async {
    var _params = {};
    if (target_id != null) _params['target_id'] = target_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (album_ids != null) _params['album_ids'] = album_ids;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (video_id != null) _params['video_id'] = video_id;
    return _api.request('video.addToAlbum', {
      ..._params,
    });
  }

  /// Adds a new comment on a video.
  Future<Json> createComment(
      {int? owner_id,
      int? video_id,
      String? message,
      List<dynamic>? attachments,
      bool? from_group,
      int? reply_to_comment,
      int? sticker_id,
      String? guid}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (video_id != null) _params['video_id'] = video_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    if (from_group != null) _params['from_group'] = from_group;
    if (reply_to_comment != null)
      _params['reply_to_comment'] = reply_to_comment;
    if (sticker_id != null) _params['sticker_id'] = sticker_id;
    if (guid != null) _params['guid'] = guid;
    return _api.request('video.createComment', {
      ..._params,
    });
  }

  /// Deletes a video from a user or community page.
  Future<Json> delete({int? video_id, int? owner_id, int? target_id}) async {
    var _params = {};
    if (video_id != null) _params['video_id'] = video_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (target_id != null) _params['target_id'] = target_id;
    return _api.request('video.delete', {
      ..._params,
    });
  }

  /// Deletes a video album.
  Future<Json> deleteAlbum({int? group_id, int? album_id}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (album_id != null) _params['album_id'] = album_id;
    return _api.request('video.deleteAlbum', {
      ..._params,
    });
  }

  /// Deletes a comment on a video.
  Future<Json> deleteComment({int? owner_id, int? comment_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    return _api.request('video.deleteComment', {
      ..._params,
    });
  }

  /// Edits information about a video on a user or community page.
  Future<Json> edit(
      {int? owner_id,
      int? video_id,
      String? name,
      String? desc,
      List<dynamic>? privacy_view,
      List<dynamic>? privacy_comment,
      bool? no_comments,
      bool? repeat}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (video_id != null) _params['video_id'] = video_id;
    if (name != null) _params['name'] = name;
    if (desc != null) _params['desc'] = desc;
    if (privacy_view != null) _params['privacy_view'] = privacy_view;
    if (privacy_comment != null) _params['privacy_comment'] = privacy_comment;
    if (no_comments != null) _params['no_comments'] = no_comments;
    if (repeat != null) _params['repeat'] = repeat;
    return _api.request('video.edit', {
      ..._params,
    });
  }

  /// Edits the title of a video album.
  Future<Json> editAlbum(
      {int? group_id,
      int? album_id,
      String? title,
      List<dynamic>? privacy}) async {
    var _params = {};
    if (group_id != null) _params['group_id'] = group_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (title != null) _params['title'] = title;
    if (privacy != null) _params['privacy'] = privacy;
    return _api.request('video.editAlbum', {
      ..._params,
    });
  }

  /// Edits the text of a comment on a video.
  Future<Json> editComment(
      {int? owner_id,
      int? comment_id,
      String? message,
      List<dynamic>? attachments}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    return _api.request('video.editComment', {
      ..._params,
    });
  }

  /// Returns detailed information about videos.
  Future<Json> get(
      {int? owner_id,
      List<dynamic>? videos,
      int? album_id,
      int? count,
      int? offset,
      bool? extended,
      List<dynamic>? fields}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (videos != null) _params['videos'] = videos;
    if (album_id != null) _params['album_id'] = album_id;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('video.get', {
      ..._params,
    });
  }

  /// Returns video album info
  Future<Json> getAlbumById({int? owner_id, int? album_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    return _api.request('video.getAlbumById', {
      ..._params,
    });
  }

  /// Returns a list of video albums owned by a user or community.
  Future<Json> getAlbums(
      {int? owner_id,
      int? offset,
      int? count,
      bool? extended,
      bool? need_system}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    if (need_system != null) _params['need_system'] = need_system;
    return _api.request('video.getAlbums', {
      ..._params,
    });
  }

  /// None
  Future<Json> getAlbumsByVideo(
      {int? target_id, int? owner_id, int? video_id, bool? extended}) async {
    var _params = {};
    if (target_id != null) _params['target_id'] = target_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (video_id != null) _params['video_id'] = video_id;
    if (extended != null) _params['extended'] = extended;
    return _api.request('video.getAlbumsByVideo', {
      ..._params,
    });
  }

  /// Returns a list of comments on a video.
  Future<Json> getComments(
      {int? owner_id,
      int? video_id,
      bool? need_likes,
      int? start_comment_id,
      int? offset,
      int? count,
      String? sort,
      bool? extended,
      List<dynamic>? fields}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (video_id != null) _params['video_id'] = video_id;
    if (need_likes != null) _params['need_likes'] = need_likes;
    if (start_comment_id != null)
      _params['start_comment_id'] = start_comment_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (sort != null) _params['sort'] = sort;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('video.getComments', {
      ..._params,
    });
  }

  /// None
  Future<Json> removeFromAlbum(
      {int? target_id,
      int? album_id,
      List<dynamic>? album_ids,
      int? owner_id,
      int? video_id}) async {
    var _params = {};
    if (target_id != null) _params['target_id'] = target_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (album_ids != null) _params['album_ids'] = album_ids;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (video_id != null) _params['video_id'] = video_id;
    return _api.request('video.removeFromAlbum', {
      ..._params,
    });
  }

  /// Reorders the album in the list of user video albums.
  Future<Json> reorderAlbums(
      {int? owner_id, int? album_id, int? before, int? after}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (before != null) _params['before'] = before;
    if (after != null) _params['after'] = after;
    return _api.request('video.reorderAlbums', {
      ..._params,
    });
  }

  /// Reorders the video in the video album.
  Future<Json> reorderVideos(
      {int? target_id,
      int? album_id,
      int? owner_id,
      int? video_id,
      int? before_owner_id,
      int? before_video_id,
      int? after_owner_id,
      int? after_video_id}) async {
    var _params = {};
    if (target_id != null) _params['target_id'] = target_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (video_id != null) _params['video_id'] = video_id;
    if (before_owner_id != null) _params['before_owner_id'] = before_owner_id;
    if (before_video_id != null) _params['before_video_id'] = before_video_id;
    if (after_owner_id != null) _params['after_owner_id'] = after_owner_id;
    if (after_video_id != null) _params['after_video_id'] = after_video_id;
    return _api.request('video.reorderVideos', {
      ..._params,
    });
  }

  /// Reports (submits a complaint about) a video.
  Future<Json> report(
      {int? owner_id,
      int? video_id,
      int? reason,
      String? comment,
      String? search_query}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (video_id != null) _params['video_id'] = video_id;
    if (reason != null) _params['reason'] = reason;
    if (comment != null) _params['comment'] = comment;
    if (search_query != null) _params['search_query'] = search_query;
    return _api.request('video.report', {
      ..._params,
    });
  }

  /// Reports (submits a complaint about) a comment on a video.
  Future<Json> reportComment(
      {int? owner_id, int? comment_id, int? reason}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (reason != null) _params['reason'] = reason;
    return _api.request('video.reportComment', {
      ..._params,
    });
  }

  /// Restores a previously deleted video.
  Future<Json> restore({int? video_id, int? owner_id}) async {
    var _params = {};
    if (video_id != null) _params['video_id'] = video_id;
    if (owner_id != null) _params['owner_id'] = owner_id;
    return _api.request('video.restore', {
      ..._params,
    });
  }

  /// Restores a previously deleted comment on a video.
  Future<Json> restoreComment({int? owner_id, int? comment_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    return _api.request('video.restoreComment', {
      ..._params,
    });
  }

  /// Returns a server address (required for upload) and video data.
  Future<Json> save(
      {String? name,
      String? description,
      bool? is_private,
      bool? wallpost,
      String? link,
      int? group_id,
      int? album_id,
      List<dynamic>? privacy_view,
      List<dynamic>? privacy_comment,
      bool? no_comments,
      bool? repeat,
      bool? compression}) async {
    var _params = {};
    if (name != null) _params['name'] = name;
    if (description != null) _params['description'] = description;
    if (is_private != null) _params['is_private'] = is_private;
    if (wallpost != null) _params['wallpost'] = wallpost;
    if (link != null) _params['link'] = link;
    if (group_id != null) _params['group_id'] = group_id;
    if (album_id != null) _params['album_id'] = album_id;
    if (privacy_view != null) _params['privacy_view'] = privacy_view;
    if (privacy_comment != null) _params['privacy_comment'] = privacy_comment;
    if (no_comments != null) _params['no_comments'] = no_comments;
    if (repeat != null) _params['repeat'] = repeat;
    if (compression != null) _params['compression'] = compression;
    return _api.request('video.save', {
      ..._params,
    });
  }

  /// Returns a list of videos under the set search criterion.
  Future<Json> search(
      {String? q,
      int? sort,
      int? hd,
      bool? adult,
      List<dynamic>? filters,
      bool? search_own,
      int? offset,
      int? longer,
      int? shorter,
      int? count,
      bool? extended}) async {
    var _params = {};
    if (q != null) _params['q'] = q;
    if (sort != null) _params['sort'] = sort;
    if (hd != null) _params['hd'] = hd;
    if (adult != null) _params['adult'] = adult;
    if (filters != null) _params['filters'] = filters;
    if (search_own != null) _params['search_own'] = search_own;
    if (offset != null) _params['offset'] = offset;
    if (longer != null) _params['longer'] = longer;
    if (shorter != null) _params['shorter'] = shorter;
    if (count != null) _params['count'] = count;
    if (extended != null) _params['extended'] = extended;
    return _api.request('video.search', {
      ..._params,
    });
  }
}

class Wall {
  final API _api;

  Wall(this._api);

  /// None
  Future<Json> checkCopyrightLink({String? link}) async {
    var _params = {};
    if (link != null) _params['link'] = link;
    return _api.request('wall.checkCopyrightLink', {
      ..._params,
    });
  }

  /// None
  Future<Json> closeComments({int? owner_id, int? post_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    return _api.request('wall.closeComments', {
      ..._params,
    });
  }

  /// Adds a comment to a post on a user wall or community wall.
  Future<Json> createComment(
      {int? owner_id,
      int? post_id,
      int? from_group,
      String? message,
      int? reply_to_comment,
      List<dynamic>? attachments,
      int? sticker_id,
      String? guid}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    if (from_group != null) _params['from_group'] = from_group;
    if (message != null) _params['message'] = message;
    if (reply_to_comment != null)
      _params['reply_to_comment'] = reply_to_comment;
    if (attachments != null) _params['attachments'] = attachments;
    if (sticker_id != null) _params['sticker_id'] = sticker_id;
    if (guid != null) _params['guid'] = guid;
    return _api.request('wall.createComment', {
      ..._params,
    });
  }

  /// Deletes a post from a user wall or community wall.
  Future<Json> delete({int? owner_id, int? post_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    return _api.request('wall.delete', {
      ..._params,
    });
  }

  /// Deletes a comment on a post on a user wall or community wall.
  Future<Json> deleteComment({int? owner_id, int? comment_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    return _api.request('wall.deleteComment', {
      ..._params,
    });
  }

  /// Edits a post on a user wall or community wall.
  Future<Json> edit(
      {int? owner_id,
      int? post_id,
      bool? friends_only,
      String? message,
      List<dynamic>? attachments,
      String? services,
      bool? signed,
      int? publish_date,
      dynamic lat,
      dynamic long,
      int? place_id,
      bool? mark_as_ads,
      bool? close_comments,
      int? donut_paid_duration,
      int? poster_bkg_id,
      int? poster_bkg_owner_id,
      String? poster_bkg_access_hash,
      String? copyright,
      int? topic_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    if (friends_only != null) _params['friends_only'] = friends_only;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    if (services != null) _params['services'] = services;
    if (signed != null) _params['signed'] = signed;
    if (publish_date != null) _params['publish_date'] = publish_date;
    if (lat != null) _params['lat'] = lat;
    if (long != null) _params['long'] = long;
    if (place_id != null) _params['place_id'] = place_id;
    if (mark_as_ads != null) _params['mark_as_ads'] = mark_as_ads;
    if (close_comments != null) _params['close_comments'] = close_comments;
    if (donut_paid_duration != null)
      _params['donut_paid_duration'] = donut_paid_duration;
    if (poster_bkg_id != null) _params['poster_bkg_id'] = poster_bkg_id;
    if (poster_bkg_owner_id != null)
      _params['poster_bkg_owner_id'] = poster_bkg_owner_id;
    if (poster_bkg_access_hash != null)
      _params['poster_bkg_access_hash'] = poster_bkg_access_hash;
    if (copyright != null) _params['copyright'] = copyright;
    if (topic_id != null) _params['topic_id'] = topic_id;
    return _api.request('wall.edit', {
      ..._params,
    });
  }

  /// Allows to edit hidden post.
  Future<Json> editAdsStealth(
      {int? owner_id,
      int? post_id,
      String? message,
      List<dynamic>? attachments,
      bool? signed,
      dynamic lat,
      dynamic long,
      int? place_id,
      String? link_button,
      String? link_title,
      String? link_image,
      String? link_video}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    if (signed != null) _params['signed'] = signed;
    if (lat != null) _params['lat'] = lat;
    if (long != null) _params['long'] = long;
    if (place_id != null) _params['place_id'] = place_id;
    if (link_button != null) _params['link_button'] = link_button;
    if (link_title != null) _params['link_title'] = link_title;
    if (link_image != null) _params['link_image'] = link_image;
    if (link_video != null) _params['link_video'] = link_video;
    return _api.request('wall.editAdsStealth', {
      ..._params,
    });
  }

  /// Edits a comment on a user wall or community wall.
  Future<Json> editComment(
      {int? owner_id,
      int? comment_id,
      String? message,
      List<dynamic>? attachments}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    return _api.request('wall.editComment', {
      ..._params,
    });
  }

  /// Returns a list of posts on a user wall or community wall.
  Future<Json> get(
      {int? owner_id,
      String? domain,
      int? offset,
      int? count,
      String? filter,
      bool? extended,
      List<dynamic>? fields}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (domain != null) _params['domain'] = domain;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (filter != null) _params['filter'] = filter;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('wall.get', {
      ..._params,
    });
  }

  /// Returns a list of posts from user or community walls by their IDs.
  Future<Json> getById(
      {List<dynamic>? posts,
      bool? extended,
      int? copy_history_depth,
      List<dynamic>? fields}) async {
    var _params = {};
    if (posts != null) _params['posts'] = posts;
    if (extended != null) _params['extended'] = extended;
    if (copy_history_depth != null)
      _params['copy_history_depth'] = copy_history_depth;
    if (fields != null) _params['fields'] = fields;
    return _api.request('wall.getById', {
      ..._params,
    });
  }

  /// Returns a comment on a post on a user wall or community wall.
  Future<Json> getComment(
      {int? owner_id,
      int? comment_id,
      bool? extended,
      List<dynamic>? fields}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('wall.getComment', {
      ..._params,
    });
  }

  /// Returns a list of comments on a post on a user wall or community wall.
  Future<Json> getComments(
      {int? owner_id,
      int? post_id,
      bool? need_likes,
      int? start_comment_id,
      int? offset,
      int? count,
      String? sort,
      int? preview_length,
      bool? extended,
      List<dynamic>? fields,
      int? comment_id,
      int? thread_items_count}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    if (need_likes != null) _params['need_likes'] = need_likes;
    if (start_comment_id != null)
      _params['start_comment_id'] = start_comment_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    if (sort != null) _params['sort'] = sort;
    if (preview_length != null) _params['preview_length'] = preview_length;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (thread_items_count != null)
      _params['thread_items_count'] = thread_items_count;
    return _api.request('wall.getComments', {
      ..._params,
    });
  }

  /// Returns information about reposts of a post on user wall or community wall.
  Future<Json> getReposts(
      {int? owner_id, int? post_id, int? offset, int? count}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('wall.getReposts', {
      ..._params,
    });
  }

  /// None
  Future<Json> openComments({int? owner_id, int? post_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    return _api.request('wall.openComments', {
      ..._params,
    });
  }

  /// Pins the post on wall.
  Future<Json> pin({int? owner_id, int? post_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    return _api.request('wall.pin', {
      ..._params,
    });
  }

  /// Adds a new post on a user wall or community wall. Can also be used to publish suggested or scheduled posts.
  Future<Json> post(
      {int? owner_id,
      bool? friends_only,
      bool? from_group,
      String? message,
      List<dynamic>? attachments,
      String? services,
      bool? signed,
      int? publish_date,
      dynamic lat,
      dynamic long,
      int? place_id,
      int? post_id,
      String? guid,
      bool? mark_as_ads,
      bool? close_comments,
      int? donut_paid_duration,
      bool? mute_notifications,
      String? copyright,
      int? topic_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (friends_only != null) _params['friends_only'] = friends_only;
    if (from_group != null) _params['from_group'] = from_group;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    if (services != null) _params['services'] = services;
    if (signed != null) _params['signed'] = signed;
    if (publish_date != null) _params['publish_date'] = publish_date;
    if (lat != null) _params['lat'] = lat;
    if (long != null) _params['long'] = long;
    if (place_id != null) _params['place_id'] = place_id;
    if (post_id != null) _params['post_id'] = post_id;
    if (guid != null) _params['guid'] = guid;
    if (mark_as_ads != null) _params['mark_as_ads'] = mark_as_ads;
    if (close_comments != null) _params['close_comments'] = close_comments;
    if (donut_paid_duration != null)
      _params['donut_paid_duration'] = donut_paid_duration;
    if (mute_notifications != null)
      _params['mute_notifications'] = mute_notifications;
    if (copyright != null) _params['copyright'] = copyright;
    if (topic_id != null) _params['topic_id'] = topic_id;
    return _api.request('wall.post', {
      ..._params,
    });
  }

  /// Allows to create hidden post which will not be shown on the community's wall and can be used for creating an ad with type 'Community post'.
  Future<Json> postAdsStealth(
      {int? owner_id,
      String? message,
      List<dynamic>? attachments,
      bool? signed,
      dynamic lat,
      dynamic long,
      int? place_id,
      String? guid,
      String? link_button,
      String? link_title,
      String? link_image,
      String? link_video}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (message != null) _params['message'] = message;
    if (attachments != null) _params['attachments'] = attachments;
    if (signed != null) _params['signed'] = signed;
    if (lat != null) _params['lat'] = lat;
    if (long != null) _params['long'] = long;
    if (place_id != null) _params['place_id'] = place_id;
    if (guid != null) _params['guid'] = guid;
    if (link_button != null) _params['link_button'] = link_button;
    if (link_title != null) _params['link_title'] = link_title;
    if (link_image != null) _params['link_image'] = link_image;
    if (link_video != null) _params['link_video'] = link_video;
    return _api.request('wall.postAdsStealth', {
      ..._params,
    });
  }

  /// Reports (submits a complaint about) a comment on a post on a user wall or community wall.
  Future<Json> reportComment(
      {int? owner_id, int? comment_id, int? reason}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    if (reason != null) _params['reason'] = reason;
    return _api.request('wall.reportComment', {
      ..._params,
    });
  }

  /// Reports (submits a complaint about) a post on a user wall or community wall.
  Future<Json> reportPost({int? owner_id, int? post_id, int? reason}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    if (reason != null) _params['reason'] = reason;
    return _api.request('wall.reportPost', {
      ..._params,
    });
  }

  /// Reposts (copies) an object to a user wall or community wall.
  Future<Json> repost(
      {String? object,
      String? message,
      int? group_id,
      bool? mark_as_ads,
      bool? mute_notifications}) async {
    var _params = {};
    if (object != null) _params['object'] = object;
    if (message != null) _params['message'] = message;
    if (group_id != null) _params['group_id'] = group_id;
    if (mark_as_ads != null) _params['mark_as_ads'] = mark_as_ads;
    if (mute_notifications != null)
      _params['mute_notifications'] = mute_notifications;
    return _api.request('wall.repost', {
      ..._params,
    });
  }

  /// Restores a post deleted from a user wall or community wall.
  Future<Json> restore({int? owner_id, int? post_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    return _api.request('wall.restore', {
      ..._params,
    });
  }

  /// Restores a comment deleted from a user wall or community wall.
  Future<Json> restoreComment({int? owner_id, int? comment_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (comment_id != null) _params['comment_id'] = comment_id;
    return _api.request('wall.restoreComment', {
      ..._params,
    });
  }

  /// Allows to search posts on user or community walls.
  Future<Json> search(
      {int? owner_id,
      String? domain,
      String? query,
      bool? owners_only,
      int? count,
      int? offset,
      bool? extended,
      List<dynamic>? fields}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (domain != null) _params['domain'] = domain;
    if (query != null) _params['query'] = query;
    if (owners_only != null) _params['owners_only'] = owners_only;
    if (count != null) _params['count'] = count;
    if (offset != null) _params['offset'] = offset;
    if (extended != null) _params['extended'] = extended;
    if (fields != null) _params['fields'] = fields;
    return _api.request('wall.search', {
      ..._params,
    });
  }

  /// Unpins the post on wall.
  Future<Json> unpin({int? owner_id, int? post_id}) async {
    var _params = {};
    if (owner_id != null) _params['owner_id'] = owner_id;
    if (post_id != null) _params['post_id'] = post_id;
    return _api.request('wall.unpin', {
      ..._params,
    });
  }
}

class Widgets {
  final API _api;

  Widgets(this._api);

  /// Gets a list of comments for the page added through the [vk.com/dev/Comments|Comments widget].
  Future<Json> getComments(
      {int? widget_api_id,
      String? url,
      String? page_id,
      String? order,
      List<dynamic>? fields,
      int? offset,
      int? count}) async {
    var _params = {};
    if (widget_api_id != null) _params['widget_api_id'] = widget_api_id;
    if (url != null) _params['url'] = url;
    if (page_id != null) _params['page_id'] = page_id;
    if (order != null) _params['order'] = order;
    if (fields != null) _params['fields'] = fields;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('widgets.getComments', {
      ..._params,
    });
  }

  /// Gets a list of application/site pages where the [vk.com/dev/Comments|Comments widget] or [vk.com/dev/Like|Like widget] is installed.
  Future<Json> getPages(
      {int? widget_api_id,
      String? order,
      String? period,
      int? offset,
      int? count}) async {
    var _params = {};
    if (widget_api_id != null) _params['widget_api_id'] = widget_api_id;
    if (order != null) _params['order'] = order;
    if (period != null) _params['period'] = period;
    if (offset != null) _params['offset'] = offset;
    if (count != null) _params['count'] = count;
    return _api.request('widgets.getPages', {
      ..._params,
    });
  }
}
