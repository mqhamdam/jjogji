import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/auth/auth_failures.dart';
import 'package:jjogji/domain/auth/i_auth_facade.dart';
import 'package:jjogji/domain/auth/value_objects.dart';

part 'auth_form_event.dart';
part 'auth_form_state.dart';
part 'auth_form_bloc.freezed.dart';

class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final IAuthFacade _authFacade;

  bool get isFormValid {
    return state.emailAddress.isValid() && state.passwordVO.isValid();
  }

  AuthFormBloc(this._authFacade) : super(AuthFormState.empty()) {
    on<AuthFormEvent>(
      (event, emit) {
        event.map(
          emailChanged: (e) => emit(
            state.copyWith(
              emailAddress: EmailAddress(e.emailStr),
              authFailureOrSuccessOption: none(),
            ),
          ),
          passwordChanged: (e) => emit(
            state.copyWith(
              passwordVO: PasswordVO(e.passwordStr),
              authFailureOrSuccessOption: none(),
            ),
          ),
          signUpUserWithEmailAndPasswordPressed: (e) {
            _performAction(
              _authFacade.signUpWithEmailAndPassword,
            );
          },
          signInUserWithEmailAndPasswordPressed: (e) {
            _performAction(
              _authFacade.signInWithEmailAndPassword,
            );
          },
          errorMessageChanged: (e) {
            emit(
              state.copyWith(
                authFailureOrSuccessOption: e.failureOrSuccess,
              ),
            );
          },
          toggleSubmitButton: (e) {
            emit(
              state.copyWith(
                isSubmitting: e.isSubmitting,
              ),
            );
          },
          updateState: (e) {
            emit(e.state);
          },
        );
      },
    );
  }

  Future _performAction(
    Future<Either<AuthFailures, Unit>> Function(
      EmailAddress emailAddress,
      PasswordVO passwordVO,
    ) forwardedCall,
  ) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.passwordVO.isValid();

    Either<AuthFailures, Unit> failureOrSuccess;
    if (isEmailValid && isPasswordValid) {
      //  emit(state.copyWith(
      //   isSubmitting: true,
      //   authFailureOrSuccessOption: none(),
      // ));
      failureOrSuccess = await forwardedCall(
        state.emailAddress,
        state.passwordVO,
      );

      add(
        AuthFormEvent.updateState(
          state.copyWith(
            showErrorMessages: true,
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        ),
      );
    }
  }
}
