part of 'users_list_view_bloc.dart';

@freezed
class UsersListViewState with _$UsersListViewState {
  const factory UsersListViewState(
      {required List<User> users,
      required UserFilter userFilter,
      required bool isFetching,
      required bool isFetchingNext,
      required bool reachedMax,
      required bool isRefreshing,
      required bool isFiltering,}) = _UsersListViewStateData;
  factory UsersListViewState.dflt() => const UsersListViewState(
        users: <User>[],
        userFilter: UserFilter(),
        isFetching: false,
        isFetchingNext: false,
        reachedMax: false,
        isRefreshing: false,
        isFiltering: false,
      );
}
