import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/infrastructure/post/post_repo.dart';
import 'package:jjogji/infrastructure/user/user_repo.dart';

part 'trends_event.dart';
part 'trends_state.dart';
part 'trends_bloc.freezed.dart';

class TrendsBloc extends Bloc<TrendsEvent, TrendsState> {
  final UserRepo _userRepo = UserRepo.instance;
  final PostRepo _postRepo = PostRepo.instance;

  TrendsBloc() : super(TrendsState.initial()) {
    on<TrendsEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          await _OnStarted(event, emit);
        },
        refreshState: (event) async {
          await _OnRefreshState(event, emit);
        },
        fetchTrendingPosts: (event) async {
          await _OnFetchTrendingPosts(event, emit);
        },
        fetchTrendingUsers: (event) async {
          await _OnFetchTrendingUsers(event, emit);
        },
        fetchTrendingTags: (event) async {
          await _OnFetchTrendingTags(event, emit);
        },
        changeFetchingStatus: (event) async {
          await _OnChangeFetching(event, emit);
        },
        fetchNextPosts: (event) async {
          await _OnFetchNextPosts(event, emit);
        },
        stateChanged: (event) async {
          await _OnStateChanged(event, emit);
        },
      );
    });
  }

  Future<void> _OnStarted(
    _Started event,
    Emitter<TrendsState> emit,
  ) async {
    /// get trending posts
    /// get trending users
    /// get trending tags
    ///
    List<Post> list1 = [];
    List<User> list2 = [];
    List<TrendingTag> list3 = [];
    await _postRepo.getTrendingPosts(0).then(
          (value) => value.fold(
            (l) => null,
            (r) {
              list1 = r;
            },
          ),
        );

    await _userRepo.getTopUsers().then((v) {
      v.fold((l) => null, (r) {
        list2 = r;
      });
    });

    await _postRepo.getTrendingTags().then(
          (value) => value.fold(
            (l) => null,
            (r) {
              list3 = r;
            },
          ),
        );
    emit(
      state.copyWith(
        isFetching: false,
        isFetchingNewPosts: false,
        hasReachedMax: false,
        trendingPosts: list1,
        trendingUsers: list2,
        trendingTags: list3,
      ),
    );
    // add(_FetchTrendingUsers());
    // add(_FetchTrendingTags());
    // add(_FetchTrendingPosts(0));
  }

  // on changeFetching
  Future<void> _OnChangeFetching(
    _ChangeFetchingStatus event,
    Emitter<TrendsState> emit,
  ) async {
    emit(state.copyWith(isFetching: event.isFetching));
  }

  // on refreshState
  Future<void> _OnRefreshState(
    _RefreshState event,
    Emitter<TrendsState> emit,
  ) async {
    emit(TrendsState.initial());
    add(const _Started());
  }

  // on fetchTrendingPosts
  Future<void> _OnFetchTrendingPosts(
    _FetchTrendingPosts event,
    Emitter<TrendsState> emit,
  ) async {
    final res = await _postRepo.getTrendingPosts(event.skip);
    await res.fold(
      (error) async {
        emit(
          state.copyWith(
            isFetching: false,
            trendingPosts: [],
          ),
        );
      },
      (posts) async {
        emit(
          state.copyWith(
            isFetching: false,
            trendingPosts: List.of(state.trendingPosts)..addAll(posts),
          ),
        );
      },
    );
  }

  //on fetchTrendingUsers
  Future<void> _OnFetchTrendingUsers(
    _FetchTrendingUsers event,
    Emitter<TrendsState> emit,
  ) async {
    final res = await _userRepo.getTopUsers();
    await res.fold(
      (error) async {
        emit(
          state.copyWith(
            isFetching: false,
            trendingUsers: [],
          ),
        );
      },
      (users) async {
        emit(
          state.copyWith(
            isFetching: false,
            trendingUsers: users,
          ),
        );
      },
    );
  }

  // on fetchTrendingTags
  Future<void> _OnFetchTrendingTags(
    _FetchTrendingTags event,
    Emitter<TrendsState> emit,
  ) async {
    final res = await _postRepo.getTrendingTags();
    await res.fold(
      (err) async {
        emit(
          state.copyWith(
            isFetching: false,
            trendingTags: [],
          ),
        );
      },
      (tags) async {
        emit(
          state.copyWith(
            isFetching: false,
            trendingTags: tags,
          ),
        );
      },
    );
  }

  // on fetchNextPosts
  Future<void> _OnFetchNextPosts(
    _FetchNextPosts event,
    Emitter<TrendsState> emit,
  ) async {
    // add(TrendsEvent.stateChanged(state.copyWith(isFetchingNewPosts: true)));
    if (state.isFetchingNewPosts || state.hasReachedMax) return;
    emit(
      state.copyWith(
        isFetchingNewPosts: true,
      ),
    );
    final res = await _postRepo.getTrendingPosts(state.trendingPosts.length);
    await res.fold(
      (error) async {
        emit(
          state.copyWith(
            isFetching: false,
            trendingPosts: [],
            isFetchingNewPosts: false,
          ),
        );
      },
      (posts) async {
        emit(
          state.copyWith(
            isFetching: false,
            hasReachedMax: posts.isEmpty,
            isFetchingNewPosts: false,
            trendingPosts: List.of(state.trendingPosts)..addAll(posts),
          ),
        );
      },
    );
  }

  // on stateChanged
  Future<void> _OnStateChanged(
    _StateChanged event,
    Emitter<TrendsState> emit,
  ) async {
    emit(event.state);
  }

  // @override
  // void onChange(Change<TrendsState> change) {

  //   super.onChange(change);
  // }
}
