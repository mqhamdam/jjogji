part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState({
    required Post post,
    required PostBody translatedPostBody,
    required PostRelation postRelation,
    required bool isFetching,
    required bool isTranslating,
  }) = _PostState;

  factory PostState.dflt() => PostState(
        post: Post.empty(),
        postRelation: PostRelation.dflt(),
        isTranslating: false,
        translatedPostBody: PostBody(''),
        isFetching: true,
      );
}
