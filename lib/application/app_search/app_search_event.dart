part of 'app_search_bloc.dart';

@freezed
class AppSearchEvent with _$AppSearchEvent {
  const factory AppSearchEvent.started() = _Started;
  const factory AppSearchEvent.searchAll() = _SearchAll;
  const factory AppSearchEvent.changeSearchState(SearchState searchState) =
      _ChangeSearchState;
  const factory AppSearchEvent.changeUserFilter(UserFilter userFilter) =
      _ChangeUserFilter;
  const factory AppSearchEvent.changeCPostFilter(CPostFilter cPostFilter) =
      _ChangeCPostFilter;
  const factory AppSearchEvent.changeQuery(String query) = _ChangeQuery;
  const factory AppSearchEvent.searchUsers() = _SearchUsers;
  const factory AppSearchEvent.searchPosts() = _SearchPosts;
  const factory AppSearchEvent.searchTags() = _SearchTags;
  const factory AppSearchEvent.loadMoreUsers() = _LoadMoreUsers;
  const factory AppSearchEvent.loadMorePosts() = _LoadMorePosts;
  const factory AppSearchEvent.loadMoreTags() = _LoadMoreTags;
  const factory AppSearchEvent.clearQuery() = _ClearQuery;
  const factory AppSearchEvent.clearAll() = _ClearAll;
  const factory AppSearchEvent.clearRecentSearches(String value) = _ClearRecentSearches;
  

}
