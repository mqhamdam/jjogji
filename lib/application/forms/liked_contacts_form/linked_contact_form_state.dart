part of 'linked_contact_form_bloc.dart';

@freezed
class LinkedContactFormState with _$LinkedContactFormState {
  const factory LinkedContactFormState({
    required LinkedContact linkedContact,

  }) = _LinkedContactFormState;
   factory LinkedContactFormState.initial() => LinkedContactFormState(
    linkedContact: LinkedContact.dflt(),
  );
}
