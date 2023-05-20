part of 'app_notification_prefs_bloc.dart';

@freezed
class AppNotificationPrefsState with _$AppNotificationPrefsState {
  const factory AppNotificationPrefsState(
    AppNotificationPrefs prefs,
    AppNotificationPrefs prefsTemp,
    bool init,
  ) = _AppNotificationPrefsState;

  factory AppNotificationPrefsState.initial() => AppNotificationPrefsState(
        AppNotificationPrefs.empty(),
        AppNotificationPrefs.empty(),
        false,
      );
}
