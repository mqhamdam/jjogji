import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

///
@freezed
abstract class AuthFailures with _$AuthFailures {
  const factory AuthFailures.unexpected() = _AuthFailuresUnexpected;
  
  const factory AuthFailures.weakPassword() = _AuthFailuresWeakPassword;
  const factory AuthFailures.wrongPassword() = _AuthWrongPassword;
  const factory AuthFailures.invalidEmail() = _AuthInvalidEmail;
  const factory AuthFailures.unverifiedEmail() = _AuthFailuresUnverifiedEmail;
  const factory AuthFailures.userNotFound() = _AuthFailuresUserNotFound;
  const factory AuthFailures.invalidEmailAndPasswordCombination() =
      _AuthFailuresInvalidEmailAndPasswordCombination;
  const factory AuthFailures.emailAlreadyInUse() = _AuthFailuresEmailAlreadyInUse;
  const factory AuthFailures.serverError() = _AuthFailuresServerError;
}
