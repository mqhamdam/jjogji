part of 'search_users_bloc.dart';

@freezed
class SearchUsersState with _$SearchUsersState {
  const factory SearchUsersState({
    required List<User> users,
    required bool isFetching,
    required bool isFetchingNext,
    required bool isRefreshing,
    required bool isFiltering,
    required UserFilter userFilter,}) = _SearchUsersStateData;
   factory SearchUsersState.initial() => const SearchUsersState(
        users: <User>[],
        userFilter: UserFilter(),
        isFetching: false,
        isFetchingNext: false,
        isRefreshing: false,
        isFiltering: false,
      );
}
