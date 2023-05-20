import 'dart:convert';

import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/infrastructure/notifications/app_notification_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDB {
  /// instance
  static final LocalDB instance = LocalDB._internal();

  static Future<void> updateBadgeCount(int count) async {
    if (await FlutterAppBadger.isAppBadgeSupported()) {
      if (count == 0) {
        FlutterAppBadger.removeBadge();
      } else {
        FlutterAppBadger.updateBadgeCount(count);
      }
    }
    final shPrefs = await SharedPreferences.getInstance();
    shPrefs.setInt('badgeCount', count);
  }

  Future<int> getBadgeCount() async {
    final shPrefs = await SharedPreferences.getInstance();
    final count = shPrefs.getInt('badgeCount');
    return count ?? 0;
  }

  /// internal constructor
  LocalDB._internal();

  Future<String> currentTranslatedLanguage() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    final shPrefs = sharedPreferences.containsKey('currentTranslatedLanguage');
    if (shPrefs) {
      final str = sharedPreferences.getString('currentTranslatedLanguage');
      return str!;
    } else {
      setCurrentTranslatedLanguage('en');
      return 'en';
    }
  }

  Future<void> setCurrentTranslatedLanguage(String languageCode) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    sharedPreferences.setString('currentTranslatedLanguage', languageCode);
  }

  static void changeUILanguage() {}
  static void changeTheme() {}
  static void changeNotificationSettings() {}

  Future<void> setNotificationSettings(
    AppNotificationPrefs appNotificationPrefs,
  ) async {
    final shPrefs = await SharedPreferences.getInstance();
    final enCodeJson = jsonEncode(
      AppNotificationPrefsDto.fromDomain(appNotificationPrefs).toJson(),
    );
    shPrefs.setString('appNotificationPrefs', enCodeJson);
  }

  Future<AppNotificationPrefs> getNotificationSettings() async {
    final shPrefs = await SharedPreferences.getInstance();

    final prefs = shPrefs.getString('appNotificationPrefs');
    if (prefs != null) {
      final Map<String, dynamic> decoded =
          jsonDecode(prefs) as Map<String, dynamic>;
      // prefs = jsonDecode(prefs);
      return AppNotificationPrefsDto.fromJson(decoded).toDomain();
    } else {
      return const AppNotificationPrefs(
        info: true,
        like: true,
        follow: true,
        comments: true,
        isEnabled: true,
      );
    }
  }

  Future<String> getSelectedTranslateLang() async {
    final prefs = await SharedPreferences.getInstance();
    final lang = prefs.getString('selectedTranslateLang');
    return lang ?? 'en';
  }

  Future<List<String>> getResentSearches() async {
    final prefs = await SharedPreferences.getInstance();
    final searches = prefs.getStringList('resentSearches');
    return searches ?? [];
  }

  Future<void> addRecentSearch(String search) async {
    final prefs = await SharedPreferences.getInstance();
    final searches = prefs.getStringList('resentSearches');
    if (searches != null) {
      if (searches.contains(search)) {
        searches.remove(search);
      }
      searches.add(search);
      prefs.setStringList('resentSearches', searches);
    } else {
      prefs.setStringList('resentSearches', [search]);
    }
  }

  /// if string empty delete all
  Future<void> clearRecentSearches(String value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value.isNotEmpty) {
      final searches = prefs.getStringList('resentSearches');
      searches!.remove(value);
      prefs.setStringList('resentSearches', searches);
    } else {
      prefs.setStringList('resentSearches', []);
    }
  }

  List<String> getCountryCodes() {
    return [
      'ko', // 0
      'ru', // 1
      'en', // 2
      'fr', // 3
      'es', // 4
      'ja', // 5
      'zh-cn', // 6
      'vi', // 7
      'th', // 8
      'fil', //9
      'km', // 10
      'mn', // 11
      'ne', // 12
      'id', // 13
      'ms', // 14
      'ar', // 15
      'hi', // 16
      'tr', // 17
    ];
  }
}
