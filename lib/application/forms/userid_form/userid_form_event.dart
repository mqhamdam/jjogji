part of 'userid_form_bloc.dart';

@freezed
class UseridFormEvent with _$UseridFormEvent {
  const factory UseridFormEvent.started() = _Started;
  const factory UseridFormEvent.userIDChanged(String userIDStr) = _UserIDChanged;
  const factory UseridFormEvent.saveButtonPressed() = _SaveButtonPressed;
}
