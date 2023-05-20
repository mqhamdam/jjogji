import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/post/value_objects.dart';
import 'package:jjogji/domain/search/search.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/domain/user/value_objects.dart';
import 'package:jjogji/infrastructure/core/api_handler.dart';
import 'package:jjogji/infrastructure/core/local_db_handler.dart';

part 'app_search_event.dart';
part 'app_search_state.dart';
part 'app_search_bloc.freezed.dart';

class AppSearchBloc extends Bloc<AppSearchEvent, AppSearchState> {
  final ApiHandler _apiHandler = ApiHandler.instance;

  final LocalDB _localDB = LocalDB.instance;

  AppSearchBloc() : super(AppSearchState.initial()) {
    on<AppSearchEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          await _onStarted(event, emit);
        },
        searchAll: (event) async {
          await _onSearchAll(event, emit);
        },
        changeUserFilter: (event) async {
          await _onChangeUserFilter(event, emit);
        },
        changeCPostFilter: (event) async {
          await _onChangeCPostFilter(event, emit);
        },
        changeQuery: (event) async {
          await _onChangeQuery(event, emit);
        },
        searchUsers: (event) async {
          await _onSearchUsers(event, emit);
        },
        searchPosts: (event) async {
          await _onSearchPosts(event, emit);
        },
        searchTags: (event) async {
          await _onSearchTags(event, emit);
        },
        loadMoreUsers: (event) async {
          await _onLoadMoreUsers(event, emit);
        },
        loadMorePosts: (event) async {
          await _onLoadMorePosts(event, emit);
        },
        loadMoreTags: (event) async {
          await _onLoadMoreTags(event, emit);
        },
        clearQuery: (event) async {
          await _onClearQuery(event, emit);
        },
        clearAll: (event) async {
          await _onClearAll(event, emit);
        },
        changeSearchState: (event) async {
          await _onChangeSearchState(event, emit);
        },
        clearRecentSearches: (event) async {
          await _onClearRecentSearches(event, emit);
        },
        // changeSearchState: (event) async {
        //   await _onChangeSearchState(event, emit);
        // },
      );
    });
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<AppSearchState> emit,
  ) async {
    final resentSearches = await _localDB.getResentSearches();
    emit(
      state.copyWith(
        recentSearches: resentSearches,
      ),
    );
  }

  Future<void> _onChangeSearchState(
    _ChangeSearchState event,
    Emitter<AppSearchState> emit,
  ) async {
    emit(
      state.copyWith(
        searchState: event.searchState,
      ),
    );
  }

  Future<void> _onClearRecentSearches(
    _ClearRecentSearches event,
    Emitter<AppSearchState> emit,
  ) async {
    await _localDB.clearRecentSearches(event.value);
    final resentSearches = await _localDB.getResentSearches();
    emit(
      state.copyWith(
        recentSearches: resentSearches,
      ),
    );
  }

  Future<void> _onSearchAll(
    _SearchAll event,
    Emitter<AppSearchState> emit,
  ) async {
    if (state.query.isEmpty) return;
    emit(
      state.copyWith(
        isSearching: true,
        searchState: SearchState.fetching,
        search: Search.empty(),
      ),
    );
    await _localDB.addRecentSearch(state.query);
    final recentSearch = await _localDB.getResentSearches();
    final res = await _apiHandler.searchAll(state.query);
    res.fold(
      (error) async {
        emit(
          state.copyWith(
            isSearching: false,
            searchState: SearchState.result,
            recentSearches: recentSearch,
          ),
        );
      },
      (search) async {
        emit(
          state.copyWith(
            isSearching: false,
            search: search,
            searchState: SearchState.result,
            recentSearches: recentSearch,
          ),
        );
      },
    );
  }

  Future<void> _onChangeUserFilter(
    _ChangeUserFilter event,
    Emitter<AppSearchState> emit,
  ) async {
    emit(
      state.copyWith(
        userFilter: event.userFilter,
      ),
    );
  }

  Future<void> _onChangeCPostFilter(
    _ChangeCPostFilter event,
    Emitter<AppSearchState> emit,
  ) async {
    emit(
      state.copyWith(
        cPostFilter: event.cPostFilter,
      ),
    );
  }

  Future<void> _onChangeQuery(
    _ChangeQuery event,
    Emitter<AppSearchState> emit,
  ) async {
    final newState = state.copyWith(
      query: event.query,
      userFilter: state.userFilter.copyWith(
        userName: event.query.isEmpty ? null : UserName(event.query),
      ),
      cPostFilter: state.cPostFilter.copyWith(
        postBody: event.query.isEmpty ? null : PostBody(event.query),
      ),
    );
    emit(newState);
  }

  Future<void> _onSearchUsers(
    _SearchUsers event,
    Emitter<AppSearchState> emit,
  ) async {
    if (state.query.isEmpty) return;
    emit(
      state.copyWith(
        isSearching: true,
      ),
    );

    final res = await _apiHandler.searchUsers(
      state.userFilter,
      skip: state.search.users.length,
    );
    res.fold(
      (error) async {},
      (users) async {
        emit(
          state.copyWith(
            isSearching: false,
            search: state.search
                .copyWith(users: List.of(state.search.users)..addAll(users)),
          ),
        );
      },
    );
  }

  Future<void> _onSearchPosts(
    _SearchPosts event,
    Emitter<AppSearchState> emit,
  ) async {
    emit(
      state.copyWith(
        isSearching: true,
      ),
    );

    final res = await _apiHandler.searchPost(
      state.cPostFilter,
      skip: state.search.posts.length,
    );
    res.fold(
      (error) async {},
      (posts) async {
        emit(
          state.copyWith(
            isSearching: false,
            search: state.search
                .copyWith(posts: List.of(state.search.posts)..addAll(posts)),
          ),
        );
      },
    );
  }

  Future<void> _onSearchTags(
    _SearchTags event,
    Emitter<AppSearchState> emit,
  ) async {
    emit(
      state.copyWith(
        isSearching: true,
      ),
    );

    final res = await _apiHandler.searchTags(Tag(state.query));
    res.fold(
      (error) async {},
      (tags) async {
        emit(
          state.copyWith(
            isSearching: false,
            search: state.search
                .copyWith(tags: List.of(state.search.tags)..addAll(tags)),
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreUsers(
    _LoadMoreUsers event,
    Emitter<AppSearchState> emit,
  ) async {
    if (state.query.isEmpty) return;
    emit(
      state.copyWith(
        isSearchingUsers: true,
      ),
    );
    final res = await _apiHandler.searchUsers(
      state.userFilter,
      skip: state.search.users.length,
    );

    res.fold(
      (error) async {},
      (users) async {
        emit(
          state.copyWith(
            isSearchingUsers: false,
            search: state.search
                .copyWith(users: List.of(state.search.users)..addAll(users)),
            userReachedMax: users.isEmpty,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMorePosts(
    _LoadMorePosts event,
    Emitter<AppSearchState> emit,
  ) async {
    if (state.query.isEmpty) return;
    emit(
      state.copyWith(
        isSearchingPosts: true,
      ),
    );

    final res = await _apiHandler.searchPost(
      state.cPostFilter,
      skip: state.search.posts.length,
    );
    res.fold(
      (error) async {},
      (posts) async {
        emit(
          state.copyWith(
            isSearchingPosts: false,
            search: state.search
                .copyWith(posts: List.of(state.search.posts)..addAll(posts)),
            postReachedMax: posts.isEmpty,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreTags(
    _LoadMoreTags event,
    Emitter<AppSearchState> emit,
  ) async {
    if (state.query.isEmpty) return;
    emit(
      state.copyWith(
        isSearchingTags: true,
      ),
    );

    final res = await _apiHandler.searchTags(
      Tag(state.query),
      skip: state.search.tags.length,
    );
    res.fold(
      (error) async {},
      (tags) async {
        emit(
          state.copyWith(
            search: state.search
                .copyWith(tags: List.of(state.search.tags)..addAll(tags)),
            tagReachedMax: tags.isEmpty,
            isSearchingTags: false,
          ),
        );
      },
    );
  }

  Future<void> _onClearQuery(
    _ClearQuery event,
    Emitter<AppSearchState> emit,
  ) async {
    emit(
      state.copyWith(
        query: '',
        userFilter: state.userFilter.copyWith(userName: null),
        cPostFilter: state.cPostFilter.copyWith(postBody: null),
      ),
    );
  }

  Future<void> _onClearAll(
    _ClearAll event,
    Emitter<AppSearchState> emit,
  ) async {
    emit(AppSearchState.initial());
  }
}
