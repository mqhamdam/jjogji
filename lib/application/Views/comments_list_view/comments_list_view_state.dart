part of 'comments_list_view_bloc.dart';

@freezed
class CommentsListViewState with _$CommentsListViewState {
  const factory CommentsListViewState({
    required List<AppComment> comments,
    required bool isFetching,
    required bool reachMax,
  }) = _CommentsListViewState;

  factory CommentsListViewState.dflt() => const CommentsListViewState(
        comments: <AppComment>[],
        isFetching: false,
        reachMax: false,
      );
}
