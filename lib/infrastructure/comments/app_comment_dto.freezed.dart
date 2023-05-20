// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppCommentDto _$AppCommentDtoFromJson(Map<String, dynamic> json) {
  return _AppCommentDto.fromJson(json);
}

/// @nodoc
mixin _$AppCommentDto {
  @JsonKey(name: '_id')
  String get uuid => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;
  PostDto get post => throw _privateConstructorUsedError;
  String get postuuid => throw _privateConstructorUsedError;
  String get commentBody => throw _privateConstructorUsedError;
  int? get replyCount =>
      throw _privateConstructorUsedError; //AppCommentDto? replyToComment,
// UserDto? replyToUser,
  String? get replyTouuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppCommentDtoCopyWith<AppCommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCommentDtoCopyWith<$Res> {
  factory $AppCommentDtoCopyWith(
          AppCommentDto value, $Res Function(AppCommentDto) then) =
      _$AppCommentDtoCopyWithImpl<$Res, AppCommentDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String uuid,
      UserDto user,
      PostDto post,
      String postuuid,
      String commentBody,
      int? replyCount,
      String? replyTouuid});

  $UserDtoCopyWith<$Res> get user;
  $PostDtoCopyWith<$Res> get post;
}

/// @nodoc
class _$AppCommentDtoCopyWithImpl<$Res, $Val extends AppCommentDto>
    implements $AppCommentDtoCopyWith<$Res> {
  _$AppCommentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? user = null,
    Object? post = null,
    Object? postuuid = null,
    Object? commentBody = null,
    Object? replyCount = freezed,
    Object? replyTouuid = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostDto,
      postuuid: null == postuuid
          ? _value.postuuid
          : postuuid // ignore: cast_nullable_to_non_nullable
              as String,
      commentBody: null == commentBody
          ? _value.commentBody
          : commentBody // ignore: cast_nullable_to_non_nullable
              as String,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      replyTouuid: freezed == replyTouuid
          ? _value.replyTouuid
          : replyTouuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostDtoCopyWith<$Res> get post {
    return $PostDtoCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppCommentDtoCopyWith<$Res>
    implements $AppCommentDtoCopyWith<$Res> {
  factory _$$_AppCommentDtoCopyWith(
          _$_AppCommentDto value, $Res Function(_$_AppCommentDto) then) =
      __$$_AppCommentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String uuid,
      UserDto user,
      PostDto post,
      String postuuid,
      String commentBody,
      int? replyCount,
      String? replyTouuid});

  @override
  $UserDtoCopyWith<$Res> get user;
  @override
  $PostDtoCopyWith<$Res> get post;
}

/// @nodoc
class __$$_AppCommentDtoCopyWithImpl<$Res>
    extends _$AppCommentDtoCopyWithImpl<$Res, _$_AppCommentDto>
    implements _$$_AppCommentDtoCopyWith<$Res> {
  __$$_AppCommentDtoCopyWithImpl(
      _$_AppCommentDto _value, $Res Function(_$_AppCommentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? user = null,
    Object? post = null,
    Object? postuuid = null,
    Object? commentBody = null,
    Object? replyCount = freezed,
    Object? replyTouuid = freezed,
  }) {
    return _then(_$_AppCommentDto(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostDto,
      postuuid: null == postuuid
          ? _value.postuuid
          : postuuid // ignore: cast_nullable_to_non_nullable
              as String,
      commentBody: null == commentBody
          ? _value.commentBody
          : commentBody // ignore: cast_nullable_to_non_nullable
              as String,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      replyTouuid: freezed == replyTouuid
          ? _value.replyTouuid
          : replyTouuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppCommentDto implements _AppCommentDto {
  _$_AppCommentDto(
      {@JsonKey(name: '_id') required this.uuid,
      required this.user,
      required this.post,
      required this.postuuid,
      required this.commentBody,
      this.replyCount,
      this.replyTouuid});

  factory _$_AppCommentDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppCommentDtoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String uuid;
  @override
  final UserDto user;
  @override
  final PostDto post;
  @override
  final String postuuid;
  @override
  final String commentBody;
  @override
  final int? replyCount;
//AppCommentDto? replyToComment,
// UserDto? replyToUser,
  @override
  final String? replyTouuid;

  @override
  String toString() {
    return 'AppCommentDto(uuid: $uuid, user: $user, post: $post, postuuid: $postuuid, commentBody: $commentBody, replyCount: $replyCount, replyTouuid: $replyTouuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppCommentDto &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.postuuid, postuuid) ||
                other.postuuid == postuuid) &&
            (identical(other.commentBody, commentBody) ||
                other.commentBody == commentBody) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.replyTouuid, replyTouuid) ||
                other.replyTouuid == replyTouuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, user, post, postuuid,
      commentBody, replyCount, replyTouuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppCommentDtoCopyWith<_$_AppCommentDto> get copyWith =>
      __$$_AppCommentDtoCopyWithImpl<_$_AppCommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppCommentDtoToJson(
      this,
    );
  }
}

abstract class _AppCommentDto implements AppCommentDto {
  factory _AppCommentDto(
      {@JsonKey(name: '_id') required final String uuid,
      required final UserDto user,
      required final PostDto post,
      required final String postuuid,
      required final String commentBody,
      final int? replyCount,
      final String? replyTouuid}) = _$_AppCommentDto;

  factory _AppCommentDto.fromJson(Map<String, dynamic> json) =
      _$_AppCommentDto.fromJson;

  @override
  @JsonKey(name: '_id')
  String get uuid;
  @override
  UserDto get user;
  @override
  PostDto get post;
  @override
  String get postuuid;
  @override
  String get commentBody;
  @override
  int? get replyCount;
  @override //AppCommentDto? replyToComment,
// UserDto? replyToUser,
  String? get replyTouuid;
  @override
  @JsonKey(ignore: true)
  _$$_AppCommentDtoCopyWith<_$_AppCommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AppCommentFormDto _$AppCommentFormDtoFromJson(Map<String, dynamic> json) {
  return _AppCommentFormDto.fromJson(json);
}

/// @nodoc
mixin _$AppCommentFormDto {
  String get commentBody => throw _privateConstructorUsedError;
  String? get replyTouuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppCommentFormDtoCopyWith<AppCommentFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCommentFormDtoCopyWith<$Res> {
  factory $AppCommentFormDtoCopyWith(
          AppCommentFormDto value, $Res Function(AppCommentFormDto) then) =
      _$AppCommentFormDtoCopyWithImpl<$Res, AppCommentFormDto>;
  @useResult
  $Res call({String commentBody, String? replyTouuid});
}

/// @nodoc
class _$AppCommentFormDtoCopyWithImpl<$Res, $Val extends AppCommentFormDto>
    implements $AppCommentFormDtoCopyWith<$Res> {
  _$AppCommentFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentBody = null,
    Object? replyTouuid = freezed,
  }) {
    return _then(_value.copyWith(
      commentBody: null == commentBody
          ? _value.commentBody
          : commentBody // ignore: cast_nullable_to_non_nullable
              as String,
      replyTouuid: freezed == replyTouuid
          ? _value.replyTouuid
          : replyTouuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppCommentFormDtoCopyWith<$Res>
    implements $AppCommentFormDtoCopyWith<$Res> {
  factory _$$_AppCommentFormDtoCopyWith(_$_AppCommentFormDto value,
          $Res Function(_$_AppCommentFormDto) then) =
      __$$_AppCommentFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String commentBody, String? replyTouuid});
}

/// @nodoc
class __$$_AppCommentFormDtoCopyWithImpl<$Res>
    extends _$AppCommentFormDtoCopyWithImpl<$Res, _$_AppCommentFormDto>
    implements _$$_AppCommentFormDtoCopyWith<$Res> {
  __$$_AppCommentFormDtoCopyWithImpl(
      _$_AppCommentFormDto _value, $Res Function(_$_AppCommentFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentBody = null,
    Object? replyTouuid = freezed,
  }) {
    return _then(_$_AppCommentFormDto(
      commentBody: null == commentBody
          ? _value.commentBody
          : commentBody // ignore: cast_nullable_to_non_nullable
              as String,
      replyTouuid: freezed == replyTouuid
          ? _value.replyTouuid
          : replyTouuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppCommentFormDto implements _AppCommentFormDto {
  _$_AppCommentFormDto({required this.commentBody, this.replyTouuid});

  factory _$_AppCommentFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppCommentFormDtoFromJson(json);

  @override
  final String commentBody;
  @override
  final String? replyTouuid;

  @override
  String toString() {
    return 'AppCommentFormDto(commentBody: $commentBody, replyTouuid: $replyTouuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppCommentFormDto &&
            (identical(other.commentBody, commentBody) ||
                other.commentBody == commentBody) &&
            (identical(other.replyTouuid, replyTouuid) ||
                other.replyTouuid == replyTouuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commentBody, replyTouuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppCommentFormDtoCopyWith<_$_AppCommentFormDto> get copyWith =>
      __$$_AppCommentFormDtoCopyWithImpl<_$_AppCommentFormDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppCommentFormDtoToJson(
      this,
    );
  }
}

abstract class _AppCommentFormDto implements AppCommentFormDto {
  factory _AppCommentFormDto(
      {required final String commentBody,
      final String? replyTouuid}) = _$_AppCommentFormDto;

  factory _AppCommentFormDto.fromJson(Map<String, dynamic> json) =
      _$_AppCommentFormDto.fromJson;

  @override
  String get commentBody;
  @override
  String? get replyTouuid;
  @override
  @JsonKey(ignore: true)
  _$$_AppCommentFormDtoCopyWith<_$_AppCommentFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
