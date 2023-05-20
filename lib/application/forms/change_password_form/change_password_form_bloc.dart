import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/auth/auth_failures.dart';
import 'package:jjogji/domain/auth/value_objects.dart';
import 'package:jjogji/infrastructure/auth/auth_facade.dart';

part 'change_password_form_event.dart';
part 'change_password_form_state.dart';
part 'change_password_form_bloc.freezed.dart';

class ChangePasswordFormBloc
    extends Bloc<ChangePasswordFormEvent, ChangePasswordFormState> {
  final AuthFacade _authFacade = AuthFacade.instance;

  bool get passwordMatch {
    if (state.newPassword.isValid() &&
        state.confirmPassword.isValid() &&
        state.oldPassword.isValid()) {
      if (state.newPassword.getOrCrash() == state.oldPassword.getOrCrash()) {
        return false;
      }
      return state.newPassword.getOrCrash() ==
          state.confirmPassword.getOrCrash();
    }
    return false;
  }

  ChangePasswordFormBloc() : super(ChangePasswordFormState.initial()) {
    on<ChangePasswordFormEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          _OnStarted(event, emit);
        },
        oldPasswordChanged: (event) async {
          await _OnOldPasswordChanged(event, emit);
        },
        newPasswordChanged: (event) async {
          await _OnNewPasswordChanged(event, emit);
        },
        confirmPasswordChanged: (event) async {
          await _OnConfirmPasswordChanged(event, emit);
        },
        changePasswordBtnPressed: (event) async {
          await _OnChangePasswordBtnPressed(event, emit);
        },
      );
    });
  }

  Future<void> _OnStarted(
    _Started event,
    Emitter<ChangePasswordFormState> emit,
  ) async {}

  Future<void> _OnOldPasswordChanged(
    _OldPasswordChanged event,
    Emitter<ChangePasswordFormState> emit,
  ) async {
    emit(
      state.copyWith(
        oldPassword: PasswordVO(event.oldPasswordStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _OnNewPasswordChanged(
    _NewPasswordChanged event,
    Emitter<ChangePasswordFormState> emit,
  ) async {
    emit(
      state.copyWith(
        newPassword: PasswordVO(event.newPasswordStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _OnConfirmPasswordChanged(
    _ConfirmPasswordChanged event,
    Emitter<ChangePasswordFormState> emit,
  ) async {
    emit(
      state.copyWith(
        confirmPassword: PasswordVO(event.confirmPasswordStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _OnChangePasswordBtnPressed(
    _ChangePasswordBtnPressed event,
    Emitter<ChangePasswordFormState> emit,
  ) async {
    emit(state.copyWith(isSubmitting: true));

    final res =
        await _authFacade.changePassword(state.oldPassword, state.newPassword);
    res.fold(
      (l) {
        emit(
          state.copyWith(
            isSubmitting: false,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            isSubmitting: false,
          ),
        );
      },
    );
  }
}
