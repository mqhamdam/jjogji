// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostsViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchPosts,
    required TResult Function() fetchNextPosts,
    required TResult Function(PostsViewState state) stateChanged,
    required TResult Function() refreshList,
    required TResult Function(PostFilter postFilter) filterChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchPosts,
    TResult? Function()? fetchNextPosts,
    TResult? Function(PostsViewState state)? stateChanged,
    TResult? Function()? refreshList,
    TResult? Function(PostFilter postFilter)? filterChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchPosts,
    TResult Function()? fetchNextPosts,
    TResult Function(PostsViewState state)? stateChanged,
    TResult Function()? refreshList,
    TResult Function(PostFilter postFilter)? filterChangedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_FetchNextPosts value) fetchNextPosts,
    required TResult Function(_FetchPostsSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_FilterChangedEvent value) filterChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchPosts value)? fetchPosts,
    TResult? Function(_FetchNextPosts value)? fetchNextPosts,
    TResult? Function(_FetchPostsSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_FilterChangedEvent value)? filterChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_FetchNextPosts value)? fetchNextPosts,
    TResult Function(_FetchPostsSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_FilterChangedEvent value)? filterChangedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsViewEventCopyWith<$Res> {
  factory $PostsViewEventCopyWith(
          PostsViewEvent value, $Res Function(PostsViewEvent) then) =
      _$PostsViewEventCopyWithImpl<$Res, PostsViewEvent>;
}

/// @nodoc
class _$PostsViewEventCopyWithImpl<$Res, $Val extends PostsViewEvent>
    implements $PostsViewEventCopyWith<$Res> {
  _$PostsViewEventCopyWithImpl(this._value, this._then);

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
    extends _$PostsViewEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PostsViewEvent.started()';
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
    required TResult Function(int skip) fetchPosts,
    required TResult Function() fetchNextPosts,
    required TResult Function(PostsViewState state) stateChanged,
    required TResult Function() refreshList,
    required TResult Function(PostFilter postFilter) filterChangedEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchPosts,
    TResult? Function()? fetchNextPosts,
    TResult? Function(PostsViewState state)? stateChanged,
    TResult? Function()? refreshList,
    TResult? Function(PostFilter postFilter)? filterChangedEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchPosts,
    TResult Function()? fetchNextPosts,
    TResult Function(PostsViewState state)? stateChanged,
    TResult Function()? refreshList,
    TResult Function(PostFilter postFilter)? filterChangedEvent,
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
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_FetchNextPosts value) fetchNextPosts,
    required TResult Function(_FetchPostsSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_FilterChangedEvent value) filterChangedEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchPosts value)? fetchPosts,
    TResult? Function(_FetchNextPosts value)? fetchNextPosts,
    TResult? Function(_FetchPostsSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_FilterChangedEvent value)? filterChangedEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_FetchNextPosts value)? fetchNextPosts,
    TResult Function(_FetchPostsSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_FilterChangedEvent value)? filterChangedEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PostsViewEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FetchPostsCopyWith<$Res> {
  factory _$$_FetchPostsCopyWith(
          _$_FetchPosts value, $Res Function(_$_FetchPosts) then) =
      __$$_FetchPostsCopyWithImpl<$Res>;
  @useResult
  $Res call({int skip});
}

/// @nodoc
class __$$_FetchPostsCopyWithImpl<$Res>
    extends _$PostsViewEventCopyWithImpl<$Res, _$_FetchPosts>
    implements _$$_FetchPostsCopyWith<$Res> {
  __$$_FetchPostsCopyWithImpl(
      _$_FetchPosts _value, $Res Function(_$_FetchPosts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
  }) {
    return _then(_$_FetchPosts(
      null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchPosts implements _FetchPosts {
  const _$_FetchPosts(this.skip);

  @override
  final int skip;

  @override
  String toString() {
    return 'PostsViewEvent.fetchPosts(skip: $skip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchPosts &&
            (identical(other.skip, skip) || other.skip == skip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchPostsCopyWith<_$_FetchPosts> get copyWith =>
      __$$_FetchPostsCopyWithImpl<_$_FetchPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchPosts,
    required TResult Function() fetchNextPosts,
    required TResult Function(PostsViewState state) stateChanged,
    required TResult Function() refreshList,
    required TResult Function(PostFilter postFilter) filterChangedEvent,
  }) {
    return fetchPosts(skip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchPosts,
    TResult? Function()? fetchNextPosts,
    TResult? Function(PostsViewState state)? stateChanged,
    TResult? Function()? refreshList,
    TResult? Function(PostFilter postFilter)? filterChangedEvent,
  }) {
    return fetchPosts?.call(skip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchPosts,
    TResult Function()? fetchNextPosts,
    TResult Function(PostsViewState state)? stateChanged,
    TResult Function()? refreshList,
    TResult Function(PostFilter postFilter)? filterChangedEvent,
    required TResult orElse(),
  }) {
    if (fetchPosts != null) {
      return fetchPosts(skip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_FetchNextPosts value) fetchNextPosts,
    required TResult Function(_FetchPostsSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_FilterChangedEvent value) filterChangedEvent,
  }) {
    return fetchPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchPosts value)? fetchPosts,
    TResult? Function(_FetchNextPosts value)? fetchNextPosts,
    TResult? Function(_FetchPostsSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_FilterChangedEvent value)? filterChangedEvent,
  }) {
    return fetchPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_FetchNextPosts value)? fetchNextPosts,
    TResult Function(_FetchPostsSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_FilterChangedEvent value)? filterChangedEvent,
    required TResult orElse(),
  }) {
    if (fetchPosts != null) {
      return fetchPosts(this);
    }
    return orElse();
  }
}

abstract class _FetchPosts implements PostsViewEvent {
  const factory _FetchPosts(final int skip) = _$_FetchPosts;

  int get skip;
  @JsonKey(ignore: true)
  _$$_FetchPostsCopyWith<_$_FetchPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchNextPostsCopyWith<$Res> {
  factory _$$_FetchNextPostsCopyWith(
          _$_FetchNextPosts value, $Res Function(_$_FetchNextPosts) then) =
      __$$_FetchNextPostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchNextPostsCopyWithImpl<$Res>
    extends _$PostsViewEventCopyWithImpl<$Res, _$_FetchNextPosts>
    implements _$$_FetchNextPostsCopyWith<$Res> {
  __$$_FetchNextPostsCopyWithImpl(
      _$_FetchNextPosts _value, $Res Function(_$_FetchNextPosts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchNextPosts implements _FetchNextPosts {
  const _$_FetchNextPosts();

  @override
  String toString() {
    return 'PostsViewEvent.fetchNextPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchNextPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchPosts,
    required TResult Function() fetchNextPosts,
    required TResult Function(PostsViewState state) stateChanged,
    required TResult Function() refreshList,
    required TResult Function(PostFilter postFilter) filterChangedEvent,
  }) {
    return fetchNextPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchPosts,
    TResult? Function()? fetchNextPosts,
    TResult? Function(PostsViewState state)? stateChanged,
    TResult? Function()? refreshList,
    TResult? Function(PostFilter postFilter)? filterChangedEvent,
  }) {
    return fetchNextPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchPosts,
    TResult Function()? fetchNextPosts,
    TResult Function(PostsViewState state)? stateChanged,
    TResult Function()? refreshList,
    TResult Function(PostFilter postFilter)? filterChangedEvent,
    required TResult orElse(),
  }) {
    if (fetchNextPosts != null) {
      return fetchNextPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_FetchNextPosts value) fetchNextPosts,
    required TResult Function(_FetchPostsSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_FilterChangedEvent value) filterChangedEvent,
  }) {
    return fetchNextPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchPosts value)? fetchPosts,
    TResult? Function(_FetchNextPosts value)? fetchNextPosts,
    TResult? Function(_FetchPostsSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_FilterChangedEvent value)? filterChangedEvent,
  }) {
    return fetchNextPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_FetchNextPosts value)? fetchNextPosts,
    TResult Function(_FetchPostsSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_FilterChangedEvent value)? filterChangedEvent,
    required TResult orElse(),
  }) {
    if (fetchNextPosts != null) {
      return fetchNextPosts(this);
    }
    return orElse();
  }
}

abstract class _FetchNextPosts implements PostsViewEvent {
  const factory _FetchNextPosts() = _$_FetchNextPosts;
}

/// @nodoc
abstract class _$$_FetchPostsSuccessCopyWith<$Res> {
  factory _$$_FetchPostsSuccessCopyWith(_$_FetchPostsSuccess value,
          $Res Function(_$_FetchPostsSuccess) then) =
      __$$_FetchPostsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({PostsViewState state});

  $PostsViewStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_FetchPostsSuccessCopyWithImpl<$Res>
    extends _$PostsViewEventCopyWithImpl<$Res, _$_FetchPostsSuccess>
    implements _$$_FetchPostsSuccessCopyWith<$Res> {
  __$$_FetchPostsSuccessCopyWithImpl(
      _$_FetchPostsSuccess _value, $Res Function(_$_FetchPostsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_FetchPostsSuccess(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PostsViewState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostsViewStateCopyWith<$Res> get state {
    return $PostsViewStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_FetchPostsSuccess implements _FetchPostsSuccess {
  const _$_FetchPostsSuccess(this.state);

  @override
  final PostsViewState state;

  @override
  String toString() {
    return 'PostsViewEvent.stateChanged(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchPostsSuccess &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchPostsSuccessCopyWith<_$_FetchPostsSuccess> get copyWith =>
      __$$_FetchPostsSuccessCopyWithImpl<_$_FetchPostsSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchPosts,
    required TResult Function() fetchNextPosts,
    required TResult Function(PostsViewState state) stateChanged,
    required TResult Function() refreshList,
    required TResult Function(PostFilter postFilter) filterChangedEvent,
  }) {
    return stateChanged(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchPosts,
    TResult? Function()? fetchNextPosts,
    TResult? Function(PostsViewState state)? stateChanged,
    TResult? Function()? refreshList,
    TResult? Function(PostFilter postFilter)? filterChangedEvent,
  }) {
    return stateChanged?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchPosts,
    TResult Function()? fetchNextPosts,
    TResult Function(PostsViewState state)? stateChanged,
    TResult Function()? refreshList,
    TResult Function(PostFilter postFilter)? filterChangedEvent,
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
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_FetchNextPosts value) fetchNextPosts,
    required TResult Function(_FetchPostsSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_FilterChangedEvent value) filterChangedEvent,
  }) {
    return stateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchPosts value)? fetchPosts,
    TResult? Function(_FetchNextPosts value)? fetchNextPosts,
    TResult? Function(_FetchPostsSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_FilterChangedEvent value)? filterChangedEvent,
  }) {
    return stateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_FetchNextPosts value)? fetchNextPosts,
    TResult Function(_FetchPostsSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_FilterChangedEvent value)? filterChangedEvent,
    required TResult orElse(),
  }) {
    if (stateChanged != null) {
      return stateChanged(this);
    }
    return orElse();
  }
}

abstract class _FetchPostsSuccess implements PostsViewEvent {
  const factory _FetchPostsSuccess(final PostsViewState state) =
      _$_FetchPostsSuccess;

  PostsViewState get state;
  @JsonKey(ignore: true)
  _$$_FetchPostsSuccessCopyWith<_$_FetchPostsSuccess> get copyWith =>
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
    extends _$PostsViewEventCopyWithImpl<$Res, _$_RefreshList>
    implements _$$_RefreshListCopyWith<$Res> {
  __$$_RefreshListCopyWithImpl(
      _$_RefreshList _value, $Res Function(_$_RefreshList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshList implements _RefreshList {
  const _$_RefreshList();

  @override
  String toString() {
    return 'PostsViewEvent.refreshList()';
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
    required TResult Function(int skip) fetchPosts,
    required TResult Function() fetchNextPosts,
    required TResult Function(PostsViewState state) stateChanged,
    required TResult Function() refreshList,
    required TResult Function(PostFilter postFilter) filterChangedEvent,
  }) {
    return refreshList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchPosts,
    TResult? Function()? fetchNextPosts,
    TResult? Function(PostsViewState state)? stateChanged,
    TResult? Function()? refreshList,
    TResult? Function(PostFilter postFilter)? filterChangedEvent,
  }) {
    return refreshList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchPosts,
    TResult Function()? fetchNextPosts,
    TResult Function(PostsViewState state)? stateChanged,
    TResult Function()? refreshList,
    TResult Function(PostFilter postFilter)? filterChangedEvent,
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
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_FetchNextPosts value) fetchNextPosts,
    required TResult Function(_FetchPostsSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_FilterChangedEvent value) filterChangedEvent,
  }) {
    return refreshList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchPosts value)? fetchPosts,
    TResult? Function(_FetchNextPosts value)? fetchNextPosts,
    TResult? Function(_FetchPostsSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_FilterChangedEvent value)? filterChangedEvent,
  }) {
    return refreshList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_FetchNextPosts value)? fetchNextPosts,
    TResult Function(_FetchPostsSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_FilterChangedEvent value)? filterChangedEvent,
    required TResult orElse(),
  }) {
    if (refreshList != null) {
      return refreshList(this);
    }
    return orElse();
  }
}

abstract class _RefreshList implements PostsViewEvent {
  const factory _RefreshList() = _$_RefreshList;
}

/// @nodoc
abstract class _$$_FilterChangedEventCopyWith<$Res> {
  factory _$$_FilterChangedEventCopyWith(_$_FilterChangedEvent value,
          $Res Function(_$_FilterChangedEvent) then) =
      __$$_FilterChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({PostFilter postFilter});

  $PostFilterCopyWith<$Res> get postFilter;
}

/// @nodoc
class __$$_FilterChangedEventCopyWithImpl<$Res>
    extends _$PostsViewEventCopyWithImpl<$Res, _$_FilterChangedEvent>
    implements _$$_FilterChangedEventCopyWith<$Res> {
  __$$_FilterChangedEventCopyWithImpl(
      _$_FilterChangedEvent _value, $Res Function(_$_FilterChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postFilter = null,
  }) {
    return _then(_$_FilterChangedEvent(
      null == postFilter
          ? _value.postFilter
          : postFilter // ignore: cast_nullable_to_non_nullable
              as PostFilter,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostFilterCopyWith<$Res> get postFilter {
    return $PostFilterCopyWith<$Res>(_value.postFilter, (value) {
      return _then(_value.copyWith(postFilter: value));
    });
  }
}

/// @nodoc

class _$_FilterChangedEvent implements _FilterChangedEvent {
  const _$_FilterChangedEvent(this.postFilter);

  @override
  final PostFilter postFilter;

  @override
  String toString() {
    return 'PostsViewEvent.filterChangedEvent(postFilter: $postFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterChangedEvent &&
            (identical(other.postFilter, postFilter) ||
                other.postFilter == postFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterChangedEventCopyWith<_$_FilterChangedEvent> get copyWith =>
      __$$_FilterChangedEventCopyWithImpl<_$_FilterChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchPosts,
    required TResult Function() fetchNextPosts,
    required TResult Function(PostsViewState state) stateChanged,
    required TResult Function() refreshList,
    required TResult Function(PostFilter postFilter) filterChangedEvent,
  }) {
    return filterChangedEvent(postFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchPosts,
    TResult? Function()? fetchNextPosts,
    TResult? Function(PostsViewState state)? stateChanged,
    TResult? Function()? refreshList,
    TResult? Function(PostFilter postFilter)? filterChangedEvent,
  }) {
    return filterChangedEvent?.call(postFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchPosts,
    TResult Function()? fetchNextPosts,
    TResult Function(PostsViewState state)? stateChanged,
    TResult Function()? refreshList,
    TResult Function(PostFilter postFilter)? filterChangedEvent,
    required TResult orElse(),
  }) {
    if (filterChangedEvent != null) {
      return filterChangedEvent(postFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_FetchNextPosts value) fetchNextPosts,
    required TResult Function(_FetchPostsSuccess value) stateChanged,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_FilterChangedEvent value) filterChangedEvent,
  }) {
    return filterChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchPosts value)? fetchPosts,
    TResult? Function(_FetchNextPosts value)? fetchNextPosts,
    TResult? Function(_FetchPostsSuccess value)? stateChanged,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_FilterChangedEvent value)? filterChangedEvent,
  }) {
    return filterChangedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_FetchNextPosts value)? fetchNextPosts,
    TResult Function(_FetchPostsSuccess value)? stateChanged,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_FilterChangedEvent value)? filterChangedEvent,
    required TResult orElse(),
  }) {
    if (filterChangedEvent != null) {
      return filterChangedEvent(this);
    }
    return orElse();
  }
}

abstract class _FilterChangedEvent implements PostsViewEvent {
  const factory _FilterChangedEvent(final PostFilter postFilter) =
      _$_FilterChangedEvent;

  PostFilter get postFilter;
  @JsonKey(ignore: true)
  _$$_FilterChangedEventCopyWith<_$_FilterChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostsViewState {
  List<Post> get posts => throw _privateConstructorUsedError;
  AppFilter get postFilter => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get fetchingNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsViewStateCopyWith<PostsViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsViewStateCopyWith<$Res> {
  factory $PostsViewStateCopyWith(
          PostsViewState value, $Res Function(PostsViewState) then) =
      _$PostsViewStateCopyWithImpl<$Res, PostsViewState>;
  @useResult
  $Res call(
      {List<Post> posts,
      AppFilter postFilter,
      bool isFetching,
      bool hasReachedMax,
      bool fetchingNext});
}

/// @nodoc
class _$PostsViewStateCopyWithImpl<$Res, $Val extends PostsViewState>
    implements $PostsViewStateCopyWith<$Res> {
  _$PostsViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? postFilter = null,
    Object? isFetching = null,
    Object? hasReachedMax = null,
    Object? fetchingNext = null,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      postFilter: null == postFilter
          ? _value.postFilter
          : postFilter // ignore: cast_nullable_to_non_nullable
              as AppFilter,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchingNext: null == fetchingNext
          ? _value.fetchingNext
          : fetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostsViewStateDataCopyWith<$Res>
    implements $PostsViewStateCopyWith<$Res> {
  factory _$$_PostsViewStateDataCopyWith(_$_PostsViewStateData value,
          $Res Function(_$_PostsViewStateData) then) =
      __$$_PostsViewStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Post> posts,
      AppFilter postFilter,
      bool isFetching,
      bool hasReachedMax,
      bool fetchingNext});
}

/// @nodoc
class __$$_PostsViewStateDataCopyWithImpl<$Res>
    extends _$PostsViewStateCopyWithImpl<$Res, _$_PostsViewStateData>
    implements _$$_PostsViewStateDataCopyWith<$Res> {
  __$$_PostsViewStateDataCopyWithImpl(
      _$_PostsViewStateData _value, $Res Function(_$_PostsViewStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? postFilter = null,
    Object? isFetching = null,
    Object? hasReachedMax = null,
    Object? fetchingNext = null,
  }) {
    return _then(_$_PostsViewStateData(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      postFilter: null == postFilter
          ? _value.postFilter
          : postFilter // ignore: cast_nullable_to_non_nullable
              as AppFilter,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchingNext: null == fetchingNext
          ? _value.fetchingNext
          : fetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PostsViewStateData implements _PostsViewStateData {
  const _$_PostsViewStateData(
      {required final List<Post> posts,
      required this.postFilter,
      required this.isFetching,
      required this.hasReachedMax,
      required this.fetchingNext})
      : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final AppFilter postFilter;
  @override
  final bool isFetching;
  @override
  final bool hasReachedMax;
  @override
  final bool fetchingNext;

  @override
  String toString() {
    return 'PostsViewState(posts: $posts, postFilter: $postFilter, isFetching: $isFetching, hasReachedMax: $hasReachedMax, fetchingNext: $fetchingNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsViewStateData &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.postFilter, postFilter) ||
                other.postFilter == postFilter) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.fetchingNext, fetchingNext) ||
                other.fetchingNext == fetchingNext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      postFilter,
      isFetching,
      hasReachedMax,
      fetchingNext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsViewStateDataCopyWith<_$_PostsViewStateData> get copyWith =>
      __$$_PostsViewStateDataCopyWithImpl<_$_PostsViewStateData>(
          this, _$identity);
}

abstract class _PostsViewStateData implements PostsViewState {
  const factory _PostsViewStateData(
      {required final List<Post> posts,
      required final AppFilter postFilter,
      required final bool isFetching,
      required final bool hasReachedMax,
      required final bool fetchingNext}) = _$_PostsViewStateData;

  @override
  List<Post> get posts;
  @override
  AppFilter get postFilter;
  @override
  bool get isFetching;
  @override
  bool get hasReachedMax;
  @override
  bool get fetchingNext;
  @override
  @JsonKey(ignore: true)
  _$$_PostsViewStateDataCopyWith<_$_PostsViewStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
