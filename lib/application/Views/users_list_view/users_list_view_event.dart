part of 'users_list_view_bloc.dart';

@freezed
class UsersListViewEvent with _$UsersListViewEvent {
  const factory UsersListViewEvent.started() = _Started;
  const factory UsersListViewEvent.fetchUsers(int skip) = _FetchUsers;
  const factory UsersListViewEvent.fetchNextUsers() = _FetchNextUsers;
  const factory UsersListViewEvent.stateChanged(UsersListViewState state) =
      _FetchUsersSuccess;
  const factory UsersListViewEvent.refreshList() = _RefreshList;
}
