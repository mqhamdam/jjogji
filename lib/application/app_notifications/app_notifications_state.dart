part of 'app_notifications_bloc.dart';

@freezed
class AppNotificationsState with _$AppNotificationsState {
  const factory AppNotificationsState({
    required List<AppNotification> appNotifications,
    required int notReadCount,
    required bool isFetching,
    required bool isFetchingNew,
    required bool hasReachedMax,
  }) = _AppNotification;

  factory AppNotificationsState.init() => const AppNotificationsState(
        appNotifications: <AppNotification>[],
        notReadCount: 0,
        isFetching: false,
        isFetchingNew:false,
        hasReachedMax: false,
      );
}
