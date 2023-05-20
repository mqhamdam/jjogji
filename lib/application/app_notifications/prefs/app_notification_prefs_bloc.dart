
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/infrastructure/core/local_db_handler.dart';

part 'app_notification_prefs_event.dart';
part 'app_notification_prefs_state.dart';
part 'app_notification_prefs_bloc.freezed.dart';

class AppNotificationPrefsBloc
    extends Bloc<AppNotificationPrefsEvent, AppNotificationPrefsState> {
  bool get isChanged => state.prefs != state.prefsTemp;

  final LocalDB localDB = LocalDB.instance;

  AppNotificationPrefsBloc() : super(AppNotificationPrefsState.initial()) {
    on<AppNotificationPrefsEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          await _OnStarted(event, emit);
        },
        updated: (event) async {
          await _OnUpdated(event, emit);
        },
        toggleInfo: (event) async {
          await _OnToggleInfo(event, emit);
        },
        toggleLike: (event) async {
          await _OnToggleLike(event, emit);
        },
        toggleFollow: (event) async {
          await _OnToggleFollow(event, emit);
        },
        toggleComments: (event) async {
          await _OnToggleComments(event, emit);
        },
        toggleEnable: (event) async {
          await _OnToggleEnable(event, emit);
        },
      );
    });
  }

  Future<void> _OnStarted(
      _Started event, Emitter<AppNotificationPrefsState> emit,) async {
    final prefs = await localDB.getNotificationSettings();
    emit(state.copyWith(prefs: prefs, prefsTemp: prefs, init: true));
  }

  Future<void> _OnUpdated(
      _Updated event, Emitter<AppNotificationPrefsState> emit,) async {
    localDB.setNotificationSettings(state.prefs);
  }

  Future<void> _OnToggleInfo(
      _ToggleInfo event, Emitter<AppNotificationPrefsState> emit,) async {
    emit(
      state.copyWith(
        prefs: state.prefs.copyWith(
          info: !state.prefs.info,
        ),
      ),
    );
  }

  Future<void> _OnToggleLike(
      _ToggleLike event, Emitter<AppNotificationPrefsState> emit,) async {
    emit(state.copyWith(prefs: state.prefs.copyWith(like: !state.prefs.like)));
  }

  Future<void> _OnToggleFollow(
      _ToggleFollow event, Emitter<AppNotificationPrefsState> emit,) async {
    emit(state.copyWith(
        prefs: state.prefs.copyWith(follow: !state.prefs.follow),),);
  }

  Future<void> _OnToggleComments(
      _ToggleComments event, Emitter<AppNotificationPrefsState> emit,) async {
    emit(state.copyWith(
        prefs: state.prefs.copyWith(comments: !state.prefs.comments),),);
  }

  Future<void> _OnToggleEnable(
      _ToggleEnable event, Emitter<AppNotificationPrefsState> emit,) async {
    final en = !state.prefs.isEnabled;
    emit(
      state.copyWith(
        prefs: state.prefs.copyWith(
          like: en,
          isEnabled: en,
          follow: en,
          comments: en,
          info: en,
        ),
      ),
    );
  }
}
