part of 'posts_view_bloc.dart';

@freezed
class PostsViewState with _$PostsViewState {
  const factory PostsViewState({
    required List<Post> posts,
    required AppFilter postFilter,
    required bool isFetching,
    required bool hasReachedMax,
    required bool fetchingNext,
  }) = _PostsViewStateData;

  factory PostsViewState.dflt() =>  PostsViewState(
        posts: <Post>[],
        postFilter: PostFilter.dflt(),
        isFetching: false,
        hasReachedMax: false,
        fetchingNext: false,
        
      );
}
