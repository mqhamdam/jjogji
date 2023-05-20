// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_list_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentsListViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchList,
    required TResult Function() refreshList,
    required TResult Function(CommentsListViewState state) stateChanged,
    required TResult Function(CommentBody comment) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchList,
    TResult? Function()? refreshList,
    TResult? Function(CommentsListViewState state)? stateChanged,
    TResult? Function(CommentBody comment)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchList,
    TResult Function()? refreshList,
    TResult Function(CommentsListViewState state)? stateChanged,
    TResult Function(CommentBody comment)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchLists value) fetchList,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_AddComment value) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchLists value)? fetchList,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_AddComment value)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchLists value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsListViewEventCopyWith<$Res> {
  factory $CommentsListViewEventCopyWith(CommentsListViewEvent value,
          $Res Function(CommentsListViewEvent) then) =
      _$CommentsListViewEventCopyWithImpl<$Res, CommentsListViewEvent>;
}

/// @nodoc
class _$CommentsListViewEventCopyWithImpl<$Res,
        $Val extends CommentsListViewEvent>
    implements $CommentsListViewEventCopyWith<$Res> {
  _$CommentsListViewEventCopyWithImpl(this._value, this._then);

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
    extends _$CommentsListViewEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CommentsListViewEvent.started()';
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
    required TResult Function(int skip) fetchList,
    required TResult Function() refreshList,
    required TResult Function(CommentsListViewState state) stateChanged,
    required TResult Function(CommentBody comment) addComment,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchList,
    TResult? Function()? refreshList,
    TResult? Function(CommentsListViewState state)? stateChanged,
    TResult? Function(CommentBody comment)? addComment,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchList,
    TResult Function()? refreshList,
    TResult Function(CommentsListViewState state)? stateChanged,
    TResult Function(CommentBody comment)? addComment,
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
    required TResult Function(_FetchLists value) fetchList,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_AddComment value) addComment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchLists value)? fetchList,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_AddComment value)? addComment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchLists value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CommentsListViewEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FetchListsCopyWith<$Res> {
  factory _$$_FetchListsCopyWith(
          _$_FetchLists value, $Res Function(_$_FetchLists) then) =
      __$$_FetchListsCopyWithImpl<$Res>;
  @useResult
  $Res call({int skip});
}

/// @nodoc
class __$$_FetchListsCopyWithImpl<$Res>
    extends _$CommentsListViewEventCopyWithImpl<$Res, _$_FetchLists>
    implements _$$_FetchListsCopyWith<$Res> {
  __$$_FetchListsCopyWithImpl(
      _$_FetchLists _value, $Res Function(_$_FetchLists) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
  }) {
    return _then(_$_FetchLists(
      null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchLists implements _FetchLists {
  const _$_FetchLists(this.skip);

  @override
  final int skip;

  @override
  String toString() {
    return 'CommentsListViewEvent.fetchList(skip: $skip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchLists &&
            (identical(other.skip, skip) || other.skip == skip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchListsCopyWith<_$_FetchLists> get copyWith =>
      __$$_FetchListsCopyWithImpl<_$_FetchLists>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchList,
    required TResult Function() refreshList,
    required TResult Function(CommentsListViewState state) stateChanged,
    required TResult Function(CommentBody comment) addComment,
  }) {
    return fetchList(skip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchList,
    TResult? Function()? refreshList,
    TResult? Function(CommentsListViewState state)? stateChanged,
    TResult? Function(CommentBody comment)? addComment,
  }) {
    return fetchList?.call(skip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchList,
    TResult Function()? refreshList,
    TResult Function(CommentsListViewState state)? stateChanged,
    TResult Function(CommentBody comment)? addComment,
    required TResult orElse(),
  }) {
    if (fetchList != null) {
      return fetchList(skip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchLists value) fetchList,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_AddComment value) addComment,
  }) {
    return fetchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchLists value)? fetchList,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_AddComment value)? addComment,
  }) {
    return fetchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchLists value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (fetchList != null) {
      return fetchList(this);
    }
    return orElse();
  }
}

abstract class _FetchLists implements CommentsListViewEvent {
  const factory _FetchLists(final int skip) = _$_FetchLists;

  int get skip;
  @JsonKey(ignore: true)
  _$$_FetchListsCopyWith<_$_FetchLists> get copyWith =>
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
    extends _$CommentsListViewEventCopyWithImpl<$Res, _$_RefreshList>
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
    return 'CommentsListViewEvent.refreshList()';
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
    required TResult Function(int skip) fetchList,
    required TResult Function() refreshList,
    required TResult Function(CommentsListViewState state) stateChanged,
    required TResult Function(CommentBody comment) addComment,
  }) {
    return refreshList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchList,
    TResult? Function()? refreshList,
    TResult? Function(CommentsListViewState state)? stateChanged,
    TResult? Function(CommentBody comment)? addComment,
  }) {
    return refreshList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchList,
    TResult Function()? refreshList,
    TResult Function(CommentsListViewState state)? stateChanged,
    TResult Function(CommentBody comment)? addComment,
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
    required TResult Function(_FetchLists value) fetchList,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_AddComment value) addComment,
  }) {
    return refreshList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchLists value)? fetchList,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_AddComment value)? addComment,
  }) {
    return refreshList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchLists value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (refreshList != null) {
      return refreshList(this);
    }
    return orElse();
  }
}

abstract class _RefreshList implements CommentsListViewEvent {
  const factory _RefreshList() = _$_RefreshList;
}

/// @nodoc
abstract class _$$_StateChangedCopyWith<$Res> {
  factory _$$_StateChangedCopyWith(
          _$_StateChanged value, $Res Function(_$_StateChanged) then) =
      __$$_StateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentsListViewState state});

  $CommentsListViewStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_StateChangedCopyWithImpl<$Res>
    extends _$CommentsListViewEventCopyWithImpl<$Res, _$_StateChanged>
    implements _$$_StateChangedCopyWith<$Res> {
  __$$_StateChangedCopyWithImpl(
      _$_StateChanged _value, $Res Function(_$_StateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_StateChanged(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as CommentsListViewState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentsListViewStateCopyWith<$Res> get state {
    return $CommentsListViewStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_StateChanged implements _StateChanged {
  const _$_StateChanged(this.state);

  @override
  final CommentsListViewState state;

  @override
  String toString() {
    return 'CommentsListViewEvent.stateChanged(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateChanged &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateChangedCopyWith<_$_StateChanged> get copyWith =>
      __$$_StateChangedCopyWithImpl<_$_StateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchList,
    required TResult Function() refreshList,
    required TResult Function(CommentsListViewState state) stateChanged,
    required TResult Function(CommentBody comment) addComment,
  }) {
    return stateChanged(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchList,
    TResult? Function()? refreshList,
    TResult? Function(CommentsListViewState state)? stateChanged,
    TResult? Function(CommentBody comment)? addComment,
  }) {
    return stateChanged?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchList,
    TResult Function()? refreshList,
    TResult Function(CommentsListViewState state)? stateChanged,
    TResult Function(CommentBody comment)? addComment,
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
    required TResult Function(_FetchLists value) fetchList,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_AddComment value) addComment,
  }) {
    return stateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchLists value)? fetchList,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_AddComment value)? addComment,
  }) {
    return stateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchLists value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (stateChanged != null) {
      return stateChanged(this);
    }
    return orElse();
  }
}

abstract class _StateChanged implements CommentsListViewEvent {
  const factory _StateChanged(final CommentsListViewState state) =
      _$_StateChanged;

  CommentsListViewState get state;
  @JsonKey(ignore: true)
  _$$_StateChangedCopyWith<_$_StateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCommentCopyWith<$Res> {
  factory _$$_AddCommentCopyWith(
          _$_AddComment value, $Res Function(_$_AddComment) then) =
      __$$_AddCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentBody comment});
}

/// @nodoc
class __$$_AddCommentCopyWithImpl<$Res>
    extends _$CommentsListViewEventCopyWithImpl<$Res, _$_AddComment>
    implements _$$_AddCommentCopyWith<$Res> {
  __$$_AddCommentCopyWithImpl(
      _$_AddComment _value, $Res Function(_$_AddComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$_AddComment(
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentBody,
    ));
  }
}

/// @nodoc

class _$_AddComment implements _AddComment {
  const _$_AddComment(this.comment);

  @override
  final CommentBody comment;

  @override
  String toString() {
    return 'CommentsListViewEvent.addComment(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddComment &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCommentCopyWith<_$_AddComment> get copyWith =>
      __$$_AddCommentCopyWithImpl<_$_AddComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int skip) fetchList,
    required TResult Function() refreshList,
    required TResult Function(CommentsListViewState state) stateChanged,
    required TResult Function(CommentBody comment) addComment,
  }) {
    return addComment(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int skip)? fetchList,
    TResult? Function()? refreshList,
    TResult? Function(CommentsListViewState state)? stateChanged,
    TResult? Function(CommentBody comment)? addComment,
  }) {
    return addComment?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int skip)? fetchList,
    TResult Function()? refreshList,
    TResult Function(CommentsListViewState state)? stateChanged,
    TResult Function(CommentBody comment)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchLists value) fetchList,
    required TResult Function(_RefreshList value) refreshList,
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_AddComment value) addComment,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchLists value)? fetchList,
    TResult? Function(_RefreshList value)? refreshList,
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_AddComment value)? addComment,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchLists value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class _AddComment implements CommentsListViewEvent {
  const factory _AddComment(final CommentBody comment) = _$_AddComment;

  CommentBody get comment;
  @JsonKey(ignore: true)
  _$$_AddCommentCopyWith<_$_AddComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentsListViewState {
  List<AppComment> get comments => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get reachMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsListViewStateCopyWith<CommentsListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsListViewStateCopyWith<$Res> {
  factory $CommentsListViewStateCopyWith(CommentsListViewState value,
          $Res Function(CommentsListViewState) then) =
      _$CommentsListViewStateCopyWithImpl<$Res, CommentsListViewState>;
  @useResult
  $Res call({List<AppComment> comments, bool isFetching, bool reachMax});
}

/// @nodoc
class _$CommentsListViewStateCopyWithImpl<$Res,
        $Val extends CommentsListViewState>
    implements $CommentsListViewStateCopyWith<$Res> {
  _$CommentsListViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? isFetching = null,
    Object? reachMax = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<AppComment>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      reachMax: null == reachMax
          ? _value.reachMax
          : reachMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentsListViewStateCopyWith<$Res>
    implements $CommentsListViewStateCopyWith<$Res> {
  factory _$$_CommentsListViewStateCopyWith(_$_CommentsListViewState value,
          $Res Function(_$_CommentsListViewState) then) =
      __$$_CommentsListViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppComment> comments, bool isFetching, bool reachMax});
}

/// @nodoc
class __$$_CommentsListViewStateCopyWithImpl<$Res>
    extends _$CommentsListViewStateCopyWithImpl<$Res, _$_CommentsListViewState>
    implements _$$_CommentsListViewStateCopyWith<$Res> {
  __$$_CommentsListViewStateCopyWithImpl(_$_CommentsListViewState _value,
      $Res Function(_$_CommentsListViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? isFetching = null,
    Object? reachMax = null,
  }) {
    return _then(_$_CommentsListViewState(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<AppComment>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      reachMax: null == reachMax
          ? _value.reachMax
          : reachMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CommentsListViewState implements _CommentsListViewState {
  const _$_CommentsListViewState(
      {required final List<AppComment> comments,
      required this.isFetching,
      required this.reachMax})
      : _comments = comments;

  final List<AppComment> _comments;
  @override
  List<AppComment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final bool isFetching;
  @override
  final bool reachMax;

  @override
  String toString() {
    return 'CommentsListViewState(comments: $comments, isFetching: $isFetching, reachMax: $reachMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentsListViewState &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.reachMax, reachMax) ||
                other.reachMax == reachMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_comments), isFetching, reachMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentsListViewStateCopyWith<_$_CommentsListViewState> get copyWith =>
      __$$_CommentsListViewStateCopyWithImpl<_$_CommentsListViewState>(
          this, _$identity);
}

abstract class _CommentsListViewState implements CommentsListViewState {
  const factory _CommentsListViewState(
      {required final List<AppComment> comments,
      required final bool isFetching,
      required final bool reachMax}) = _$_CommentsListViewState;

  @override
  List<AppComment> get comments;
  @override
  bool get isFetching;
  @override
  bool get reachMax;
  @override
  @JsonKey(ignore: true)
  _$$_CommentsListViewStateCopyWith<_$_CommentsListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
