part of 'linked_contact_form_bloc.dart';

@freezed
class LinkedContactFormEvent with _$LinkedContactFormEvent {
  const factory LinkedContactFormEvent.started(LinkedContact? linkedContact) = _Started;
  const factory LinkedContactFormEvent.changeUrl(String urlStr) = _ChangeUrl;
  const factory LinkedContactFormEvent.changeType(LinkedService type) =
      _ChangeType;
  const factory LinkedContactFormEvent.submit() = _Submit;
}
