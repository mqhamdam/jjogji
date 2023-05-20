// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUsersEventCopyWith<$Res> {
  factory $SearchUsersEventCopyWith(
          SearchUsersEvent value, $Res Function(SearchUsersEvent) then) =
      _$SearchUsersEventCopyWithImpl<$Res, SearchUsersEvent>;
}

/// @nodoc
class _$SearchUsersEventCopyWithImpl<$Res, $Val extends SearchUsersEvent>
    implements $SearchUsersEventCopyWith<$Res> {
  _$SearchUsersEventCopyWithImpl(this._value, this._then);

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
    extends _$SearchUsersEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SearchUsersEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchUsersEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$SearchUsersState {
  List<User> get users => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isFetchingNext => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  bool get isFiltering => throw _privateConstructorUsedError;
  UserFilter get userFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUsersStateCopyWith<SearchUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUsersStateCopyWith<$Res> {
  factory $SearchUsersStateCopyWith(
          SearchUsersState value, $Res Function(SearchUsersState) then) =
      _$SearchUsersStateCopyWithImpl<$Res, SearchUsersState>;
  @useResult
  $Res call(
      {List<User> users,
      bool isFetching,
      bool isFetchingNext,
      bool isRefreshing,
      bool isFiltering,
      UserFilter userFilter});

  $UserFilterCopyWith<$Res> get userFilter;
}

/// @nodoc
class _$SearchUsersStateCopyWithImpl<$Res, $Val extends SearchUsersState>
    implements $SearchUsersStateCopyWith<$Res> {
  _$SearchUsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? isFetching = null,
    Object? isFetchingNext = null,
    Object? isRefreshing = null,
    Object? isFiltering = null,
    Object? userFilter = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingNext: null == isFetchingNext
          ? _value.isFetchingNext
          : isFetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFiltering: null == isFiltering
          ? _value.isFiltering
          : isFiltering // ignore: cast_nullable_to_non_nullable
              as bool,
      userFilter: null == userFilter
          ? _value.userFilter
          : userFilter // ignore: cast_nullable_to_non_nullable
              as UserFilter,
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
abstract class _$$_SearchUsersStateDataCopyWith<$Res>
    implements $SearchUsersStateCopyWith<$Res> {
  factory _$$_SearchUsersStateDataCopyWith(_$_SearchUsersStateData value,
          $Res Function(_$_SearchUsersStateData) then) =
      __$$_SearchUsersStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User> users,
      bool isFetching,
      bool isFetchingNext,
      bool isRefreshing,
      bool isFiltering,
      UserFilter userFilter});

  @override
  $UserFilterCopyWith<$Res> get userFilter;
}

/// @nodoc
class __$$_SearchUsersStateDataCopyWithImpl<$Res>
    extends _$SearchUsersStateCopyWithImpl<$Res, _$_SearchUsersStateData>
    implements _$$_SearchUsersStateDataCopyWith<$Res> {
  __$$_SearchUsersStateDataCopyWithImpl(_$_SearchUsersStateData _value,
      $Res Function(_$_SearchUsersStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? isFetching = null,
    Object? isFetchingNext = null,
    Object? isRefreshing = null,
    Object? isFiltering = null,
    Object? userFilter = null,
  }) {
    return _then(_$_SearchUsersStateData(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingNext: null == isFetchingNext
          ? _value.isFetchingNext
          : isFetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFiltering: null == isFiltering
          ? _value.isFiltering
          : isFiltering // ignore: cast_nullable_to_non_nullable
              as bool,
      userFilter: null == userFilter
          ? _value.userFilter
          : userFilter // ignore: cast_nullable_to_non_nullable
              as UserFilter,
    ));
  }
}

/// @nodoc

class _$_SearchUsersStateData implements _SearchUsersStateData {
  const _$_SearchUsersStateData(
      {required final List<User> users,
      required this.isFetching,
      required this.isFetchingNext,
      required this.isRefreshing,
      required this.isFiltering,
      required this.userFilter})
      : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final bool isFetching;
  @override
  final bool isFetchingNext;
  @override
  final bool isRefreshing;
  @override
  final bool isFiltering;
  @override
  final UserFilter userFilter;

  @override
  String toString() {
    return 'SearchUsersState(users: $users, isFetching: $isFetching, isFetchingNext: $isFetchingNext, isRefreshing: $isRefreshing, isFiltering: $isFiltering, userFilter: $userFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchUsersStateData &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isFetchingNext, isFetchingNext) ||
                other.isFetchingNext == isFetchingNext) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.isFiltering, isFiltering) ||
                other.isFiltering == isFiltering) &&
            (identical(other.userFilter, userFilter) ||
                other.userFilter == userFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      isFetching,
      isFetchingNext,
      isRefreshing,
      isFiltering,
      userFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchUsersStateDataCopyWith<_$_SearchUsersStateData> get copyWith =>
      __$$_SearchUsersStateDataCopyWithImpl<_$_SearchUsersStateData>(
          this, _$identity);
}

abstract class _SearchUsersStateData implements SearchUsersState {
  const factory _SearchUsersStateData(
      {required final List<User> users,
      required final bool isFetching,
      required final bool isFetchingNext,
      required final bool isRefreshing,
      required final bool isFiltering,
      required final UserFilter userFilter}) = _$_SearchUsersStateData;

  @override
  List<User> get users;
  @override
  bool get isFetching;
  @override
  bool get isFetchingNext;
  @override
  bool get isRefreshing;
  @override
  bool get isFiltering;
  @override
  UserFilter get userFilter;
  @override
  @JsonKey(ignore: true)
  _$$_SearchUsersStateDataCopyWith<_$_SearchUsersStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
