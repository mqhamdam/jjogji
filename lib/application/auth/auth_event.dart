part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userSigned() = _UserSignedEvent;
  const factory AuthEvent.userSignedOut() = _UserSignedOutEvent;
  const factory AuthEvent.getSignedUserCredentials() = _GetSignedUserCredentialsEvent;
  const factory AuthEvent.listenToAuthChanges() = _ListenToAuthChangesEvent;
  const factory AuthEvent.signOutButtonPressed() = _SignOutButtonPressedEvent;
}
