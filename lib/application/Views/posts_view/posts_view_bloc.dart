import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/core/abstract_class.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/infrastructure/post/post_repo.dart';

part 'posts_view_event.dart';
part 'posts_view_state.dart';
part 'posts_view_bloc.freezed.dart';

class PostsViewBloc extends Bloc<PostsViewEvent, PostsViewState> {
  // ignore: prefer_final_fields
  AppFilter? _postFilter = PostFilter.dflt();

  final PostRepo _postRepo = PostRepo.instance;

  PostsViewBloc(this._postFilter) : super(PostsViewState.dflt()) {
    on<PostsViewEvent>(
      (event, emit) async {
        await event.map(
          started: (event) async {
            await onStarted(event, emit);
          },
          fetchPosts: (event) async {
            await onFetchPosts(event, emit);
          },
          fetchNextPosts: (event) async {
            await onFetchNextPosts(event, emit);
          },
          stateChanged: (event) async {
            // emit(e.state);
          },
          refreshList: (event) async {
            await onRefreshList(event, emit);
          },
          filterChangedEvent: (e) async {
            // emit(
            //   state.copyWith(
            //     postFilter: e.postFilter,
            //   ),
            // );
          },
        );
      },
    );
  }

  // started handler
  Future<void> onStarted(_Started event, Emitter<PostsViewState> emit) async {
    emit(
      state.copyWith(
        postFilter: _postFilter!,
      ),
    );
  }

  // fetchPosts handler
  Future<void> onFetchPosts(
    _FetchPosts event,
    Emitter<PostsViewState> emit,
  ) async {
    if (state.isFetching == true) return;

    emit(state.copyWith(isFetching: true));

    final res = await _postRepo.getPosts(
      state.posts.length,
      state.postFilter,
    );

    res.fold(
      (l) {
        emit(state.copyWith(isFetching: false));
      },
      (r) {
        emit(
          state.copyWith(
            isFetching: false,
            posts: List.of(state.posts)..addAll(r),
          ),
        );
      },
    );
  }

  // fetchNextPosts handler
  Future<void> onFetchNextPosts(
    _FetchNextPosts event,
    Emitter<PostsViewState> emit,
  ) async {
    if (state.fetchingNext || state.hasReachedMax) return;
    emit(state.copyWith(fetchingNext: true));

    final res = await _postRepo.getPosts(
      state.posts.length,
      state.postFilter,
    );
    res.fold(
      (l) => emit(state.copyWith(fetchingNext: false)),
      (r) => emit(
        state.copyWith(
          fetchingNext: false,
          posts: List.of(state.posts)..addAll(r),
          hasReachedMax: r.isEmpty,
        ),
      ),
    );
  }

  Future<void> onRefreshList(
    _RefreshList event,
    Emitter<PostsViewState> emit,
  ) async {
    emit(
      state.copyWith(
        posts: [],
        hasReachedMax: false,
        fetchingNext: false,
        isFetching: false,
      ),
    );
    add(const PostsViewEvent.fetchPosts(0));
  }
}
