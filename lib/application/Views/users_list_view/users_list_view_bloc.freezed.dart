// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_list_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersListViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchUsers,
    required TResult Function() fetchNextUsers,
    required TResult Function(UsersListViewState state) stateChanged,
    required TResult Function() refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchUsers,
    TResult? Function()? fetchNextUsers,
    TResult? Function(UsersListViewState state)? stateChanged,
    TResult? Function()? refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchUsers,
    TResult Function()? fetchNextUsers,
    TResult Function(UsersListViewState state)? stateChanged,
    TResult Function()? refreshList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchNextUsers value) fetchNextUsers,
    required TResult Function(_FetchUsersSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_FetchNextUsers value)? fetchNextUsers,
    TResult? Function(_FetchUsersSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchNextUsers value)? fetchNextUsers,
    TResult Function(_FetchUsersSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListViewEventCopyWith<$Res> {
  factory $UsersListViewEventCopyWith(
          UsersListViewEvent value, $Res Function(UsersListViewEvent) then) =
      _$UsersListViewEventCopyWithImpl<$Res, UsersListViewEvent>;
}

/// @nodoc
class _$UsersListViewEventCopyWithImpl<$Res, $Val extends UsersListViewEvent>
    implements $UsersListViewEventCopyWith<$Res> {
  _$UsersListViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$UsersListViewEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersListViewEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UsersListViewEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchUsers,
    required TResult Function() fetchNextUsers,
    required TResult Function(UsersListViewState state) stateChanged,
    required TResult Function() refreshList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchUsers,
    TResult? Function()? fetchNextUsers,
    TResult? Function(UsersListViewState state)? stateChanged,
    TResult? Function()? refreshList,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchUsers,
    TResult Function()? fetchNextUsers,
    TResult Function(UsersListViewState state)? stateChanged,
    TResult Function()? refreshList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchNextUsers value) fetchNextUsers,
    required TResult Function(_FetchUsersSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_FetchNextUsers value)? fetchNextUsers,
    TResult? Function(_FetchUsersSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchNextUsers value)? fetchNextUsers,
    TResult Function(_FetchUsersSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UsersListViewEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FetchUsersCopyWith<$Res> {
  factory _$$_FetchUsersCopyWith(
          _$_FetchUsers value, $Res Function(_$_FetchUsers) then) =
      __$$_FetchUsersCopyWithImpl<$Res>;
  @useResult
  $Res call({int skip});
}

/// @nodoc
class __$$_FetchUsersCopyWithImpl<$Res>
    extends _$UsersListViewEventCopyWithImpl<$Res, _$_FetchUsers>
    implements _$$_FetchUsersCopyWith<$Res> {
  __$$_FetchUsersCopyWithImpl(
      _$_FetchUsers _value, $Res Function(_$_FetchUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
  }) {
    return _then(_$_FetchUsers(
      null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchUsers with DiagnosticableTreeMixin implements _FetchUsers {
  const _$_FetchUsers(this.skip);

  @override
  final int skip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersListViewEvent.fetchUsers(skip: $skip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UsersListViewEvent.fetchUsers'))
      ..add(DiagnosticsProperty('skip', skip));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchUsers &&
            (identical(other.skip, skip) || other.skip == skip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchUsersCopyWith<_$_FetchUsers> get copyWith =>
      __$$_FetchUsersCopyWithImpl<_$_FetchUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchUsers,
    required TResult Function() fetchNextUsers,
    required TResult Function(UsersListViewState state) stateChanged,
    required TResult Function() refreshList,
  }) {
    return fetchUsers(skip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchUsers,
    TResult? Function()? fetchNextUsers,
    TResult? Function(UsersListViewState state)? stateChanged,
    TResult? Function()? refreshList,
  }) {
    return fetchUsers?.call(skip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchUsers,
    TResult Function()? fetchNextUsers,
    TResult Function(UsersListViewState state)? stateChanged,
    TResult Function()? refreshList,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(skip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchNextUsers value) fetchNextUsers,
    required TResult Function(_FetchUsersSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_FetchNextUsers value)? fetchNextUsers,
    TResult? Function(_FetchUsersSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
  }) {
    return fetchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchNextUsers value)? fetchNextUsers,
    TResult Function(_FetchUsersSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class _FetchUsers implements UsersListViewEvent {
  const factory _FetchUsers(final int skip) = _$_FetchUsers;

  int get skip;
  @JsonKey(ignore: true)
  _$$_FetchUsersCopyWith<_$_FetchUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchNextUsersCopyWith<$Res> {
  factory _$$_FetchNextUsersCopyWith(
          _$_FetchNextUsers value, $Res Function(_$_FetchNextUsers) then) =
      __$$_FetchNextUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchNextUsersCopyWithImpl<$Res>
    extends _$UsersListViewEventCopyWithImpl<$Res, _$_FetchNextUsers>
    implements _$$_FetchNextUsersCopyWith<$Res> {
  __$$_FetchNextUsersCopyWithImpl(
      _$_FetchNextUsers _value, $Res Function(_$_FetchNextUsers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchNextUsers
    with DiagnosticableTreeMixin
    implements _FetchNextUsers {
  const _$_FetchNextUsers();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersListViewEvent.fetchNextUsers()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'UsersListViewEvent.fetchNextUsers'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchNextUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchUsers,
    required TResult Function() fetchNextUsers,
    required TResult Function(UsersListViewState state) stateChanged,
    required TResult Function() refreshList,
  }) {
    return fetchNextUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchUsers,
    TResult? Function()? fetchNextUsers,
    TResult? Function(UsersListViewState state)? stateChanged,
    TResult? Function()? refreshList,
  }) {
    return fetchNextUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchUsers,
    TResult Function()? fetchNextUsers,
    TResult Function(UsersListViewState state)? stateChanged,
    TResult Function()? refreshList,
    required TResult orElse(),
  }) {
    if (fetchNextUsers != null) {
      return fetchNextUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchNextUsers value) fetchNextUsers,
    required TResult Function(_FetchUsersSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return fetchNextUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_FetchNextUsers value)? fetchNextUsers,
    TResult? Function(_FetchUsersSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
  }) {
    return fetchNextUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchNextUsers value)? fetchNextUsers,
    TResult Function(_FetchUsersSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (fetchNextUsers != null) {
      return fetchNextUsers(this);
    }
    return orElse();
  }
}

abstract class _FetchNextUsers implements UsersListViewEvent {
  const factory _FetchNextUsers() = _$_FetchNextUsers;
}

/// @nodoc
abstract class _$$_FetchUsersSuccessCopyWith<$Res> {
  factory _$$_FetchUsersSuccessCopyWith(_$_FetchUsersSuccess value,
          $Res Function(_$_FetchUsersSuccess) then) =
      __$$_FetchUsersSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({UsersListViewState state});

  $UsersListViewStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_FetchUsersSuccessCopyWithImpl<$Res>
    extends _$UsersListViewEventCopyWithImpl<$Res, _$_FetchUsersSuccess>
    implements _$$_FetchUsersSuccessCopyWith<$Res> {
  __$$_FetchUsersSuccessCopyWithImpl(
      _$_FetchUsersSuccess _value, $Res Function(_$_FetchUsersSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_FetchUsersSuccess(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UsersListViewState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UsersListViewStateCopyWith<$Res> get state {
    return $UsersListViewStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_FetchUsersSuccess
    with DiagnosticableTreeMixin
    implements _FetchUsersSuccess {
  const _$_FetchUsersSuccess(this.state);

  @override
  final UsersListViewState state;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersListViewEvent.stateChanged(state: $state)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UsersListViewEvent.stateChanged'))
      ..add(DiagnosticsProperty('state', state));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchUsersSuccess &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchUsersSuccessCopyWith<_$_FetchUsersSuccess> get copyWith =>
      __$$_FetchUsersSuccessCopyWithImpl<_$_FetchUsersSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchUsers,
    required TResult Function() fetchNextUsers,
    required TResult Function(UsersListViewState state) stateChanged,
    required TResult Function() refreshList,
  }) {
    return stateChanged(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchUsers,
    TResult? Function()? fetchNextUsers,
    TResult? Function(UsersListViewState state)? stateChanged,
    TResult? Function()? refreshList,
  }) {
    return stateChanged?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchUsers,
    TResult Function()? fetchNextUsers,
    TResult Function(UsersListViewState state)? stateChanged,
    TResult Function()? refreshList,
    required TResult orElse(),
  }) {
    if (stateChanged != null) {
      return stateChanged(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchNextUsers value) fetchNextUsers,
    required TResult Function(_FetchUsersSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return stateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_FetchNextUsers value)? fetchNextUsers,
    TResult? Function(_FetchUsersSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
  }) {
    return stateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchNextUsers value)? fetchNextUsers,
    TResult Function(_FetchUsersSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (stateChanged != null) {
      return stateChanged(this);
    }
    return orElse();
  }
}

abstract class _FetchUsersSuccess implements UsersListViewEvent {
  const factory _FetchUsersSuccess(final UsersListViewState state) =
      _$_FetchUsersSuccess;

  UsersListViewState get state;
  @JsonKey(ignore: true)
  _$$_FetchUsersSuccessCopyWith<_$_FetchUsersSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshListCopyWith<$Res> {
  factory _$$_RefreshListCopyWith(
          _$_RefreshList value, $Res Function(_$_RefreshList) then) =
      __$$_RefreshListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshListCopyWithImpl<$Res>
    extends _$UsersListViewEventCopyWithImpl<$Res, _$_RefreshList>
    implements _$$_RefreshListCopyWith<$Res> {
  __$$_RefreshListCopyWithImpl(
      _$_RefreshList _value, $Res Function(_$_RefreshList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshList with DiagnosticableTreeMixin implements _RefreshList {
  const _$_RefreshList();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersListViewEvent.refreshList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'UsersListViewEvent.refreshList'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchUsers,
    required TResult Function() fetchNextUsers,
    required TResult Function(UsersListViewState state) stateChanged,
    required TResult Function() refreshList,
  }) {
    return refreshList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchUsers,
    TResult? Function()? fetchNextUsers,
    TResult? Function(UsersListViewState state)? stateChanged,
    TResult? Function()? refreshList,
  }) {
    return refreshList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchUsers,
    TResult Function()? fetchNextUsers,
    TResult Function(UsersListViewState state)? stateChanged,
    TResult Function()? refreshList,
    required TResult orElse(),
  }) {
    if (refreshList != null) {
      return refreshList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchNextUsers value) fetchNextUsers,
    required TResult Function(_FetchUsersSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return refreshList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_FetchNextUsers value)? fetchNextUsers,
    TResult? Function(_FetchUsersSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
  }) {
    return refreshList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchNextUsers value)? fetchNextUsers,
    TResult Function(_FetchUsersSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (refreshList != null) {
      return refreshList(this);
    }
    return orElse();
  }
}

abstract class _RefreshList implements UsersListViewEvent {
  const factory _RefreshList() = _$_RefreshList;
}

/// @nodoc
mixin _$UsersListViewState {
  List<User> get users => throw _privateConstructorUsedError;
  UserFilter get userFilter => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isFetchingNext => throw _privateConstructorUsedError;
  bool get reachedMax => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  bool get isFiltering => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersListViewStateCopyWith<UsersListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListViewStateCopyWith<$Res> {
  factory $UsersListViewStateCopyWith(
          UsersListViewState value, $Res Function(UsersListViewState) then) =
      _$UsersListViewStateCopyWithImpl<$Res, UsersListViewState>;
  @useResult
  $Res call(
      {List<User> users,
      UserFilter userFilter,
      bool isFetching,
      bool isFetchingNext,
      bool reachedMax,
      bool isRefreshing,
      bool isFiltering});

  $UserFilterCopyWith<$Res> get userFilter;
}

/// @nodoc
class _$UsersListViewStateCopyWithImpl<$Res, $Val extends UsersListViewState>
    implements $UsersListViewStateCopyWith<$Res> {
  _$UsersListViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? userFilter = null,
    Object? isFetching = null,
    Object? isFetchingNext = null,
    Object? reachedMax = null,
    Object? isRefreshing = null,
    Object? isFiltering = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      userFilter: null == userFilter
          ? _value.userFilter
          : userFilter // ignore: cast_nullable_to_non_nullable
              as UserFilter,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingNext: null == isFetchingNext
          ? _value.isFetchingNext
          : isFetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      reachedMax: null == reachedMax
          ? _value.reachedMax
          : reachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFiltering: null == isFiltering
          ? _value.isFiltering
          : isFiltering // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFilterCopyWith<$Res> get userFilter {
    return $UserFilterCopyWith<$Res>(_value.userFilter, (value) {
      return _then(_value.copyWith(userFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UsersListViewStateDataCopyWith<$Res>
    implements $UsersListViewStateCopyWith<$Res> {
  factory _$$_UsersListViewStateDataCopyWith(_$_UsersListViewStateData value,
          $Res Function(_$_UsersListViewStateData) then) =
      __$$_UsersListViewStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User> users,
      UserFilter userFilter,
      bool isFetching,
      bool isFetchingNext,
      bool reachedMax,
      bool isRefreshing,
      bool isFiltering});

  @override
  $UserFilterCopyWith<$Res> get userFilter;
}

/// @nodoc
class __$$_UsersListViewStateDataCopyWithImpl<$Res>
    extends _$UsersListViewStateCopyWithImpl<$Res, _$_UsersListViewStateData>
    implements _$$_UsersListViewStateDataCopyWith<$Res> {
  __$$_UsersListViewStateDataCopyWithImpl(_$_UsersListViewStateData _value,
      $Res Function(_$_UsersListViewStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? userFilter = null,
    Object? isFetching = null,
    Object? isFetchingNext = null,
    Object? reachedMax = null,
    Object? isRefreshing = null,
    Object? isFiltering = null,
  }) {
    return _then(_$_UsersListViewStateData(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      userFilter: null == userFilter
          ? _value.userFilter
          : userFilter // ignore: cast_nullable_to_non_nullable
              as UserFilter,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingNext: null == isFetchingNext
          ? _value.isFetchingNext
          : isFetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      reachedMax: null == reachedMax
          ? _value.reachedMax
          : reachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFiltering: null == isFiltering
          ? _value.isFiltering
          : isFiltering // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UsersListViewStateData
    with DiagnosticableTreeMixin
    implements _UsersListViewStateData {
  const _$_UsersListViewStateData(
      {required final List<User> users,
      required this.userFilter,
      required this.isFetching,
      required this.isFetchingNext,
      required this.reachedMax,
      required this.isRefreshing,
      required this.isFiltering})
      : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final UserFilter userFilter;
  @override
  final bool isFetching;
  @override
  final bool isFetchingNext;
  @override
  final bool reachedMax;
  @override
  final bool isRefreshing;
  @override
  final bool isFiltering;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersListViewState(users: $users, userFilter: $userFilter, isFetching: $isFetching, isFetchingNext: $isFetchingNext, reachedMax: $reachedMax, isRefreshing: $isRefreshing, isFiltering: $isFiltering)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UsersListViewState'))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('userFilter', userFilter))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty('isFetchingNext', isFetchingNext))
      ..add(DiagnosticsProperty('reachedMax', reachedMax))
      ..add(DiagnosticsProperty('isRefreshing', isRefreshing))
      ..add(DiagnosticsProperty('isFiltering', isFiltering));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersListViewStateData &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.userFilter, userFilter) ||
                other.userFilter == userFilter) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isFetchingNext, isFetchingNext) ||
                other.isFetchingNext == isFetchingNext) &&
            (identical(other.reachedMax, reachedMax) ||
                other.reachedMax == reachedMax) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.isFiltering, isFiltering) ||
                other.isFiltering == isFiltering));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      userFilter,
      isFetching,
      isFetchingNext,
      reachedMax,
      isRefreshing,
      isFiltering);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersListViewStateDataCopyWith<_$_UsersListViewStateData> get copyWith =>
      __$$_UsersListViewStateDataCopyWithImpl<_$_UsersListViewStateData>(
          this, _$identity);
}

abstract class _UsersListViewStateData implements UsersListViewState {
  const factory _UsersListViewStateData(
      {required final List<User> users,
      required final UserFilter userFilter,
      required final bool isFetching,
      required final bool isFetchingNext,
      required final bool reachedMax,
      required final bool isRefreshing,
      required final bool isFiltering}) = _$_UsersListViewStateData;

  @override
  List<User> get users;
  @override
  UserFilter get userFilter;
  @override
  bool get isFetching;
  @override
  bool get isFetchingNext;
  @override
  bool get reachedMax;
  @override
  bool get isRefreshing;
  @override
  bool get isFiltering;
  @override
  @JsonKey(ignore: true)
  _$$_UsersListViewStateDataCopyWith<_$_UsersListViewStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
