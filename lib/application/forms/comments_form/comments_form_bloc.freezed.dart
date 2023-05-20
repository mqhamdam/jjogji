// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentsFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String str) commentBodyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String str)? commentBodyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String str)? commentBodyChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CommentBodyChanged value) commentBodyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CommentBodyChanged value)? commentBodyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CommentBodyChanged value)? commentBodyChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsFormEventCopyWith<$Res> {
  factory $CommentsFormEventCopyWith(
          CommentsFormEvent value, $Res Function(CommentsFormEvent) then) =
      _$CommentsFormEventCopyWithImpl<$Res, CommentsFormEvent>;
}

/// @nodoc
class _$CommentsFormEventCopyWithImpl<$Res, $Val extends CommentsFormEvent>
    implements $CommentsFormEventCopyWith<$Res> {
  _$CommentsFormEventCopyWithImpl(this._value, this._then);

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
    extends _$CommentsFormEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CommentsFormEvent.started()';
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
    required TResult Function(String str) commentBodyChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String str)? commentBodyChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String str)? commentBodyChanged,
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
    required TResult Function(_CommentBodyChanged value) commentBodyChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CommentBodyChanged value)? commentBodyChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CommentBodyChanged value)? commentBodyChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CommentsFormEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_CommentBodyChangedCopyWith<$Res> {
  factory _$$_CommentBodyChangedCopyWith(_$_CommentBodyChanged value,
          $Res Function(_$_CommentBodyChanged) then) =
      __$$_CommentBodyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String str});
}

/// @nodoc
class __$$_CommentBodyChangedCopyWithImpl<$Res>
    extends _$CommentsFormEventCopyWithImpl<$Res, _$_CommentBodyChanged>
    implements _$$_CommentBodyChangedCopyWith<$Res> {
  __$$_CommentBodyChangedCopyWithImpl(
      _$_CommentBodyChanged _value, $Res Function(_$_CommentBodyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? str = null,
  }) {
    return _then(_$_CommentBodyChanged(
      null == str
          ? _value.str
          : str // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentBodyChanged implements _CommentBodyChanged {
  const _$_CommentBodyChanged(this.str);

  @override
  final String str;

  @override
  String toString() {
    return 'CommentsFormEvent.commentBodyChanged(str: $str)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentBodyChanged &&
            (identical(other.str, str) || other.str == str));
  }

  @override
  int get hashCode => Object.hash(runtimeType, str);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentBodyChangedCopyWith<_$_CommentBodyChanged> get copyWith =>
      __$$_CommentBodyChangedCopyWithImpl<_$_CommentBodyChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String str) commentBodyChanged,
  }) {
    return commentBodyChanged(str);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String str)? commentBodyChanged,
  }) {
    return commentBodyChanged?.call(str);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String str)? commentBodyChanged,
    required TResult orElse(),
  }) {
    if (commentBodyChanged != null) {
      return commentBodyChanged(str);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CommentBodyChanged value) commentBodyChanged,
  }) {
    return commentBodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CommentBodyChanged value)? commentBodyChanged,
  }) {
    return commentBodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CommentBodyChanged value)? commentBodyChanged,
    required TResult orElse(),
  }) {
    if (commentBodyChanged != null) {
      return commentBodyChanged(this);
    }
    return orElse();
  }
}

abstract class _CommentBodyChanged implements CommentsFormEvent {
  const factory _CommentBodyChanged(final String str) = _$_CommentBodyChanged;

  String get str;
  @JsonKey(ignore: true)
  _$$_CommentBodyChangedCopyWith<_$_CommentBodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentsFormState {
  CommentBody get commentBody => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsFormStateCopyWith<CommentsFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsFormStateCopyWith<$Res> {
  factory $CommentsFormStateCopyWith(
          CommentsFormState value, $Res Function(CommentsFormState) then) =
      _$CommentsFormStateCopyWithImpl<$Res, CommentsFormState>;
  @useResult
  $Res call({CommentBody commentBody});
}

/// @nodoc
class _$CommentsFormStateCopyWithImpl<$Res, $Val extends CommentsFormState>
    implements $CommentsFormStateCopyWith<$Res> {
  _$CommentsFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentBody = null,
  }) {
    return _then(_value.copyWith(
      commentBody: null == commentBody
          ? _value.commentBody
          : commentBody // ignore: cast_nullable_to_non_nullable
              as CommentBody,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppCommentFormCopyWith<$Res>
    implements $CommentsFormStateCopyWith<$Res> {
  factory _$$_AppCommentFormCopyWith(
          _$_AppCommentForm value, $Res Function(_$_AppCommentForm) then) =
      __$$_AppCommentFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentBody commentBody});
}

/// @nodoc
class __$$_AppCommentFormCopyWithImpl<$Res>
    extends _$CommentsFormStateCopyWithImpl<$Res, _$_AppCommentForm>
    implements _$$_AppCommentFormCopyWith<$Res> {
  __$$_AppCommentFormCopyWithImpl(
      _$_AppCommentForm _value, $Res Function(_$_AppCommentForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentBody = null,
  }) {
    return _then(_$_AppCommentForm(
      commentBody: null == commentBody
          ? _value.commentBody
          : commentBody // ignore: cast_nullable_to_non_nullable
              as CommentBody,
    ));
  }
}

/// @nodoc

class _$_AppCommentForm implements _AppCommentForm {
  const _$_AppCommentForm({required this.commentBody});

  @override
  final CommentBody commentBody;

  @override
  String toString() {
    return 'CommentsFormState(commentBody: $commentBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppCommentForm &&
            (identical(other.commentBody, commentBody) ||
                other.commentBody == commentBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppCommentFormCopyWith<_$_AppCommentForm> get copyWith =>
      __$$_AppCommentFormCopyWithImpl<_$_AppCommentForm>(this, _$identity);
}

abstract class _AppCommentForm implements CommentsFormState {
  const factory _AppCommentForm({required final CommentBody commentBody}) =
      _$_AppCommentForm;

  @override
  CommentBody get commentBody;
  @override
  @JsonKey(ignore: true)
  _$$_AppCommentFormCopyWith<_$_AppCommentForm> get copyWith =>
      throw _privateConstructorUsedError;
}
