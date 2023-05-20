import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/comment/comment.dart';
import 'package:jjogji/domain/comment/value_objects.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/infrastructure/post/post_repo.dart';

part 'comments_list_view_event.dart';
part 'comments_list_view_state.dart';
part 'comments_list_view_bloc.freezed.dart';

class CommentsListViewBloc
    extends Bloc<CommentsListViewEvent, CommentsListViewState> {
  final PostRepo _postRepo = PostRepo.instance;
  final Either<UUID, AppComment> eitherUUIDorAppComment;

  UUID get postuuid => eitherUUIDorAppComment.fold((l) => l, (r) => r.postuuid);

  CommentsListViewBloc(this.eitherUUIDorAppComment)
      : super(CommentsListViewState.dflt()) {
    on<CommentsListViewEvent>(
      (event, emit) async {
        await event.map(
          started: (event) async {
            await _onStarted(event, emit);
          },
          fetchList: (event) async {
            await _onFetchComments(event, emit);
          },
          refreshList: (event) async {
            await _onRefreshComments(event, emit);
          },
          stateChanged: (e) async {
            emit(e.state);
          },
          addComment: (event) async {
            await _onAddComment(event, emit);
          },
        );
      },
    );
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<CommentsListViewState> emit,
  ) async {
    eitherUUIDorAppComment.fold(
      (l) {
        // fetchFunc = postRepo.getComments;
        add(const CommentsListViewEvent.fetchList(0));
      },
      (r) {
        // fetchFunc = postRepo.getRepliedComments;
        add(const CommentsListViewEvent.fetchList(0));
      },
    );
  }

  Future<void> _onFetchComments(
    _FetchLists event,
    Emitter<CommentsListViewState> emit,
  ) async {
    if (state.reachMax || state.isFetching) return;
    add(
      CommentsListViewEvent.stateChanged(
        state.copyWith(isFetching: true),
      ),
    );
    late Either<Error, List<AppComment>> res;
    await eitherUUIDorAppComment.fold(
      (l) async {
        res = await _postRepo.getComments(state.comments.length, l);
      },
      (r) async {
        res = await _postRepo.getRepliedComments(
          state.comments.length,
          r,
        );
      },
    );
    res.fold(
      (l) {
        emit(
          state.copyWith(isFetching: false),
        );
      },
      (r) {
        emit(
          state.copyWith(
            isFetching: false,
            reachMax: r.isEmpty,
            comments: List.of(state.comments)..addAll(r),
          ),
        );
      },
    );
  }

  Future<void> _onRefreshComments(
    _RefreshList event,
    Emitter<CommentsListViewState> emit,
  ) async {
    emit(CommentsListViewState.dflt());

    add(const CommentsListViewEvent.fetchList(0));
  }

  Future<void> _onAddComment(
    _AddComment event,
    Emitter<CommentsListViewState> emit,
  ) async {
    final AppCommentForm commentForm = eitherUUIDorAppComment.fold(
      (l) {
        return AppCommentForm(commentBody: event.comment);
      },
      (r) {
        return AppCommentForm(
          commentBody: event.comment,
          replyToCommentuuid: r.uuid,
        );
      },
    );

    final AppComment temp = AppComment(
      post: Post.empty(),
      user: User.empty(),
      uuid: UUID.empty(),
      postuuid: UUID.empty(),
      commentBody: event.comment,
    );
    add(
      CommentsListViewEvent.stateChanged(
        state.copyWith(
          comments: List.of(state.comments)..insert(0, temp),
        ),
      ),
    );

    final res = await _postRepo.commentPost(commentForm, postuuid);
    res.fold((l) {
      final list = List.of(state.comments)
        ..removeWhere(
          (e) => e == temp,
        );
      add(
        CommentsListViewEvent.stateChanged(
          state.copyWith(comments: list),
        ),
      );
    }, (r) {
      final list = List.of(state.comments)
        ..removeWhere(
          (e) => e == temp,
        );
      add(
        CommentsListViewEvent.stateChanged(
          state.copyWith(comments: list..insert(0, r)),
        ),
      );
    });
  }
}
