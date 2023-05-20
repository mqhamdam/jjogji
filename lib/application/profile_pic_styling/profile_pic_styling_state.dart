part of 'profile_pic_styling_bloc.dart';

@freezed
class ProfilePicStylingState with _$ProfilePicStylingState {
  const factory ProfilePicStylingState({
    required ProfilePic profilePic,
    required ProfilePic profilePicOld,
  }) = _ProfilePicStyling;
  factory ProfilePicStylingState.initial() => ProfilePicStylingState(
        profilePic: ProfilePic.dflt(),
        profilePicOld: ProfilePic.dflt(),
      );
}
