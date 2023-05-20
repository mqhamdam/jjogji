part of 'app_notifications_bloc.dart';

@freezed
class AppNotificationsEvent with _$AppNotificationsEvent {
  const factory AppNotificationsEvent.init() = _Init;
  const factory AppNotificationsEvent.pullNotifications() = _PullNotifications;
  const factory AppNotificationsEvent.refreshList() = _RefreshList;
  const factory AppNotificationsEvent.loadMoreNotifications() =
      _LoadMoreNotifications;
  const factory AppNotificationsEvent.incrementNotReadCount() =
      _IncrementNotReadCount;
  const factory AppNotificationsEvent.setZeroNotReadCount() =
      _SetZeroNotReadCount;
  
}
