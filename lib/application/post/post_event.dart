part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.init() = _Init;
  const factory PostEvent.getPostData() = _GetPostData;
  const factory PostEvent.getPostAuthorData() = _GetPostAuthorData;
  const factory PostEvent.getPostRelation() = _GetPostRelation;
  const factory PostEvent.likePost() = _LikePost;
  const factory PostEvent.unlikePost() = _UnlikePost;
  const factory PostEvent.savePost() = _SavePost;
  const factory PostEvent.unsavePost() = _UnsavePost;
  const factory PostEvent.translatePost() = _TranslatePost;
  const factory PostEvent.speechPost() = _SpeechPost;
  const factory PostEvent.likeButtonPressed() = _LikeButtonPressed;
  const factory PostEvent.deleteButtonPressed() = _DeleteButtonPressed;
  const factory PostEvent.saveButtonPressed() = _SaveButtonPressed;
}
