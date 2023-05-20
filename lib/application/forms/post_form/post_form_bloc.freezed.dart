// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostFormState postFormState) stateChanged,
    required TResult Function(String str) postBodyChanged,
    required TResult Function(int i) postVisibilityTypeChanged,
    required TResult Function(List<Tag> tags) tagsChanged,
    required TResult Function(bool value) commentEnableButtonSwitched,
    required TResult Function() postButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostFormState postFormState)? stateChanged,
    TResult? Function(String str)? postBodyChanged,
    TResult? Function(int i)? postVisibilityTypeChanged,
    TResult? Function(List<Tag> tags)? tagsChanged,
    TResult? Function(bool value)? commentEnableButtonSwitched,
    TResult? Function()? postButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostFormState postFormState)? stateChanged,
    TResult Function(String str)? postBodyChanged,
    TResult Function(int i)? postVisibilityTypeChanged,
    TResult Function(List<Tag> tags)? tagsChanged,
    TResult Function(bool value)? commentEnableButtonSwitched,
    TResult Function()? postButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_PostBodyChanged value) postBodyChanged,
    required TResult Function(_PostVisibilityTypeChanged value)
        postVisibilityTypeChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_CommentEnableButtonSwitched value)
        commentEnableButtonSwitched,
    required TResult Function(_PostButtonPressed value) postButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_PostBodyChanged value)? postBodyChanged,
    TResult? Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult? Function(_PostButtonPressed value)? postButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_PostBodyChanged value)? postBodyChanged,
    TResult Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult Function(_PostButtonPressed value)? postButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormEventCopyWith<$Res> {
  factory $PostFormEventCopyWith(
          PostFormEvent value, $Res Function(PostFormEvent) then) =
      _$PostFormEventCopyWithImpl<$Res, PostFormEvent>;
}

/// @nodoc
class _$PostFormEventCopyWithImpl<$Res, $Val extends PostFormEvent>
    implements $PostFormEventCopyWith<$Res> {
  _$PostFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StateChangedCopyWith<$Res> {
  factory _$$_StateChangedCopyWith(
          _$_StateChanged value, $Res Function(_$_StateChanged) then) =
      __$$_StateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({PostFormState postFormState});

  $PostFormStateCopyWith<$Res> get postFormState;
}

/// @nodoc
class __$$_StateChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_StateChanged>
    implements _$$_StateChangedCopyWith<$Res> {
  __$$_StateChangedCopyWithImpl(
      _$_StateChanged _value, $Res Function(_$_StateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postFormState = null,
  }) {
    return _then(_$_StateChanged(
      null == postFormState
          ? _value.postFormState
          : postFormState // ignore: cast_nullable_to_non_nullable
              as PostFormState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostFormStateCopyWith<$Res> get postFormState {
    return $PostFormStateCopyWith<$Res>(_value.postFormState, (value) {
      return _then(_value.copyWith(postFormState: value));
    });
  }
}

/// @nodoc

class _$_StateChanged implements _StateChanged {
  const _$_StateChanged(this.postFormState);

  @override
  final PostFormState postFormState;

  @override
  String toString() {
    return 'PostFormEvent.stateChanged(postFormState: $postFormState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateChanged &&
            (identical(other.postFormState, postFormState) ||
                other.postFormState == postFormState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postFormState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateChangedCopyWith<_$_StateChanged> get copyWith =>
      __$$_StateChangedCopyWithImpl<_$_StateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostFormState postFormState) stateChanged,
    required TResult Function(String str) postBodyChanged,
    required TResult Function(int i) postVisibilityTypeChanged,
    required TResult Function(List<Tag> tags) tagsChanged,
    required TResult Function(bool value) commentEnableButtonSwitched,
    required TResult Function() postButtonPressed,
  }) {
    return stateChanged(postFormState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostFormState postFormState)? stateChanged,
    TResult? Function(String str)? postBodyChanged,
    TResult? Function(int i)? postVisibilityTypeChanged,
    TResult? Function(List<Tag> tags)? tagsChanged,
    TResult? Function(bool value)? commentEnableButtonSwitched,
    TResult? Function()? postButtonPressed,
  }) {
    return stateChanged?.call(postFormState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostFormState postFormState)? stateChanged,
    TResult Function(String str)? postBodyChanged,
    TResult Function(int i)? postVisibilityTypeChanged,
    TResult Function(List<Tag> tags)? tagsChanged,
    TResult Function(bool value)? commentEnableButtonSwitched,
    TResult Function()? postButtonPressed,
    required TResult orElse(),
  }) {
    if (stateChanged != null) {
      return stateChanged(postFormState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_PostBodyChanged value) postBodyChanged,
    required TResult Function(_PostVisibilityTypeChanged value)
        postVisibilityTypeChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_CommentEnableButtonSwitched value)
        commentEnableButtonSwitched,
    required TResult Function(_PostButtonPressed value) postButtonPressed,
  }) {
    return stateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_PostBodyChanged value)? postBodyChanged,
    TResult? Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult? Function(_PostButtonPressed value)? postButtonPressed,
  }) {
    return stateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_PostBodyChanged value)? postBodyChanged,
    TResult Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult Function(_PostButtonPressed value)? postButtonPressed,
    required TResult orElse(),
  }) {
    if (stateChanged != null) {
      return stateChanged(this);
    }
    return orElse();
  }
}

abstract class _StateChanged implements PostFormEvent {
  const factory _StateChanged(final PostFormState postFormState) =
      _$_StateChanged;

  PostFormState get postFormState;
  @JsonKey(ignore: true)
  _$$_StateChangedCopyWith<_$_StateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostBodyChangedCopyWith<$Res> {
  factory _$$_PostBodyChangedCopyWith(
          _$_PostBodyChanged value, $Res Function(_$_PostBodyChanged) then) =
      __$$_PostBodyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String str});
}

/// @nodoc
class __$$_PostBodyChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_PostBodyChanged>
    implements _$$_PostBodyChangedCopyWith<$Res> {
  __$$_PostBodyChangedCopyWithImpl(
      _$_PostBodyChanged _value, $Res Function(_$_PostBodyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? str = null,
  }) {
    return _then(_$_PostBodyChanged(
      null == str
          ? _value.str
          : str // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostBodyChanged implements _PostBodyChanged {
  const _$_PostBodyChanged(this.str);

  @override
  final String str;

  @override
  String toString() {
    return 'PostFormEvent.postBodyChanged(str: $str)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostBodyChanged &&
            (identical(other.str, str) || other.str == str));
  }

  @override
  int get hashCode => Object.hash(runtimeType, str);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostBodyChangedCopyWith<_$_PostBodyChanged> get copyWith =>
      __$$_PostBodyChangedCopyWithImpl<_$_PostBodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostFormState postFormState) stateChanged,
    required TResult Function(String str) postBodyChanged,
    required TResult Function(int i) postVisibilityTypeChanged,
    required TResult Function(List<Tag> tags) tagsChanged,
    required TResult Function(bool value) commentEnableButtonSwitched,
    required TResult Function() postButtonPressed,
  }) {
    return postBodyChanged(str);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostFormState postFormState)? stateChanged,
    TResult? Function(String str)? postBodyChanged,
    TResult? Function(int i)? postVisibilityTypeChanged,
    TResult? Function(List<Tag> tags)? tagsChanged,
    TResult? Function(bool value)? commentEnableButtonSwitched,
    TResult? Function()? postButtonPressed,
  }) {
    return postBodyChanged?.call(str);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostFormState postFormState)? stateChanged,
    TResult Function(String str)? postBodyChanged,
    TResult Function(int i)? postVisibilityTypeChanged,
    TResult Function(List<Tag> tags)? tagsChanged,
    TResult Function(bool value)? commentEnableButtonSwitched,
    TResult Function()? postButtonPressed,
    required TResult orElse(),
  }) {
    if (postBodyChanged != null) {
      return postBodyChanged(str);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_PostBodyChanged value) postBodyChanged,
    required TResult Function(_PostVisibilityTypeChanged value)
        postVisibilityTypeChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_CommentEnableButtonSwitched value)
        commentEnableButtonSwitched,
    required TResult Function(_PostButtonPressed value) postButtonPressed,
  }) {
    return postBodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_PostBodyChanged value)? postBodyChanged,
    TResult? Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult? Function(_PostButtonPressed value)? postButtonPressed,
  }) {
    return postBodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_PostBodyChanged value)? postBodyChanged,
    TResult Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult Function(_PostButtonPressed value)? postButtonPressed,
    required TResult orElse(),
  }) {
    if (postBodyChanged != null) {
      return postBodyChanged(this);
    }
    return orElse();
  }
}

abstract class _PostBodyChanged implements PostFormEvent {
  const factory _PostBodyChanged(final String str) = _$_PostBodyChanged;

  String get str;
  @JsonKey(ignore: true)
  _$$_PostBodyChangedCopyWith<_$_PostBodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostVisibilityTypeChangedCopyWith<$Res> {
  factory _$$_PostVisibilityTypeChangedCopyWith(
          _$_PostVisibilityTypeChanged value,
          $Res Function(_$_PostVisibilityTypeChanged) then) =
      __$$_PostVisibilityTypeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int i});
}

/// @nodoc
class __$$_PostVisibilityTypeChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_PostVisibilityTypeChanged>
    implements _$$_PostVisibilityTypeChangedCopyWith<$Res> {
  __$$_PostVisibilityTypeChangedCopyWithImpl(
      _$_PostVisibilityTypeChanged _value,
      $Res Function(_$_PostVisibilityTypeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? i = null,
  }) {
    return _then(_$_PostVisibilityTypeChanged(
      null == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostVisibilityTypeChanged implements _PostVisibilityTypeChanged {
  const _$_PostVisibilityTypeChanged(this.i);

  @override
  final int i;

  @override
  String toString() {
    return 'PostFormEvent.postVisibilityTypeChanged(i: $i)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostVisibilityTypeChanged &&
            (identical(other.i, i) || other.i == i));
  }

  @override
  int get hashCode => Object.hash(runtimeType, i);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostVisibilityTypeChangedCopyWith<_$_PostVisibilityTypeChanged>
      get copyWith => __$$_PostVisibilityTypeChangedCopyWithImpl<
          _$_PostVisibilityTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostFormState postFormState) stateChanged,
    required TResult Function(String str) postBodyChanged,
    required TResult Function(int i) postVisibilityTypeChanged,
    required TResult Function(List<Tag> tags) tagsChanged,
    required TResult Function(bool value) commentEnableButtonSwitched,
    required TResult Function() postButtonPressed,
  }) {
    return postVisibilityTypeChanged(i);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostFormState postFormState)? stateChanged,
    TResult? Function(String str)? postBodyChanged,
    TResult? Function(int i)? postVisibilityTypeChanged,
    TResult? Function(List<Tag> tags)? tagsChanged,
    TResult? Function(bool value)? commentEnableButtonSwitched,
    TResult? Function()? postButtonPressed,
  }) {
    return postVisibilityTypeChanged?.call(i);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostFormState postFormState)? stateChanged,
    TResult Function(String str)? postBodyChanged,
    TResult Function(int i)? postVisibilityTypeChanged,
    TResult Function(List<Tag> tags)? tagsChanged,
    TResult Function(bool value)? commentEnableButtonSwitched,
    TResult Function()? postButtonPressed,
    required TResult orElse(),
  }) {
    if (postVisibilityTypeChanged != null) {
      return postVisibilityTypeChanged(i);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_PostBodyChanged value) postBodyChanged,
    required TResult Function(_PostVisibilityTypeChanged value)
        postVisibilityTypeChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_CommentEnableButtonSwitched value)
        commentEnableButtonSwitched,
    required TResult Function(_PostButtonPressed value) postButtonPressed,
  }) {
    return postVisibilityTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_PostBodyChanged value)? postBodyChanged,
    TResult? Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult? Function(_PostButtonPressed value)? postButtonPressed,
  }) {
    return postVisibilityTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_PostBodyChanged value)? postBodyChanged,
    TResult Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult Function(_PostButtonPressed value)? postButtonPressed,
    required TResult orElse(),
  }) {
    if (postVisibilityTypeChanged != null) {
      return postVisibilityTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _PostVisibilityTypeChanged implements PostFormEvent {
  const factory _PostVisibilityTypeChanged(final int i) =
      _$_PostVisibilityTypeChanged;

  int get i;
  @JsonKey(ignore: true)
  _$$_PostVisibilityTypeChangedCopyWith<_$_PostVisibilityTypeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TagsChangedCopyWith<$Res> {
  factory _$$_TagsChangedCopyWith(
          _$_TagsChanged value, $Res Function(_$_TagsChanged) then) =
      __$$_TagsChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Tag> tags});
}

/// @nodoc
class __$$_TagsChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_TagsChanged>
    implements _$$_TagsChangedCopyWith<$Res> {
  __$$_TagsChangedCopyWithImpl(
      _$_TagsChanged _value, $Res Function(_$_TagsChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_$_TagsChanged(
      null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc

class _$_TagsChanged implements _TagsChanged {
  const _$_TagsChanged(final List<Tag> tags) : _tags = tags;

  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'PostFormEvent.tagsChanged(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagsChanged &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagsChangedCopyWith<_$_TagsChanged> get copyWith =>
      __$$_TagsChangedCopyWithImpl<_$_TagsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostFormState postFormState) stateChanged,
    required TResult Function(String str) postBodyChanged,
    required TResult Function(int i) postVisibilityTypeChanged,
    required TResult Function(List<Tag> tags) tagsChanged,
    required TResult Function(bool value) commentEnableButtonSwitched,
    required TResult Function() postButtonPressed,
  }) {
    return tagsChanged(tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostFormState postFormState)? stateChanged,
    TResult? Function(String str)? postBodyChanged,
    TResult? Function(int i)? postVisibilityTypeChanged,
    TResult? Function(List<Tag> tags)? tagsChanged,
    TResult? Function(bool value)? commentEnableButtonSwitched,
    TResult? Function()? postButtonPressed,
  }) {
    return tagsChanged?.call(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostFormState postFormState)? stateChanged,
    TResult Function(String str)? postBodyChanged,
    TResult Function(int i)? postVisibilityTypeChanged,
    TResult Function(List<Tag> tags)? tagsChanged,
    TResult Function(bool value)? commentEnableButtonSwitched,
    TResult Function()? postButtonPressed,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_PostBodyChanged value) postBodyChanged,
    required TResult Function(_PostVisibilityTypeChanged value)
        postVisibilityTypeChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_CommentEnableButtonSwitched value)
        commentEnableButtonSwitched,
    required TResult Function(_PostButtonPressed value) postButtonPressed,
  }) {
    return tagsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_PostBodyChanged value)? postBodyChanged,
    TResult? Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult? Function(_PostButtonPressed value)? postButtonPressed,
  }) {
    return tagsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_PostBodyChanged value)? postBodyChanged,
    TResult Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult Function(_PostButtonPressed value)? postButtonPressed,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(this);
    }
    return orElse();
  }
}

abstract class _TagsChanged implements PostFormEvent {
  const factory _TagsChanged(final List<Tag> tags) = _$_TagsChanged;

  List<Tag> get tags;
  @JsonKey(ignore: true)
  _$$_TagsChangedCopyWith<_$_TagsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CommentEnableButtonSwitchedCopyWith<$Res> {
  factory _$$_CommentEnableButtonSwitchedCopyWith(
          _$_CommentEnableButtonSwitched value,
          $Res Function(_$_CommentEnableButtonSwitched) then) =
      __$$_CommentEnableButtonSwitchedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_CommentEnableButtonSwitchedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_CommentEnableButtonSwitched>
    implements _$$_CommentEnableButtonSwitchedCopyWith<$Res> {
  __$$_CommentEnableButtonSwitchedCopyWithImpl(
      _$_CommentEnableButtonSwitched _value,
      $Res Function(_$_CommentEnableButtonSwitched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_CommentEnableButtonSwitched(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CommentEnableButtonSwitched implements _CommentEnableButtonSwitched {
  const _$_CommentEnableButtonSwitched(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'PostFormEvent.commentEnableButtonSwitched(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentEnableButtonSwitched &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentEnableButtonSwitchedCopyWith<_$_CommentEnableButtonSwitched>
      get copyWith => __$$_CommentEnableButtonSwitchedCopyWithImpl<
          _$_CommentEnableButtonSwitched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostFormState postFormState) stateChanged,
    required TResult Function(String str) postBodyChanged,
    required TResult Function(int i) postVisibilityTypeChanged,
    required TResult Function(List<Tag> tags) tagsChanged,
    required TResult Function(bool value) commentEnableButtonSwitched,
    required TResult Function() postButtonPressed,
  }) {
    return commentEnableButtonSwitched(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostFormState postFormState)? stateChanged,
    TResult? Function(String str)? postBodyChanged,
    TResult? Function(int i)? postVisibilityTypeChanged,
    TResult? Function(List<Tag> tags)? tagsChanged,
    TResult? Function(bool value)? commentEnableButtonSwitched,
    TResult? Function()? postButtonPressed,
  }) {
    return commentEnableButtonSwitched?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostFormState postFormState)? stateChanged,
    TResult Function(String str)? postBodyChanged,
    TResult Function(int i)? postVisibilityTypeChanged,
    TResult Function(List<Tag> tags)? tagsChanged,
    TResult Function(bool value)? commentEnableButtonSwitched,
    TResult Function()? postButtonPressed,
    required TResult orElse(),
  }) {
    if (commentEnableButtonSwitched != null) {
      return commentEnableButtonSwitched(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_PostBodyChanged value) postBodyChanged,
    required TResult Function(_PostVisibilityTypeChanged value)
        postVisibilityTypeChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_CommentEnableButtonSwitched value)
        commentEnableButtonSwitched,
    required TResult Function(_PostButtonPressed value) postButtonPressed,
  }) {
    return commentEnableButtonSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_PostBodyChanged value)? postBodyChanged,
    TResult? Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult? Function(_PostButtonPressed value)? postButtonPressed,
  }) {
    return commentEnableButtonSwitched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_PostBodyChanged value)? postBodyChanged,
    TResult Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult Function(_PostButtonPressed value)? postButtonPressed,
    required TResult orElse(),
  }) {
    if (commentEnableButtonSwitched != null) {
      return commentEnableButtonSwitched(this);
    }
    return orElse();
  }
}

abstract class _CommentEnableButtonSwitched implements PostFormEvent {
  const factory _CommentEnableButtonSwitched(final bool value) =
      _$_CommentEnableButtonSwitched;

  bool get value;
  @JsonKey(ignore: true)
  _$$_CommentEnableButtonSwitchedCopyWith<_$_CommentEnableButtonSwitched>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostButtonPressedCopyWith<$Res> {
  factory _$$_PostButtonPressedCopyWith(_$_PostButtonPressed value,
          $Res Function(_$_PostButtonPressed) then) =
      __$$_PostButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PostButtonPressedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_PostButtonPressed>
    implements _$$_PostButtonPressedCopyWith<$Res> {
  __$$_PostButtonPressedCopyWithImpl(
      _$_PostButtonPressed _value, $Res Function(_$_PostButtonPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PostButtonPressed implements _PostButtonPressed {
  const _$_PostButtonPressed();

  @override
  String toString() {
    return 'PostFormEvent.postButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PostButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostFormState postFormState) stateChanged,
    required TResult Function(String str) postBodyChanged,
    required TResult Function(int i) postVisibilityTypeChanged,
    required TResult Function(List<Tag> tags) tagsChanged,
    required TResult Function(bool value) commentEnableButtonSwitched,
    required TResult Function() postButtonPressed,
  }) {
    return postButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostFormState postFormState)? stateChanged,
    TResult? Function(String str)? postBodyChanged,
    TResult? Function(int i)? postVisibilityTypeChanged,
    TResult? Function(List<Tag> tags)? tagsChanged,
    TResult? Function(bool value)? commentEnableButtonSwitched,
    TResult? Function()? postButtonPressed,
  }) {
    return postButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostFormState postFormState)? stateChanged,
    TResult Function(String str)? postBodyChanged,
    TResult Function(int i)? postVisibilityTypeChanged,
    TResult Function(List<Tag> tags)? tagsChanged,
    TResult Function(bool value)? commentEnableButtonSwitched,
    TResult Function()? postButtonPressed,
    required TResult orElse(),
  }) {
    if (postButtonPressed != null) {
      return postButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_PostBodyChanged value) postBodyChanged,
    required TResult Function(_PostVisibilityTypeChanged value)
        postVisibilityTypeChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_CommentEnableButtonSwitched value)
        commentEnableButtonSwitched,
    required TResult Function(_PostButtonPressed value) postButtonPressed,
  }) {
    return postButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_PostBodyChanged value)? postBodyChanged,
    TResult? Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult? Function(_PostButtonPressed value)? postButtonPressed,
  }) {
    return postButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_PostBodyChanged value)? postBodyChanged,
    TResult Function(_PostVisibilityTypeChanged value)?
        postVisibilityTypeChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_CommentEnableButtonSwitched value)?
        commentEnableButtonSwitched,
    TResult Function(_PostButtonPressed value)? postButtonPressed,
    required TResult orElse(),
  }) {
    if (postButtonPressed != null) {
      return postButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _PostButtonPressed implements PostFormEvent {
  const factory _PostButtonPressed() = _$_PostButtonPressed;
}

/// @nodoc
mixin _$PostFormState {
  PostForm get postForm => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<PostFailures, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostFormStateCopyWith<PostFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormStateCopyWith<$Res> {
  factory $PostFormStateCopyWith(
          PostFormState value, $Res Function(PostFormState) then) =
      _$PostFormStateCopyWithImpl<$Res, PostFormState>;
  @useResult
  $Res call(
      {PostForm postForm,
      bool isSaving,
      bool showErrorMessages,
      Option<Either<PostFailures, Unit>> saveFailureOrSuccessOption});

  $PostFormCopyWith<$Res> get postForm;
}

/// @nodoc
class _$PostFormStateCopyWithImpl<$Res, $Val extends PostFormState>
    implements $PostFormStateCopyWith<$Res> {
  _$PostFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postForm = null,
    Object? isSaving = null,
    Object? showErrorMessages = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      postForm: null == postForm
          ? _value.postForm
          : postForm // ignore: cast_nullable_to_non_nullable
              as PostForm,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PostFailures, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostFormCopyWith<$Res> get postForm {
    return $PostFormCopyWith<$Res>(_value.postForm, (value) {
      return _then(_value.copyWith(postForm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostFormStateCopyWith<$Res>
    implements $PostFormStateCopyWith<$Res> {
  factory _$$_PostFormStateCopyWith(
          _$_PostFormState value, $Res Function(_$_PostFormState) then) =
      __$$_PostFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostForm postForm,
      bool isSaving,
      bool showErrorMessages,
      Option<Either<PostFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $PostFormCopyWith<$Res> get postForm;
}

/// @nodoc
class __$$_PostFormStateCopyWithImpl<$Res>
    extends _$PostFormStateCopyWithImpl<$Res, _$_PostFormState>
    implements _$$_PostFormStateCopyWith<$Res> {
  __$$_PostFormStateCopyWithImpl(
      _$_PostFormState _value, $Res Function(_$_PostFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postForm = null,
    Object? isSaving = null,
    Object? showErrorMessages = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_PostFormState(
      postForm: null == postForm
          ? _value.postForm
          : postForm // ignore: cast_nullable_to_non_nullable
              as PostForm,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PostFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PostFormState implements _PostFormState {
  const _$_PostFormState(
      {required this.postForm,
      required this.isSaving,
      required this.showErrorMessages,
      required this.saveFailureOrSuccessOption});

  @override
  final PostForm postForm;
  @override
  final bool isSaving;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<PostFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'PostFormState(postForm: $postForm, isSaving: $isSaving, showErrorMessages: $showErrorMessages, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostFormState &&
            (identical(other.postForm, postForm) ||
                other.postForm == postForm) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postForm, isSaving,
      showErrorMessages, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostFormStateCopyWith<_$_PostFormState> get copyWith =>
      __$$_PostFormStateCopyWithImpl<_$_PostFormState>(this, _$identity);
}

abstract class _PostFormState implements PostFormState {
  const factory _PostFormState(
      {required final PostForm postForm,
      required final bool isSaving,
      required final bool showErrorMessages,
      required final Option<Either<PostFailures, Unit>>
          saveFailureOrSuccessOption}) = _$_PostFormState;

  @override
  PostForm get postForm;
  @override
  bool get isSaving;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<PostFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_PostFormStateCopyWith<_$_PostFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
