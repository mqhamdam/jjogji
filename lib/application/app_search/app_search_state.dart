part of 'app_search_bloc.dart';

enum SearchState {
  result,
  recent,
  fetching,
}

@freezed
class AppSearchState with _$AppSearchState {
  const factory AppSearchState({
    required Search search,
    required bool isSearching,
    required bool isSearchingPosts,
    required bool isSearchingUsers,
    required bool isSearchingTags,
    required bool userReachedMax,
    required bool postReachedMax,
    required bool tagReachedMax,
    required UserFilter userFilter,
    required CPostFilter cPostFilter,
    required String query,
    required List<String> recentSearches,
    required SearchState searchState,
  }) = _AppSearchState;

  factory AppSearchState.initial() => AppSearchState(
        search: Search.empty(),
        isSearching: false,
        isSearchingPosts: false,
        isSearchingUsers: false,
        isSearchingTags: false,
        userReachedMax: false,
        postReachedMax: false,
        tagReachedMax: false,
        userFilter: const UserFilter(),
        cPostFilter: const CPostFilter(),
        query: "",
        recentSearches: [],
        searchState: SearchState.recent,
      );
}
