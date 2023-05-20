part of 'account_settings_bloc.dart';

@freezed
class AccountSettingsState with _$AccountSettingsState {
  const factory AccountSettingsState({
    required User userData,
    required User userTempData,
  }) = _AccountSettingsState;

   factory AccountSettingsState.initial() => AccountSettingsState(
        userData: User.empty(),
        userTempData: User.empty(),
      );
}
