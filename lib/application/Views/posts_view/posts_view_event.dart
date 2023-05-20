part of 'posts_view_bloc.dart';

@freezed
class PostsViewEvent with _$PostsViewEvent {
  const factory PostsViewEvent.started() = _Started;
  const factory PostsViewEvent.fetchPosts(int skip) = _FetchPosts;
  const factory PostsViewEvent.fetchNextPosts( ) = _FetchNextPosts;
  const factory PostsViewEvent.stateChanged(PostsViewState state) =
      _FetchPostsSuccess;
  const factory PostsViewEvent.refreshList() = _RefreshList;
  const factory PostsViewEvent.filterChangedEvent(PostFilter postFilter) =
      _FilterChangedEvent;
}
