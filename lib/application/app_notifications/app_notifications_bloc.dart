import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/infrastructure/core/api_handler.dart';
import 'package:jjogji/infrastructure/core/local_db_handler.dart';

part 'app_notifications_event.dart';
part 'app_notifications_state.dart';
part 'app_notifications_bloc.freezed.dart';

class AppNotificationsBloc
    extends Bloc<AppNotificationsEvent, AppNotificationsState> {
  final ApiHandler _apiHandler = ApiHandler.instance;
  final LocalDB _localDB = LocalDB.instance;
  AppNotificationsBloc() : super(AppNotificationsState.init()) {
    on<AppNotificationsEvent>((event, emit) async {
      await event.map(
        init: (e) async {
          final notReadCount = await _localDB.getBadgeCount();
          emit(state.copyWith(notReadCount: notReadCount));
        },
        pullNotifications: (e) async {
          await _OnPullNotifications(e, emit);
        },
        refreshList: (e) async {
          await _OnRefreshList(e, emit);
        },
        loadMoreNotifications: (event) async {
          await _OnLoadMoreNotifications(event, emit);
        },
        incrementNotReadCount: (event) async {
          await _OnIncrementNotReadCount(event, emit);
        },
        setZeroNotReadCount: (event) async {
          await _OnSetZeroNotReadCount(event, emit);
        },
      );
    });
  }

  Future<void> _OnPullNotifications(
    _PullNotifications event,
    Emitter<AppNotificationsState> emit,
  ) async {
    if (state.isFetching == true) return;

    emit(state.copyWith(isFetching: true));
    final res = await _apiHandler.getNotifications(0);

    final List<AppNotification> notifications = [];

    res.fold(
      (l) => null,
      (r) => notifications.insertAll(0, r),
    );

    final int notReadCount = notifications
        .where((element) => element.hasRead == false)
        .toList()
        .length;
    LocalDB.updateBadgeCount(notReadCount);
    emit(
      state.copyWith(
        appNotifications: notifications,
        notReadCount: notReadCount,
        hasReachedMax: notifications.isEmpty,
        isFetchingNew: false,
        isFetching: false,
      ),
    );
  }

  Future<void> _OnLoadMoreNotifications(
    _LoadMoreNotifications event,
    Emitter<AppNotificationsState> emit,
  ) async {
    if (state.hasReachedMax || state.isFetchingNew) return;

    emit(state.copyWith(isFetchingNew: true));

    final res =
        await _apiHandler.getNotifications(state.appNotifications.length);

    final List<AppNotification> notifications = List.of(state.appNotifications);
    final List<AppNotification> newNotifications = [];
    res.fold(
      (l) => null,
      (r) => newNotifications.addAll(r),
    );

    final int notReadCount = newNotifications
        .where((element) => element.hasRead == false)
        .toList()
        .length;

    LocalDB.updateBadgeCount(state.notReadCount + notReadCount);

    emit(
      state.copyWith(
        appNotifications: notifications..addAll(newNotifications),
        notReadCount: notReadCount + state.notReadCount,
        hasReachedMax: newNotifications.isEmpty,
        isFetchingNew: false,
      ),
    );
  }

  Future<void> _OnRefreshList(
    _RefreshList event,
    Emitter<AppNotificationsState> emit,
  ) async {
    if (state.isFetching == true) return;
    emit(state.copyWith(isFetching: true));
    final res = await _apiHandler.getNotifications(0);

    final List<AppNotification> notifications = [];

    res.fold(
      (l) => null,
      (r) => notifications.insertAll(0, r),
    );
    final int notReadCount = notifications
        .where((element) => element.hasRead == false)
        .toList()
        .length;
    LocalDB.updateBadgeCount(notReadCount);
    emit(
      state.copyWith(
          appNotifications: notifications,
          notReadCount: notReadCount,
          hasReachedMax: notifications.isEmpty,
          isFetching: false,),
    );
  }

  Future<void> _OnIncrementNotReadCount(
    _IncrementNotReadCount event,
    Emitter<AppNotificationsState> emit,
  ) async {
    LocalDB.updateBadgeCount(state.notReadCount + 1);
    emit(
      state.copyWith(
        notReadCount: state.notReadCount + 1,
      ),
    );
  }

  Future<void> _OnSetZeroNotReadCount(
    _SetZeroNotReadCount event,
    Emitter<AppNotificationsState> emit,
  ) async {
    LocalDB.updateBadgeCount(0);
    emit(
      state.copyWith(
        notReadCount: 0,
      ),
    );
  }
}
