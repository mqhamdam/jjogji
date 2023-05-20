part of 'comments_list_view_bloc.dart';

@freezed
class CommentsListViewEvent with _$CommentsListViewEvent {
  const factory CommentsListViewEvent.started() = _Started;
  const factory CommentsListViewEvent.fetchList(int skip) = _FetchLists;
  const factory CommentsListViewEvent.refreshList() = _RefreshList;
  const factory CommentsListViewEvent.stateChanged(
      CommentsListViewState state,) = _StateChanged;
  const factory CommentsListViewEvent.addComment(CommentBody comment) =
      _AddComment;
}
