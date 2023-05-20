part of 'profile_pic_styling_bloc.dart';

@freezed
class ProfilePicStylingEvent with _$ProfilePicStylingEvent {
  const factory ProfilePicStylingEvent.started(ProfilePic profilePic) = _Started;
  const factory ProfilePicStylingEvent.changeState(
      ProfilePicStylingState state,) = _ChangeState;

  ///////
  const factory ProfilePicStylingEvent.changeRGRadius(double value) =
      _ChangeRGRadius;
  const factory ProfilePicStylingEvent.addRGColor(int color) = _AddRGColor;
  const factory ProfilePicStylingEvent.deleteRGColor(int index) =
      _DeleteRGColor;
  const factory ProfilePicStylingEvent.changeRGOrder(int oldI, int newI) =
      _ChangeRGOrder;

  //////
  const factory ProfilePicStylingEvent.changeLGXStartPosition(double x) =
      _ChangeLGXStartPosition;
  const factory ProfilePicStylingEvent.changeLGYStartPosition(double y) =
      _ChangeLGYStartPosition;
  const factory ProfilePicStylingEvent.changeLGXEndPosition(double x) =
      _ChangeLGXEndPosition;
  const factory ProfilePicStylingEvent.changeLGYEndPosition(double y) =
      _ChangeLGYEndPosition;
  const factory ProfilePicStylingEvent.addLGColor(int color) = _AddLGColor;
  const factory ProfilePicStylingEvent.deleteLGColor(int index) =
      _DeleteLGColor;
  const factory ProfilePicStylingEvent.changeLGOrder(int oldI, int newI) =
      _ChangeLGOrder;
  ///////
  ///

  const factory ProfilePicStylingEvent.changeSGXEpicenterPosition(double x) =
      _ChangeSGXEpicenterPosition;
  const factory ProfilePicStylingEvent.changeSGYEpicenterPosition(double y) =
      _ChangeSGYEpicenterPosition;
  const factory ProfilePicStylingEvent.changeSGStartAngle(double angle) =
      _ChangeSGStartAngle;
  const factory ProfilePicStylingEvent.changeSGSEndAngle(double angle) =
      _ChangeSGEndAngle;
  const factory ProfilePicStylingEvent.addSGColor(int color) = _AddSGColor;
  const factory ProfilePicStylingEvent.deleteSGColor(int index) =
      _DeleteSGColor;
  const factory ProfilePicStylingEvent.changeSGOrder(int oldI, int newI) =
      _ChangeSGOrder;
  ////////
  ///
  
  const factory ProfilePicStylingEvent.changeChoosedPolygonStyle(int index) =
      _ChangeChoosedPolygonStyle;
  //const factory ProfilePicStylingEvent.
}
