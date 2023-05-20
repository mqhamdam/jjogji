part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;
  const factory UserEvent.getData(UUID uuid) = _UserGetDataEvent;
  const factory UserEvent.updateData() = _UserUpdateDataEvent;
  const factory UserEvent.subscribeEvent() = _UserSubscribeEvent;
  const factory UserEvent.unsubscribeEvent() = _UserUnsubscribeEvent;
  const factory UserEvent.addToBestiesEvent() = _AddToBestiesEvent;
  const factory UserEvent.removeFromBestiesEvent() = _RemoveFromBestiesEvent;
  const factory UserEvent.blockUser() = _BlockUserEvent;
  const factory UserEvent.unBlockUser() = _UnBlockUser;
  const factory UserEvent.subscribeButtonPressed() =
      _SubscribeButtonPressedEvent;
  const factory UserEvent.bestiesButtonPressed() = _BestiesButtonPressedEvent;
  const factory UserEvent.blockButtonPressedEvent() = _BlockButtonPressedEvent;
  const factory UserEvent.checkUserRelationType() = _CheckUserRelationType;
}
