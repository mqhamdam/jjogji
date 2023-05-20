part of 'app_notification_prefs_bloc.dart';

@freezed
class AppNotificationPrefsEvent with _$AppNotificationPrefsEvent {
  const factory AppNotificationPrefsEvent.started() = _Started;
  const factory AppNotificationPrefsEvent.updated(AppNotificationPrefs prefs) =
      _Updated;
  const factory AppNotificationPrefsEvent.toggleInfo() = _ToggleInfo;
  const factory AppNotificationPrefsEvent.toggleLike() = _ToggleLike;
  const factory AppNotificationPrefsEvent.toggleFollow() = _ToggleFollow;
  const factory AppNotificationPrefsEvent.toggleComments() = _ToggleComments;
  const factory AppNotificationPrefsEvent.toggleEnable() = _ToggleEnable;
}
