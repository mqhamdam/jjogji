import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/user/value_objects.dart';
import 'package:jjogji/infrastructure/user/user_repo.dart';
import 'package:overlay_support/overlay_support.dart';

part 'userid_form_event.dart';
part 'userid_form_state.dart';
part 'userid_form_bloc.freezed.dart';

class UseridFormBloc extends Bloc<UseridFormEvent, UseridFormState> {
  final UserRepo _userRepo = UserRepo.instance;
  final UserID oldId;
  bool get hasChanged => state.userID != oldId;
  bool get isValid => state.userID.isValid();
  UseridFormBloc(this.oldId) : super(UseridFormState.initial()) {
    on<UseridFormEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          await onStarted(e, emit);
        },
        userIDChanged: (e) async {
          await onUserIDChanged(e, emit);
        },
        saveButtonPressed: (e) async {
          await onSaveButtonPressed(e, emit);
        },
      );
    });
  }

  Future<void> onStarted(
    _Started event,
    Emitter<UseridFormState> emit,
  ) async {}

  Future<void> onUserIDChanged(
    _UserIDChanged event,
    Emitter<UseridFormState> emit,
  ) async {
    emit(
      state.copyWith(
        userID: UserID(event.userIDStr),
        isSuccess: false,
      ),
    );
  }

  Future<void> onSaveButtonPressed(
    _SaveButtonPressed event,
    Emitter<UseridFormState> emit,
  ) async {
    emit(state.copyWith(isFetching: true));
    final res = await _userRepo.updateUserID(state.userID);
    if (res) {
      toast('UserID changed!');
    } else {
      toast('UserID exists!');
    }
    emit(state.copyWith(isSuccess: res,isFetching: false));
  }
}
