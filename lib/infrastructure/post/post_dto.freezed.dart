// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostDto _$PostDtoFromJson(Map<String, dynamic> json) {
  return _PostDto.fromJson(json);
}

/// @nodoc
mixin _$PostDto {
  @JsonKey(name: "_id")
  String get uuid => throw _privateConstructorUsedError;
  String get authoruuid => throw _privateConstructorUsedError;
  String get postBody => throw _privateConstructorUsedError;
  PostVisibilityType get postVisibilityType =>
      throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool get commentEnabled => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  UserDto get authorData => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDtoCopyWith<PostDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDtoCopyWith<$Res> {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) then) =
      _$PostDtoCopyWithImpl<$Res, PostDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String uuid,
      String authoruuid,
      String postBody,
      PostVisibilityType postVisibilityType,
      List<String> tags,
      bool commentEnabled,
      int likeCount,
      UserDto authorData,
      int commentCount});

  $UserDtoCopyWith<$Res> get authorData;
}

/// @nodoc
class _$PostDtoCopyWithImpl<$Res, $Val extends PostDto>
    implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? authoruuid = null,
    Object? postBody = null,
    Object? postVisibilityType = null,
    Object? tags = null,
    Object? commentEnabled = null,
    Object? likeCount = null,
    Object? authorData = null,
    Object? commentCount = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      authoruuid: null == authoruuid
          ? _value.authoruuid
          : authoruuid // ignore: cast_nullable_to_non_nullable
              as String,
      postBody: null == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as String,
      postVisibilityType: null == postVisibilityType
          ? _value.postVisibilityType
          : postVisibilityType // ignore: cast_nullable_to_non_nullable
              as PostVisibilityType,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentEnabled: null == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      authorData: null == authorData
          ? _value.authorData
          : authorData // ignore: cast_nullable_to_non_nullable
              as UserDto,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get authorData {
    return $UserDtoCopyWith<$Res>(_value.authorData, (value) {
      return _then(_value.copyWith(authorData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$$_PostDtoCopyWith(
          _$_PostDto value, $Res Function(_$_PostDto) then) =
      __$$_PostDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String uuid,
      String authoruuid,
      String postBody,
      PostVisibilityType postVisibilityType,
      List<String> tags,
      bool commentEnabled,
      int likeCount,
      UserDto authorData,
      int commentCount});

  @override
  $UserDtoCopyWith<$Res> get authorData;
}

/// @nodoc
class __$$_PostDtoCopyWithImpl<$Res>
    extends _$PostDtoCopyWithImpl<$Res, _$_PostDto>
    implements _$$_PostDtoCopyWith<$Res> {
  __$$_PostDtoCopyWithImpl(_$_PostDto _value, $Res Function(_$_PostDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? authoruuid = null,
    Object? postBody = null,
    Object? postVisibilityType = null,
    Object? tags = null,
    Object? commentEnabled = null,
    Object? likeCount = null,
    Object? authorData = null,
    Object? commentCount = null,
  }) {
    return _then(_$_PostDto(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      authoruuid: null == authoruuid
          ? _value.authoruuid
          : authoruuid // ignore: cast_nullable_to_non_nullable
              as String,
      postBody: null == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as String,
      postVisibilityType: null == postVisibilityType
          ? _value.postVisibilityType
          : postVisibilityType // ignore: cast_nullable_to_non_nullable
              as PostVisibilityType,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentEnabled: null == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      authorData: null == authorData
          ? _value.authorData
          : authorData // ignore: cast_nullable_to_non_nullable
              as UserDto,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostDto implements _PostDto {
  _$_PostDto(
      {@JsonKey(name: "_id") required this.uuid,
      required this.authoruuid,
      required this.postBody,
      required this.postVisibilityType,
      required final List<String> tags,
      required this.commentEnabled,
      required this.likeCount,
      required this.authorData,
      required this.commentCount})
      : _tags = tags;

  factory _$_PostDto.fromJson(Map<String, dynamic> json) =>
      _$$_PostDtoFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String uuid;
  @override
  final String authoruuid;
  @override
  final String postBody;
  @override
  final PostVisibilityType postVisibilityType;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final bool commentEnabled;
  @override
  final int likeCount;
  @override
  final UserDto authorData;
  @override
  final int commentCount;

  @override
  String toString() {
    return 'PostDto(uuid: $uuid, authoruuid: $authoruuid, postBody: $postBody, postVisibilityType: $postVisibilityType, tags: $tags, commentEnabled: $commentEnabled, likeCount: $likeCount, authorData: $authorData, commentCount: $commentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostDto &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.authoruuid, authoruuid) ||
                other.authoruuid == authoruuid) &&
            (identical(other.postBody, postBody) ||
                other.postBody == postBody) &&
            (identical(other.postVisibilityType, postVisibilityType) ||
                other.postVisibilityType == postVisibilityType) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.commentEnabled, commentEnabled) ||
                other.commentEnabled == commentEnabled) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.authorData, authorData) ||
                other.authorData == authorData) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      authoruuid,
      postBody,
      postVisibilityType,
      const DeepCollectionEquality().hash(_tags),
      commentEnabled,
      likeCount,
      authorData,
      commentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostDtoCopyWith<_$_PostDto> get copyWith =>
      __$$_PostDtoCopyWithImpl<_$_PostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostDtoToJson(
      this,
    );
  }
}

abstract class _PostDto implements PostDto {
  factory _PostDto(
      {@JsonKey(name: "_id") required final String uuid,
      required final String authoruuid,
      required final String postBody,
      required final PostVisibilityType postVisibilityType,
      required final List<String> tags,
      required final bool commentEnabled,
      required final int likeCount,
      required final UserDto authorData,
      required final int commentCount}) = _$_PostDto;

  factory _PostDto.fromJson(Map<String, dynamic> json) = _$_PostDto.fromJson;

  @override
  @JsonKey(name: "_id")
  String get uuid;
  @override
  String get authoruuid;
  @override
  String get postBody;
  @override
  PostVisibilityType get postVisibilityType;
  @override
  List<String> get tags;
  @override
  bool get commentEnabled;
  @override
  int get likeCount;
  @override
  UserDto get authorData;
  @override
  int get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$_PostDtoCopyWith<_$_PostDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PostRelationDto _$PostRelationDtoFromJson(Map<String, dynamic> json) {
  return _PostRelationDto.fromJson(json);
}

/// @nodoc
mixin _$PostRelationDto {
  bool get like => throw _privateConstructorUsedError;
  bool get save => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostRelationDtoCopyWith<PostRelationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRelationDtoCopyWith<$Res> {
  factory $PostRelationDtoCopyWith(
          PostRelationDto value, $Res Function(PostRelationDto) then) =
      _$PostRelationDtoCopyWithImpl<$Res, PostRelationDto>;
  @useResult
  $Res call({bool like, bool save});
}

/// @nodoc
class _$PostRelationDtoCopyWithImpl<$Res, $Val extends PostRelationDto>
    implements $PostRelationDtoCopyWith<$Res> {
  _$PostRelationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? save = null,
  }) {
    return _then(_value.copyWith(
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
      save: null == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostRelationDtoCopyWith<$Res>
    implements $PostRelationDtoCopyWith<$Res> {
  factory _$$_PostRelationDtoCopyWith(
          _$_PostRelationDto value, $Res Function(_$_PostRelationDto) then) =
      __$$_PostRelationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool like, bool save});
}

/// @nodoc
class __$$_PostRelationDtoCopyWithImpl<$Res>
    extends _$PostRelationDtoCopyWithImpl<$Res, _$_PostRelationDto>
    implements _$$_PostRelationDtoCopyWith<$Res> {
  __$$_PostRelationDtoCopyWithImpl(
      _$_PostRelationDto _value, $Res Function(_$_PostRelationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? save = null,
  }) {
    return _then(_$_PostRelationDto(
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
      save: null == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostRelationDto implements _PostRelationDto {
  _$_PostRelationDto({required this.like, required this.save});

  factory _$_PostRelationDto.fromJson(Map<String, dynamic> json) =>
      _$$_PostRelationDtoFromJson(json);

  @override
  final bool like;
  @override
  final bool save;

  @override
  String toString() {
    return 'PostRelationDto(like: $like, save: $save)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostRelationDto &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.save, save) || other.save == save));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, like, save);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostRelationDtoCopyWith<_$_PostRelationDto> get copyWith =>
      __$$_PostRelationDtoCopyWithImpl<_$_PostRelationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostRelationDtoToJson(
      this,
    );
  }
}

abstract class _PostRelationDto implements PostRelationDto {
  factory _PostRelationDto(
      {required final bool like,
      required final bool save}) = _$_PostRelationDto;

  factory _PostRelationDto.fromJson(Map<String, dynamic> json) =
      _$_PostRelationDto.fromJson;

  @override
  bool get like;
  @override
  bool get save;
  @override
  @JsonKey(ignore: true)
  _$$_PostRelationDtoCopyWith<_$_PostRelationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PostFilterDto _$PostFilterDtoFromJson(Map<String, dynamic> json) {
  return _PostFilterDto.fromJson(json);
}

/// @nodoc
mixin _$PostFilterDto {
  String? get authoruuid => throw _privateConstructorUsedError;
  bool? get onlySaved => throw _privateConstructorUsedError;
  bool? get onlyLiked => throw _privateConstructorUsedError;
  bool? get onlyMine => throw _privateConstructorUsedError;
  bool? get onlyFollowing => throw _privateConstructorUsedError;
  bool? get onlySpecial => throw _privateConstructorUsedError;
  bool? get onlyPrivate => throw _privateConstructorUsedError;
  int? get atLeastLikeCount => throw _privateConstructorUsedError;
  int? get atLeastCommentCount => throw _privateConstructorUsedError;
  bool? get newFirst => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostFilterDtoCopyWith<PostFilterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFilterDtoCopyWith<$Res> {
  factory $PostFilterDtoCopyWith(
          PostFilterDto value, $Res Function(PostFilterDto) then) =
      _$PostFilterDtoCopyWithImpl<$Res, PostFilterDto>;
  @useResult
  $Res call(
      {String? authoruuid,
      bool? onlySaved,
      bool? onlyLiked,
      bool? onlyMine,
      bool? onlyFollowing,
      bool? onlySpecial,
      bool? onlyPrivate,
      int? atLeastLikeCount,
      int? atLeastCommentCount,
      bool? newFirst});
}

/// @nodoc
class _$PostFilterDtoCopyWithImpl<$Res, $Val extends PostFilterDto>
    implements $PostFilterDtoCopyWith<$Res> {
  _$PostFilterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authoruuid = freezed,
    Object? onlySaved = freezed,
    Object? onlyLiked = freezed,
    Object? onlyMine = freezed,
    Object? onlyFollowing = freezed,
    Object? onlySpecial = freezed,
    Object? onlyPrivate = freezed,
    Object? atLeastLikeCount = freezed,
    Object? atLeastCommentCount = freezed,
    Object? newFirst = freezed,
  }) {
    return _then(_value.copyWith(
      authoruuid: freezed == authoruuid
          ? _value.authoruuid
          : authoruuid // ignore: cast_nullable_to_non_nullable
              as String?,
      onlySaved: freezed == onlySaved
          ? _value.onlySaved
          : onlySaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyLiked: freezed == onlyLiked
          ? _value.onlyLiked
          : onlyLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyMine: freezed == onlyMine
          ? _value.onlyMine
          : onlyMine // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyFollowing: freezed == onlyFollowing
          ? _value.onlyFollowing
          : onlyFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlySpecial: freezed == onlySpecial
          ? _value.onlySpecial
          : onlySpecial // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyPrivate: freezed == onlyPrivate
          ? _value.onlyPrivate
          : onlyPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      atLeastLikeCount: freezed == atLeastLikeCount
          ? _value.atLeastLikeCount
          : atLeastLikeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      atLeastCommentCount: freezed == atLeastCommentCount
          ? _value.atLeastCommentCount
          : atLeastCommentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      newFirst: freezed == newFirst
          ? _value.newFirst
          : newFirst // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostFilterDtoCopyWith<$Res>
    implements $PostFilterDtoCopyWith<$Res> {
  factory _$$_PostFilterDtoCopyWith(
          _$_PostFilterDto value, $Res Function(_$_PostFilterDto) then) =
      __$$_PostFilterDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? authoruuid,
      bool? onlySaved,
      bool? onlyLiked,
      bool? onlyMine,
      bool? onlyFollowing,
      bool? onlySpecial,
      bool? onlyPrivate,
      int? atLeastLikeCount,
      int? atLeastCommentCount,
      bool? newFirst});
}

/// @nodoc
class __$$_PostFilterDtoCopyWithImpl<$Res>
    extends _$PostFilterDtoCopyWithImpl<$Res, _$_PostFilterDto>
    implements _$$_PostFilterDtoCopyWith<$Res> {
  __$$_PostFilterDtoCopyWithImpl(
      _$_PostFilterDto _value, $Res Function(_$_PostFilterDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authoruuid = freezed,
    Object? onlySaved = freezed,
    Object? onlyLiked = freezed,
    Object? onlyMine = freezed,
    Object? onlyFollowing = freezed,
    Object? onlySpecial = freezed,
    Object? onlyPrivate = freezed,
    Object? atLeastLikeCount = freezed,
    Object? atLeastCommentCount = freezed,
    Object? newFirst = freezed,
  }) {
    return _then(_$_PostFilterDto(
      authoruuid: freezed == authoruuid
          ? _value.authoruuid
          : authoruuid // ignore: cast_nullable_to_non_nullable
              as String?,
      onlySaved: freezed == onlySaved
          ? _value.onlySaved
          : onlySaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyLiked: freezed == onlyLiked
          ? _value.onlyLiked
          : onlyLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyMine: freezed == onlyMine
          ? _value.onlyMine
          : onlyMine // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyFollowing: freezed == onlyFollowing
          ? _value.onlyFollowing
          : onlyFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlySpecial: freezed == onlySpecial
          ? _value.onlySpecial
          : onlySpecial // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyPrivate: freezed == onlyPrivate
          ? _value.onlyPrivate
          : onlyPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      atLeastLikeCount: freezed == atLeastLikeCount
          ? _value.atLeastLikeCount
          : atLeastLikeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      atLeastCommentCount: freezed == atLeastCommentCount
          ? _value.atLeastCommentCount
          : atLeastCommentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      newFirst: freezed == newFirst
          ? _value.newFirst
          : newFirst // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostFilterDto implements _PostFilterDto {
  _$_PostFilterDto(
      {required this.authoruuid,
      required this.onlySaved,
      required this.onlyLiked,
      required this.onlyMine,
      required this.onlyFollowing,
      required this.onlySpecial,
      required this.onlyPrivate,
      required this.atLeastLikeCount,
      required this.atLeastCommentCount,
      required this.newFirst});

  factory _$_PostFilterDto.fromJson(Map<String, dynamic> json) =>
      _$$_PostFilterDtoFromJson(json);

  @override
  final String? authoruuid;
  @override
  final bool? onlySaved;
  @override
  final bool? onlyLiked;
  @override
  final bool? onlyMine;
  @override
  final bool? onlyFollowing;
  @override
  final bool? onlySpecial;
  @override
  final bool? onlyPrivate;
  @override
  final int? atLeastLikeCount;
  @override
  final int? atLeastCommentCount;
  @override
  final bool? newFirst;

  @override
  String toString() {
    return 'PostFilterDto(authoruuid: $authoruuid, onlySaved: $onlySaved, onlyLiked: $onlyLiked, onlyMine: $onlyMine, onlyFollowing: $onlyFollowing, onlySpecial: $onlySpecial, onlyPrivate: $onlyPrivate, atLeastLikeCount: $atLeastLikeCount, atLeastCommentCount: $atLeastCommentCount, newFirst: $newFirst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostFilterDto &&
            (identical(other.authoruuid, authoruuid) ||
                other.authoruuid == authoruuid) &&
            (identical(other.onlySaved, onlySaved) ||
                other.onlySaved == onlySaved) &&
            (identical(other.onlyLiked, onlyLiked) ||
                other.onlyLiked == onlyLiked) &&
            (identical(other.onlyMine, onlyMine) ||
                other.onlyMine == onlyMine) &&
            (identical(other.onlyFollowing, onlyFollowing) ||
                other.onlyFollowing == onlyFollowing) &&
            (identical(other.onlySpecial, onlySpecial) ||
                other.onlySpecial == onlySpecial) &&
            (identical(other.onlyPrivate, onlyPrivate) ||
                other.onlyPrivate == onlyPrivate) &&
            (identical(other.atLeastLikeCount, atLeastLikeCount) ||
                other.atLeastLikeCount == atLeastLikeCount) &&
            (identical(other.atLeastCommentCount, atLeastCommentCount) ||
                other.atLeastCommentCount == atLeastCommentCount) &&
            (identical(other.newFirst, newFirst) ||
                other.newFirst == newFirst));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      authoruuid,
      onlySaved,
      onlyLiked,
      onlyMine,
      onlyFollowing,
      onlySpecial,
      onlyPrivate,
      atLeastLikeCount,
      atLeastCommentCount,
      newFirst);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostFilterDtoCopyWith<_$_PostFilterDto> get copyWith =>
      __$$_PostFilterDtoCopyWithImpl<_$_PostFilterDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostFilterDtoToJson(
      this,
    );
  }
}

abstract class _PostFilterDto implements PostFilterDto {
  factory _PostFilterDto(
      {required final String? authoruuid,
      required final bool? onlySaved,
      required final bool? onlyLiked,
      required final bool? onlyMine,
      required final bool? onlyFollowing,
      required final bool? onlySpecial,
      required final bool? onlyPrivate,
      required final int? atLeastLikeCount,
      required final int? atLeastCommentCount,
      required final bool? newFirst}) = _$_PostFilterDto;

  factory _PostFilterDto.fromJson(Map<String, dynamic> json) =
      _$_PostFilterDto.fromJson;

  @override
  String? get authoruuid;
  @override
  bool? get onlySaved;
  @override
  bool? get onlyLiked;
  @override
  bool? get onlyMine;
  @override
  bool? get onlyFollowing;
  @override
  bool? get onlySpecial;
  @override
  bool? get onlyPrivate;
  @override
  int? get atLeastLikeCount;
  @override
  int? get atLeastCommentCount;
  @override
  bool? get newFirst;
  @override
  @JsonKey(ignore: true)
  _$$_PostFilterDtoCopyWith<_$_PostFilterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PostFormDto _$PostFormDtoFromJson(Map<String, dynamic> json) {
  return _PostFormDto.fromJson(json);
}

/// @nodoc
mixin _$PostFormDto {
  String get postBody => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  PostVisibilityType get postVisibilityType =>
      throw _privateConstructorUsedError;
  bool get commentEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostFormDtoCopyWith<PostFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormDtoCopyWith<$Res> {
  factory $PostFormDtoCopyWith(
          PostFormDto value, $Res Function(PostFormDto) then) =
      _$PostFormDtoCopyWithImpl<$Res, PostFormDto>;
  @useResult
  $Res call(
      {String postBody,
      List<String> tags,
      PostVisibilityType postVisibilityType,
      bool commentEnabled});
}

/// @nodoc
class _$PostFormDtoCopyWithImpl<$Res, $Val extends PostFormDto>
    implements $PostFormDtoCopyWith<$Res> {
  _$PostFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postBody = null,
    Object? tags = null,
    Object? postVisibilityType = null,
    Object? commentEnabled = null,
  }) {
    return _then(_value.copyWith(
      postBody: null == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postVisibilityType: null == postVisibilityType
          ? _value.postVisibilityType
          : postVisibilityType // ignore: cast_nullable_to_non_nullable
              as PostVisibilityType,
      commentEnabled: null == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostFormDtoCopyWith<$Res>
    implements $PostFormDtoCopyWith<$Res> {
  factory _$$_PostFormDtoCopyWith(
          _$_PostFormDto value, $Res Function(_$_PostFormDto) then) =
      __$$_PostFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String postBody,
      List<String> tags,
      PostVisibilityType postVisibilityType,
      bool commentEnabled});
}

/// @nodoc
class __$$_PostFormDtoCopyWithImpl<$Res>
    extends _$PostFormDtoCopyWithImpl<$Res, _$_PostFormDto>
    implements _$$_PostFormDtoCopyWith<$Res> {
  __$$_PostFormDtoCopyWithImpl(
      _$_PostFormDto _value, $Res Function(_$_PostFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postBody = null,
    Object? tags = null,
    Object? postVisibilityType = null,
    Object? commentEnabled = null,
  }) {
    return _then(_$_PostFormDto(
      postBody: null == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postVisibilityType: null == postVisibilityType
          ? _value.postVisibilityType
          : postVisibilityType // ignore: cast_nullable_to_non_nullable
              as PostVisibilityType,
      commentEnabled: null == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostFormDto implements _PostFormDto {
  const _$_PostFormDto(
      {required this.postBody,
      required final List<String> tags,
      required this.postVisibilityType,
      required this.commentEnabled})
      : _tags = tags;

  factory _$_PostFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_PostFormDtoFromJson(json);

  @override
  final String postBody;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final PostVisibilityType postVisibilityType;
  @override
  final bool commentEnabled;

  @override
  String toString() {
    return 'PostFormDto(postBody: $postBody, tags: $tags, postVisibilityType: $postVisibilityType, commentEnabled: $commentEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostFormDto &&
            (identical(other.postBody, postBody) ||
                other.postBody == postBody) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.postVisibilityType, postVisibilityType) ||
                other.postVisibilityType == postVisibilityType) &&
            (identical(other.commentEnabled, commentEnabled) ||
                other.commentEnabled == commentEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postBody,
      const DeepCollectionEquality().hash(_tags),
      postVisibilityType,
      commentEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostFormDtoCopyWith<_$_PostFormDto> get copyWith =>
      __$$_PostFormDtoCopyWithImpl<_$_PostFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostFormDtoToJson(
      this,
    );
  }
}

abstract class _PostFormDto implements PostFormDto {
  const factory _PostFormDto(
      {required final String postBody,
      required final List<String> tags,
      required final PostVisibilityType postVisibilityType,
      required final bool commentEnabled}) = _$_PostFormDto;

  factory _PostFormDto.fromJson(Map<String, dynamic> json) =
      _$_PostFormDto.fromJson;

  @override
  String get postBody;
  @override
  List<String> get tags;
  @override
  PostVisibilityType get postVisibilityType;
  @override
  bool get commentEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_PostFormDtoCopyWith<_$_PostFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendingTagDto _$TrendingTagDtoFromJson(Map<String, dynamic> json) {
  return _TrendingTagDto.fromJson(json);
}

/// @nodoc
mixin _$TrendingTagDto {
  String get tag => throw _privateConstructorUsedError;
  int get postCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingTagDtoCopyWith<TrendingTagDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingTagDtoCopyWith<$Res> {
  factory $TrendingTagDtoCopyWith(
          TrendingTagDto value, $Res Function(TrendingTagDto) then) =
      _$TrendingTagDtoCopyWithImpl<$Res, TrendingTagDto>;
  @useResult
  $Res call({String tag, int postCount, int likeCount});
}

/// @nodoc
class _$TrendingTagDtoCopyWithImpl<$Res, $Val extends TrendingTagDto>
    implements $TrendingTagDtoCopyWith<$Res> {
  _$TrendingTagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? postCount = null,
    Object? likeCount = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrendingTagDtoCopyWith<$Res>
    implements $TrendingTagDtoCopyWith<$Res> {
  factory _$$_TrendingTagDtoCopyWith(
          _$_TrendingTagDto value, $Res Function(_$_TrendingTagDto) then) =
      __$$_TrendingTagDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tag, int postCount, int likeCount});
}

/// @nodoc
class __$$_TrendingTagDtoCopyWithImpl<$Res>
    extends _$TrendingTagDtoCopyWithImpl<$Res, _$_TrendingTagDto>
    implements _$$_TrendingTagDtoCopyWith<$Res> {
  __$$_TrendingTagDtoCopyWithImpl(
      _$_TrendingTagDto _value, $Res Function(_$_TrendingTagDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? postCount = null,
    Object? likeCount = null,
  }) {
    return _then(_$_TrendingTagDto(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrendingTagDto implements _TrendingTagDto {
  const _$_TrendingTagDto(
      {required this.tag, required this.postCount, required this.likeCount});

  factory _$_TrendingTagDto.fromJson(Map<String, dynamic> json) =>
      _$$_TrendingTagDtoFromJson(json);

  @override
  final String tag;
  @override
  final int postCount;
  @override
  final int likeCount;

  @override
  String toString() {
    return 'TrendingTagDto(tag: $tag, postCount: $postCount, likeCount: $likeCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingTagDto &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tag, postCount, likeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrendingTagDtoCopyWith<_$_TrendingTagDto> get copyWith =>
      __$$_TrendingTagDtoCopyWithImpl<_$_TrendingTagDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrendingTagDtoToJson(
      this,
    );
  }
}

abstract class _TrendingTagDto implements TrendingTagDto {
  const factory _TrendingTagDto(
      {required final String tag,
      required final int postCount,
      required final int likeCount}) = _$_TrendingTagDto;

  factory _TrendingTagDto.fromJson(Map<String, dynamic> json) =
      _$_TrendingTagDto.fromJson;

  @override
  String get tag;
  @override
  int get postCount;
  @override
  int get likeCount;
  @override
  @JsonKey(ignore: true)
  _$$_TrendingTagDtoCopyWith<_$_TrendingTagDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CPostFilterDto {
  String? get postBody => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  int? get likeCount => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  bool? get commentEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CPostFilterDtoCopyWith<CPostFilterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPostFilterDtoCopyWith<$Res> {
  factory $CPostFilterDtoCopyWith(
          CPostFilterDto value, $Res Function(CPostFilterDto) then) =
      _$CPostFilterDtoCopyWithImpl<$Res, CPostFilterDto>;
  @useResult
  $Res call(
      {String? postBody,
      List<String>? tags,
      int? likeCount,
      int? commentCount,
      bool? commentEnabled});
}

/// @nodoc
class _$CPostFilterDtoCopyWithImpl<$Res, $Val extends CPostFilterDto>
    implements $CPostFilterDtoCopyWith<$Res> {
  _$CPostFilterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postBody = freezed,
    Object? tags = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? commentEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      postBody: freezed == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentEnabled: freezed == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CPostFilterDtoCopyWith<$Res>
    implements $CPostFilterDtoCopyWith<$Res> {
  factory _$$_CPostFilterDtoCopyWith(
          _$_CPostFilterDto value, $Res Function(_$_CPostFilterDto) then) =
      __$$_CPostFilterDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? postBody,
      List<String>? tags,
      int? likeCount,
      int? commentCount,
      bool? commentEnabled});
}

/// @nodoc
class __$$_CPostFilterDtoCopyWithImpl<$Res>
    extends _$CPostFilterDtoCopyWithImpl<$Res, _$_CPostFilterDto>
    implements _$$_CPostFilterDtoCopyWith<$Res> {
  __$$_CPostFilterDtoCopyWithImpl(
      _$_CPostFilterDto _value, $Res Function(_$_CPostFilterDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postBody = freezed,
    Object? tags = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? commentEnabled = freezed,
  }) {
    return _then(_$_CPostFilterDto(
      postBody: freezed == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentEnabled: freezed == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_CPostFilterDto implements _CPostFilterDto {
  const _$_CPostFilterDto(
      {this.postBody,
      final List<String>? tags,
      this.likeCount,
      this.commentCount,
      this.commentEnabled})
      : _tags = tags;

  @override
  final String? postBody;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? likeCount;
  @override
  final int? commentCount;
  @override
  final bool? commentEnabled;

  @override
  String toString() {
    return 'CPostFilterDto(postBody: $postBody, tags: $tags, likeCount: $likeCount, commentCount: $commentCount, commentEnabled: $commentEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CPostFilterDto &&
            (identical(other.postBody, postBody) ||
                other.postBody == postBody) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.commentEnabled, commentEnabled) ||
                other.commentEnabled == commentEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      postBody,
      const DeepCollectionEquality().hash(_tags),
      likeCount,
      commentCount,
      commentEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CPostFilterDtoCopyWith<_$_CPostFilterDto> get copyWith =>
      __$$_CPostFilterDtoCopyWithImpl<_$_CPostFilterDto>(this, _$identity);
}

abstract class _CPostFilterDto implements CPostFilterDto {
  const factory _CPostFilterDto(
      {final String? postBody,
      final List<String>? tags,
      final int? likeCount,
      final int? commentCount,
      final bool? commentEnabled}) = _$_CPostFilterDto;

  @override
  String? get postBody;
  @override
  List<String>? get tags;
  @override
  int? get likeCount;
  @override
  int? get commentCount;
  @override
  bool? get commentEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_CPostFilterDtoCopyWith<_$_CPostFilterDto> get copyWith =>
      throw _privateConstructorUsedError;
}
