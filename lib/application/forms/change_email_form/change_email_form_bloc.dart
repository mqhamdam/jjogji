import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/auth/auth_failures.dart';
import 'package:jjogji/domain/auth/value_objects.dart';
import 'package:jjogji/infrastructure/auth/auth_facade.dart';

part 'change_email_form_event.dart';
part 'change_email_form_state.dart';
part 'change_email_form_bloc.freezed.dart';

class ChangeEmailFormBloc
    extends Bloc<ChangeEmailFormEvent, ChangeEmailFormState> {
  final AuthFacade _authFacade = AuthFacade.instance;

  bool get isFormValid {
    return state.emailAddress.isValid() && state.passwordVO.isValid();
  }

  ChangeEmailFormBloc() : super(ChangeEmailFormState.initial()) {
    on<ChangeEmailFormEvent>((event, emit) async {
      await event.map(
        started: (event) async {},
        emailChanged: (event) async {
          await _OnEmailChanged(event, emit);
        },
        changeEmailBtnPressed: (event) async {
          await _OnChangeEmailBtnPressed(event, emit);
        },
        passwordChanged: (event) async {
          await _OnPasswordChanged(event, emit);
        },
      );
    });
  }

  Future<void> _OnEmailChanged(
    _EmailChanged event,
    Emitter<ChangeEmailFormState> emit,
  ) async {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(event.emailStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _OnPasswordChanged(
    _PasswordChanged event,
    Emitter<ChangeEmailFormState> emit,
  ) async {
    emit(
      state.copyWith(
        passwordVO: PasswordVO(event.passwordStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _OnChangeEmailBtnPressed(
    _ChangeEmailBtnPressed event,
    Emitter<ChangeEmailFormState> emit,
  ) async {
    Either<AuthFailures, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.passwordVO.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _authFacade.changeEmailAddress(
        state.passwordVO,
        state.emailAddress,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
        popPage: failureOrSuccess != null,
      ),
    );
  }
}
