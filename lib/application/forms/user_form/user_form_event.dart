part of 'user_form_bloc.dart';

@freezed
class UserFormEvent with _$UserFormEvent {
  const factory UserFormEvent.getInitialData() = _GetInitialData;
  const factory UserFormEvent.userNameChanged(String userNameStr) =
      _UserNameChanged;
  const factory UserFormEvent.userIDChanged(String userIDStr) = _UserIDChanged;
  const factory UserFormEvent.avatarImageChanged(XFile file) =
      _AvatarImageChanged;
  const factory UserFormEvent.backgroundImageChanged(XFile file) =
      _BackgroundImageChanged;
  const factory UserFormEvent.saveButtonPressed() = _SaveButtonPressed;
  const factory UserFormEvent.stateChanged(UserFormState state) = _StateChanged;
}
