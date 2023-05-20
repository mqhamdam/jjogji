import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/user/user.dart';

part 'users_list_view_event.dart';
part 'users_list_view_state.dart';
part 'users_list_view_bloc.freezed.dart';

class UsersListViewBloc extends Bloc<UsersListViewEvent, UsersListViewState> {
  //
  Function(int skip, UUID uuid) callBack;
  final UUID _uuid;
  UsersListViewBloc(this._uuid, this.callBack)
      : super(UsersListViewState.dflt()) {
    on<UsersListViewEvent>(
      (event, emit) async {
        await event.map(
          started: (e) {},
          fetchUsers: (e) async {
            emit(
              state.copyWith(
                isFetching: true,
              ),
            );
            final dynamic res = await callBack(
              state.users.length,
              _uuid,
            );
            (res as Either<Error, List<User>>).fold(
              (l) => null,
              (r) => emit(
                state.copyWith(
                  isFetching: false,
                  users: List.of(state.users)..addAll(r),
                ),
              ),
            );
          },
          fetchNextUsers: (e) async {
            emit(
              state.copyWith(
                isFetching: true,
              ),
            );
            final dynamic res = await callBack(
              state.users.length,
              _uuid,
            );
            (res as Either<Error, List<User>>).fold(
              (l) => null,
              (r) => emit(
                state.copyWith(
                  isFetching: false,
                  reachedMax: r.isEmpty,
                  users: List.of(state.users)..addAll(r),
                ),
              ),
            );
          },
          stateChanged: (e) async {},
          refreshList: (e) async {
            emit(
              state.copyWith(
                isFetching: true,
              ),
            );
            final dynamic res = await callBack(
              0,
              _uuid,
            );
            (res as Either<Error, List<User>>).fold(
              (l) => null,
              (r) => emit(
                state.copyWith(
                  isFetching: false,
                  reachedMax: r.isEmpty,
                  users: r,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
