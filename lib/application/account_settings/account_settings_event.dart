part of 'account_settings_bloc.dart';

@freezed
class AccountSettingsEvent with _$AccountSettingsEvent {
  const factory AccountSettingsEvent.started() = _Started;
  const factory AccountSettingsEvent.changeProfilePicStyle(
    ProfilePic profilePic,
  ) = _ChangeProfilePicStyle;
  const factory AccountSettingsEvent.addLinkedContact(
    LinkedContact linkedContact,
  ) = _AddLinkedContact;
  const factory AccountSettingsEvent.removeLinkedContact(int index) =
      _RemoveLinkedContact;
  const factory AccountSettingsEvent.changeLinkedContactOrder(
    int oldIndex,
    int newIndex,
  ) = _ChangeLinkedContactOrder;
  const factory AccountSettingsEvent.replaceLinkedContact(
    int index,
    LinkedContact linkedContact,
  ) = _ReplaceLinkedContact;
  const factory AccountSettingsEvent.saveChanges() = _SaveChanges;
  const factory AccountSettingsEvent.deletePosts() = _DeletePosts;
  const factory AccountSettingsEvent.pauseAccount() = _PauseAccount;
  const factory AccountSettingsEvent.requestAccountVerification() =
      _RequestAccountVerification;
  const factory AccountSettingsEvent.deleteAccount(String password) =
      _DeleteAccount;
}
