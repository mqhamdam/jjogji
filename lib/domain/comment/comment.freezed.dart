// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppComment {
  User get user => throw _privateConstructorUsedError;
  UUID get uuid => throw _privateConstructorUsedError;
  UUID get postuuid => throw _privateConstructorUsedError;
  Post get post => throw _privateConstructorUsedError;
  int? get replyCount => throw _privateConstructorUsedError;
  User? get replyToUser => throw _privateConstructorUsedError;
  UUID? get replyToCommentuuid => throw _privateConstructorUsedError; // if null
  CommentBody get commentBody => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppCommentCopyWith<AppComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCommentCopyWith<$Res> {
  factory $AppCommentCopyWith(
          AppComment value, $Res Function(AppComment) then) =
      _$AppCommentCopyWithImpl<$Res, AppComment>;
  @useResult
  $Res call(
      {User user,
      UUID uuid,
      UUID postuuid,
      Post post,
      int? replyCount,
      User? replyToUser,
      UUID? replyToCommentuuid,
      CommentBody commentBody});

  $UserCopyWith<$Res> get user;
  $PostCopyWith<$Res> get post;
  $UserCopyWith<$Res>? get replyToUser;
}

/// @nodoc
class _$AppCommentCopyWithImpl<$Res, $Val extends AppComment>
    implements $AppCommentCopyWith<$Res> {
  _$AppCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? uuid = null,
    Object? postuuid = null,
    Object? post = null,
    Object? replyCount = freezed,
    Object? replyToUser = freezed,
    Object? replyToCommentuuid = freezed,
    Object? commentBody = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      postuuid: null == postuuid
          ? _value.postuuid
          : postuuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      replyToUser: freezed == replyToUser
          ? _value.replyToUser
          : replyToUser // ignore: cast_nullable_to_non_nullable
              as User?,
      replyToCommentuuid: freezed == replyToCommentuuid
          ? _value.replyToCommentuuid
          : replyToCommentuuid // ignore: cast_nullable_to_non_nullable
              as UUID?,
      commentBody: null == commentBody
          ? _value.commentBody
          : commentBody // ignore: cast_nullable_to_non_nullable
              as CommentBody,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get replyToUser {
    if (_value.replyToUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.replyToUser!, (value) {
      return _then(_value.copyWith(replyToUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppCommentCopyWith<$Res>
    implements $AppCommentCopyWith<$Res> {
  factory _$$_AppCommentCopyWith(
          _$_AppComment value, $Res Function(_$_AppComment) then) =
      __$$_AppCommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      UUID uuid,
      UUID postuuid,
      Post post,
      int? replyCount,
      User? replyToUser,
      UUID? replyToCommentuuid,
      CommentBody commentBody});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $PostCopyWith<$Res> get post;
  @override
  $UserCopyWith<$Res>? get replyToUser;
}

/// @nodoc
class __$$_AppCommentCopyWithImpl<$Res>
    extends _$AppCommentCopyWithImpl<$Res, _$_AppComment>
    implements _$$_AppCommentCopyWith<$Res> {
  __$$_AppCommentCopyWithImpl(
      _$_AppComment _value, $Res Function(_$_AppComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? uuid = null,
    Object? postuuid = null,
    Object? post = null,
    Object? replyCount = freezed,
    Object? replyToUser = freezed,
    Object? replyToCommentuuid = freezed,
    Object? commentBody = null,
  }) {
    return _then(_$_AppComment(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      postuuid: null == postuuid
          ? _value.postuuid
          : postuuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      replyToUser: freezed == replyToUser
          ? _value.replyToUser
          : replyToUser // ignore: cast_nullable_to_non_nullable
              as User?,
      replyToCommentuuid: freezed == replyToCommentuuid
          ? _value.replyToCommentuuid
          : replyToCommentuuid // ignore: cast_nullable_to_non_nullable
              as UUID?,
      commentBody: null == commentBody
          ? _value.commentBody
          : commentBody // ignore: cast_nullable_to_non_nullable
              as CommentBody,
    ));
  }
}

/// @nodoc

class _$_AppComment implements _AppComment {
  const _$_AppComment(
      {required this.user,
      required this.uuid,
      required this.postuuid,
      required this.post,
      this.replyCount,
      this.replyToUser,
      this.replyToCommentuuid,
      required this.commentBody});

  @override
  final User user;
  @override
  final UUID uuid;
  @override
  final UUID postuuid;
  @override
  final Post post;
  @override
  final int? replyCount;
  @override
  final User? replyToUser;
  @override
  final UUID? replyToCommentuuid;
// if null
  @override
  final CommentBody commentBody;

  @override
  String toString() {
    return 'AppComment(user: $user, uuid: $uuid, postuuid: $postuuid, post: $post, replyCount: $replyCount, replyToUser: $replyToUser, replyToCommentuuid: $replyToCommentuuid, commentBody: $commentBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppComment &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.postuuid, postuuid) ||
                other.postuuid == postuuid) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.replyToUser, replyToUser) ||
                other.replyToUser == replyToUser) &&
            (identical(other.replyToCommentuuid, replyToCommentuuid) ||
                other.replyToCommentuuid == replyToCommentuuid) &&
            (identical(other.commentBody, commentBody) ||
                other.commentBody == commentBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, uuid, postuuid, post,
      replyCount, replyToUser, replyToCommentuuid, commentBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppCommentCopyWith<_$_AppComment> get copyWith =>
      __$$_AppCommentCopyWithImpl<_$_AppComment>(this, _$identity);
}

abstract class _AppComment implements AppComment {
  const factory _AppComment(
      {required final User user,
      required final UUID uuid,
      required final UUID postuuid,
      required final Post post,
      final int? replyCount,
      final User? replyToUser,
      final UUID? replyToCommentuuid,
      required final CommentBody commentBody}) = _$_AppComment;

  @override
  User get user;
  @override
  UUID get uuid;
  @override
  UUID get postuuid;
  @override
  Post get post;
  @override
  int? get replyCount;
  @override
  User? get replyToUser;
  @override
  UUID? get replyToCommentuuid;
  @override // if null
  CommentBody get commentBody;
  @override
  @JsonKey(ignore: true)
  _$$_AppCommentCopyWith<_$_AppComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppCommentForm {
  UUID? get replyToCommentuuid => throw _privateConstructorUsedError; // if null
  CommentBody get commentBody => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppCommentFormCopyWith<AppCommentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCommentFormCopyWith<$Res> {
  factory $AppCommentFormCopyWith(
          AppCommentForm value, $Res Function(AppCommentForm) then) =
      _$AppCommentFormCopyWithImpl<$Res, AppCommentForm>;
  @useResult
  $Res call({UUID? replyToCommentuuid, CommentBody commentBody});
}

/// @nodoc
class _$AppCommentFormCopyWithImpl<$Res, $Val extends AppCommentForm>
    implements $AppCommentFormCopyWith<$Res> {
  _$AppCommentFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyToCommentuuid = freezed,
    Object? commentBody = null,
  }) {
    return _then(_value.copyWith(
      replyToCommentuuid: freezed == replyToCommentuuid
          ? _value.replyToCommentuuid
          : replyToCommentuuid // ignore: cast_nullable_to_non_nullable
              as UUID?,
      commentBody: null == commentBody
          ? _value.commentBody
          : commentBody // ignore: cast_nullable_to_non_nullable
              as CommentBody,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppCommentFormCopyWith<$Res>
    implements $AppCommentFormCopyWith<$Res> {
  factory _$$_AppCommentFormCopyWith(
          _$_AppCommentForm value, $Res Function(_$_AppCommentForm) then) =
      __$$_AppCommentFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UUID? replyToCommentuuid, CommentBody commentBody});
}

/// @nodoc
class __$$_AppCommentFormCopyWithImpl<$Res>
    extends _$AppCommentFormCopyWithImpl<$Res, _$_AppCommentForm>
    implements _$$_AppCommentFormCopyWith<$Res> {
  __$$_AppCommentFormCopyWithImpl(
      _$_AppCommentForm _value, $Res Function(_$_AppCommentForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyToCommentuuid = freezed,
    Object? commentBody = null,
  }) {
    return _then(_$_AppCommentForm(
      replyToCommentuuid: freezed == replyToCommentuuid
          ? _value.replyToCommentuuid
          : replyToCommentuuid // ignore: cast_nullable_to_non_nullable
              as UUID?,
      commentBody: null == commentBody
          ? _value.commentBody
          : commentBody // ignore: cast_nullable_to_non_nullable
              as CommentBody,
    ));
  }
}

/// @nodoc

class _$_AppCommentForm implements _AppCommentForm {
  const _$_AppCommentForm({this.replyToCommentuuid, required this.commentBody});

  @override
  final UUID? replyToCommentuuid;
// if null
  @override
  final CommentBody commentBody;

  @override
  String toString() {
    return 'AppCommentForm(replyToCommentuuid: $replyToCommentuuid, commentBody: $commentBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppCommentForm &&
            (identical(other.replyToCommentuuid, replyToCommentuuid) ||
                other.replyToCommentuuid == replyToCommentuuid) &&
            (identical(other.commentBody, commentBody) ||
                other.commentBody == commentBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, replyToCommentuuid, commentBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppCommentFormCopyWith<_$_AppCommentForm> get copyWith =>
      __$$_AppCommentFormCopyWithImpl<_$_AppCommentForm>(this, _$identity);
}

abstract class _AppCommentForm implements AppCommentForm {
  const factory _AppCommentForm(
      {final UUID? replyToCommentuuid,
      required final CommentBody commentBody}) = _$_AppCommentForm;

  @override
  UUID? get replyToCommentuuid;
  @override // if null
  CommentBody get commentBody;
  @override
  @JsonKey(ignore: true)
  _$$_AppCommentFormCopyWith<_$_AppCommentForm> get copyWith =>
      throw _privateConstructorUsedError;
}
