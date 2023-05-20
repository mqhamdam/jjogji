// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Post {
  UUID get uuid => throw _privateConstructorUsedError;
  UUID get authoruuid => throw _privateConstructorUsedError;
  PostBody get postBody => throw _privateConstructorUsedError;
  User get authorData => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  PostVisibilityType get postVisibilityType =>
      throw _privateConstructorUsedError;
  bool get commentEnabled => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {UUID uuid,
      UUID authoruuid,
      PostBody postBody,
      User authorData,
      List<Tag> tags,
      PostVisibilityType postVisibilityType,
      bool commentEnabled,
      int likeCount,
      int commentCount});

  $UserCopyWith<$Res> get authorData;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

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
    Object? authorData = null,
    Object? tags = null,
    Object? postVisibilityType = null,
    Object? commentEnabled = null,
    Object? likeCount = null,
    Object? commentCount = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      authoruuid: null == authoruuid
          ? _value.authoruuid
          : authoruuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      postBody: null == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as PostBody,
      authorData: null == authorData
          ? _value.authorData
          : authorData // ignore: cast_nullable_to_non_nullable
              as User,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      postVisibilityType: null == postVisibilityType
          ? _value.postVisibilityType
          : postVisibilityType // ignore: cast_nullable_to_non_nullable
              as PostVisibilityType,
      commentEnabled: null == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get authorData {
    return $UserCopyWith<$Res>(_value.authorData, (value) {
      return _then(_value.copyWith(authorData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UUID uuid,
      UUID authoruuid,
      PostBody postBody,
      User authorData,
      List<Tag> tags,
      PostVisibilityType postVisibilityType,
      bool commentEnabled,
      int likeCount,
      int commentCount});

  @override
  $UserCopyWith<$Res> get authorData;
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? authoruuid = null,
    Object? postBody = null,
    Object? authorData = null,
    Object? tags = null,
    Object? postVisibilityType = null,
    Object? commentEnabled = null,
    Object? likeCount = null,
    Object? commentCount = null,
  }) {
    return _then(_$_Post(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      authoruuid: null == authoruuid
          ? _value.authoruuid
          : authoruuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      postBody: null == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as PostBody,
      authorData: null == authorData
          ? _value.authorData
          : authorData // ignore: cast_nullable_to_non_nullable
              as User,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      postVisibilityType: null == postVisibilityType
          ? _value.postVisibilityType
          : postVisibilityType // ignore: cast_nullable_to_non_nullable
              as PostVisibilityType,
      commentEnabled: null == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Post implements _Post {
  const _$_Post(
      {required this.uuid,
      required this.authoruuid,
      required this.postBody,
      required this.authorData,
      required final List<Tag> tags,
      required this.postVisibilityType,
      required this.commentEnabled,
      required this.likeCount,
      required this.commentCount})
      : _tags = tags;

  @override
  final UUID uuid;
  @override
  final UUID authoruuid;
  @override
  final PostBody postBody;
  @override
  final User authorData;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final PostVisibilityType postVisibilityType;
  @override
  final bool commentEnabled;
  @override
  final int likeCount;
  @override
  final int commentCount;

  @override
  String toString() {
    return 'Post(uuid: $uuid, authoruuid: $authoruuid, postBody: $postBody, authorData: $authorData, tags: $tags, postVisibilityType: $postVisibilityType, commentEnabled: $commentEnabled, likeCount: $likeCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.authoruuid, authoruuid) ||
                other.authoruuid == authoruuid) &&
            (identical(other.postBody, postBody) ||
                other.postBody == postBody) &&
            (identical(other.authorData, authorData) ||
                other.authorData == authorData) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.postVisibilityType, postVisibilityType) ||
                other.postVisibilityType == postVisibilityType) &&
            (identical(other.commentEnabled, commentEnabled) ||
                other.commentEnabled == commentEnabled) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      authoruuid,
      postBody,
      authorData,
      const DeepCollectionEquality().hash(_tags),
      postVisibilityType,
      commentEnabled,
      likeCount,
      commentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);
}

abstract class _Post implements Post {
  const factory _Post(
      {required final UUID uuid,
      required final UUID authoruuid,
      required final PostBody postBody,
      required final User authorData,
      required final List<Tag> tags,
      required final PostVisibilityType postVisibilityType,
      required final bool commentEnabled,
      required final int likeCount,
      required final int commentCount}) = _$_Post;

  @override
  UUID get uuid;
  @override
  UUID get authoruuid;
  @override
  PostBody get postBody;
  @override
  User get authorData;
  @override
  List<Tag> get tags;
  @override
  PostVisibilityType get postVisibilityType;
  @override
  bool get commentEnabled;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostRelation {
  bool get like => throw _privateConstructorUsedError;
  bool get save => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostRelationCopyWith<PostRelation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRelationCopyWith<$Res> {
  factory $PostRelationCopyWith(
          PostRelation value, $Res Function(PostRelation) then) =
      _$PostRelationCopyWithImpl<$Res, PostRelation>;
  @useResult
  $Res call({bool like, bool save});
}

/// @nodoc
class _$PostRelationCopyWithImpl<$Res, $Val extends PostRelation>
    implements $PostRelationCopyWith<$Res> {
  _$PostRelationCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostRelationCopyWith<$Res>
    implements $PostRelationCopyWith<$Res> {
  factory _$$_PostRelationCopyWith(
          _$_PostRelation value, $Res Function(_$_PostRelation) then) =
      __$$_PostRelationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool like, bool save});
}

/// @nodoc
class __$$_PostRelationCopyWithImpl<$Res>
    extends _$PostRelationCopyWithImpl<$Res, _$_PostRelation>
    implements _$$_PostRelationCopyWith<$Res> {
  __$$_PostRelationCopyWithImpl(
      _$_PostRelation _value, $Res Function(_$_PostRelation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? save = null,
  }) {
    return _then(_$_PostRelation(
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

class _$_PostRelation implements _PostRelation {
  const _$_PostRelation({required this.like, required this.save});

  @override
  final bool like;
  @override
  final bool save;

  @override
  String toString() {
    return 'PostRelation(like: $like, save: $save)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostRelation &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.save, save) || other.save == save));
  }

  @override
  int get hashCode => Object.hash(runtimeType, like, save);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostRelationCopyWith<_$_PostRelation> get copyWith =>
      __$$_PostRelationCopyWithImpl<_$_PostRelation>(this, _$identity);
}

abstract class _PostRelation implements PostRelation {
  const factory _PostRelation(
      {required final bool like, required final bool save}) = _$_PostRelation;

  @override
  bool get like;
  @override
  bool get save;
  @override
  @JsonKey(ignore: true)
  _$$_PostRelationCopyWith<_$_PostRelation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostFilter {
  UUID? get authoruuid => throw _privateConstructorUsedError;
  bool? get onlySaved => throw _privateConstructorUsedError;
  bool? get onlyLiked => throw _privateConstructorUsedError;
  bool? get onlyMine => throw _privateConstructorUsedError;
  bool? get onlyFollowing => throw _privateConstructorUsedError;
  bool? get onlySpecial => throw _privateConstructorUsedError;
  bool? get onlyPrivate => throw _privateConstructorUsedError;
  int? get atLeastLikeCount => throw _privateConstructorUsedError;
  int? get atLeastCommentCount => throw _privateConstructorUsedError;
  bool? get newFirst => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostFilterCopyWith<PostFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFilterCopyWith<$Res> {
  factory $PostFilterCopyWith(
          PostFilter value, $Res Function(PostFilter) then) =
      _$PostFilterCopyWithImpl<$Res, PostFilter>;
  @useResult
  $Res call(
      {UUID? authoruuid,
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
class _$PostFilterCopyWithImpl<$Res, $Val extends PostFilter>
    implements $PostFilterCopyWith<$Res> {
  _$PostFilterCopyWithImpl(this._value, this._then);

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
              as UUID?,
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
abstract class _$$_PostFilterCopyWith<$Res>
    implements $PostFilterCopyWith<$Res> {
  factory _$$_PostFilterCopyWith(
          _$_PostFilter value, $Res Function(_$_PostFilter) then) =
      __$$_PostFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UUID? authoruuid,
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
class __$$_PostFilterCopyWithImpl<$Res>
    extends _$PostFilterCopyWithImpl<$Res, _$_PostFilter>
    implements _$$_PostFilterCopyWith<$Res> {
  __$$_PostFilterCopyWithImpl(
      _$_PostFilter _value, $Res Function(_$_PostFilter) _then)
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
    return _then(_$_PostFilter(
      authoruuid: freezed == authoruuid
          ? _value.authoruuid
          : authoruuid // ignore: cast_nullable_to_non_nullable
              as UUID?,
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

class _$_PostFilter implements _PostFilter {
  const _$_PostFilter(
      {this.authoruuid,
      this.onlySaved,
      this.onlyLiked,
      this.onlyMine,
      this.onlyFollowing,
      this.onlySpecial,
      this.onlyPrivate,
      this.atLeastLikeCount,
      this.atLeastCommentCount,
      this.newFirst});

  @override
  final UUID? authoruuid;
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
    return 'PostFilter(authoruuid: $authoruuid, onlySaved: $onlySaved, onlyLiked: $onlyLiked, onlyMine: $onlyMine, onlyFollowing: $onlyFollowing, onlySpecial: $onlySpecial, onlyPrivate: $onlyPrivate, atLeastLikeCount: $atLeastLikeCount, atLeastCommentCount: $atLeastCommentCount, newFirst: $newFirst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostFilter &&
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
  _$$_PostFilterCopyWith<_$_PostFilter> get copyWith =>
      __$$_PostFilterCopyWithImpl<_$_PostFilter>(this, _$identity);
}

abstract class _PostFilter implements PostFilter {
  const factory _PostFilter(
      {final UUID? authoruuid,
      final bool? onlySaved,
      final bool? onlyLiked,
      final bool? onlyMine,
      final bool? onlyFollowing,
      final bool? onlySpecial,
      final bool? onlyPrivate,
      final int? atLeastLikeCount,
      final int? atLeastCommentCount,
      final bool? newFirst}) = _$_PostFilter;

  @override
  UUID? get authoruuid;
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
  _$$_PostFilterCopyWith<_$_PostFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostForm {
  PostBody get postBody => throw _privateConstructorUsedError;
  PostVisibilityType get postVisibilityType =>
      throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  bool get commentEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostFormCopyWith<PostForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormCopyWith<$Res> {
  factory $PostFormCopyWith(PostForm value, $Res Function(PostForm) then) =
      _$PostFormCopyWithImpl<$Res, PostForm>;
  @useResult
  $Res call(
      {PostBody postBody,
      PostVisibilityType postVisibilityType,
      List<Tag> tags,
      bool commentEnabled});
}

/// @nodoc
class _$PostFormCopyWithImpl<$Res, $Val extends PostForm>
    implements $PostFormCopyWith<$Res> {
  _$PostFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postBody = null,
    Object? postVisibilityType = null,
    Object? tags = null,
    Object? commentEnabled = null,
  }) {
    return _then(_value.copyWith(
      postBody: null == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as PostBody,
      postVisibilityType: null == postVisibilityType
          ? _value.postVisibilityType
          : postVisibilityType // ignore: cast_nullable_to_non_nullable
              as PostVisibilityType,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      commentEnabled: null == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostFormCopyWith<$Res> implements $PostFormCopyWith<$Res> {
  factory _$$_PostFormCopyWith(
          _$_PostForm value, $Res Function(_$_PostForm) then) =
      __$$_PostFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostBody postBody,
      PostVisibilityType postVisibilityType,
      List<Tag> tags,
      bool commentEnabled});
}

/// @nodoc
class __$$_PostFormCopyWithImpl<$Res>
    extends _$PostFormCopyWithImpl<$Res, _$_PostForm>
    implements _$$_PostFormCopyWith<$Res> {
  __$$_PostFormCopyWithImpl(
      _$_PostForm _value, $Res Function(_$_PostForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postBody = null,
    Object? postVisibilityType = null,
    Object? tags = null,
    Object? commentEnabled = null,
  }) {
    return _then(_$_PostForm(
      postBody: null == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as PostBody,
      postVisibilityType: null == postVisibilityType
          ? _value.postVisibilityType
          : postVisibilityType // ignore: cast_nullable_to_non_nullable
              as PostVisibilityType,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      commentEnabled: null == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PostForm implements _PostForm {
  const _$_PostForm(
      {required this.postBody,
      required this.postVisibilityType,
      required final List<Tag> tags,
      required this.commentEnabled})
      : _tags = tags;

  @override
  final PostBody postBody;
  @override
  final PostVisibilityType postVisibilityType;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final bool commentEnabled;

  @override
  String toString() {
    return 'PostForm(postBody: $postBody, postVisibilityType: $postVisibilityType, tags: $tags, commentEnabled: $commentEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostForm &&
            (identical(other.postBody, postBody) ||
                other.postBody == postBody) &&
            (identical(other.postVisibilityType, postVisibilityType) ||
                other.postVisibilityType == postVisibilityType) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.commentEnabled, commentEnabled) ||
                other.commentEnabled == commentEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postBody, postVisibilityType,
      const DeepCollectionEquality().hash(_tags), commentEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostFormCopyWith<_$_PostForm> get copyWith =>
      __$$_PostFormCopyWithImpl<_$_PostForm>(this, _$identity);
}

abstract class _PostForm implements PostForm {
  const factory _PostForm(
      {required final PostBody postBody,
      required final PostVisibilityType postVisibilityType,
      required final List<Tag> tags,
      required final bool commentEnabled}) = _$_PostForm;

  @override
  PostBody get postBody;
  @override
  PostVisibilityType get postVisibilityType;
  @override
  List<Tag> get tags;
  @override
  bool get commentEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_PostFormCopyWith<_$_PostForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrendingTag {
  Tag get tag => throw _privateConstructorUsedError;
  int get postCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrendingTagCopyWith<TrendingTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingTagCopyWith<$Res> {
  factory $TrendingTagCopyWith(
          TrendingTag value, $Res Function(TrendingTag) then) =
      _$TrendingTagCopyWithImpl<$Res, TrendingTag>;
  @useResult
  $Res call({Tag tag, int postCount, int likeCount});
}

/// @nodoc
class _$TrendingTagCopyWithImpl<$Res, $Val extends TrendingTag>
    implements $TrendingTagCopyWith<$Res> {
  _$TrendingTagCopyWithImpl(this._value, this._then);

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
              as Tag,
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
abstract class _$$_TrendingTagsCopyWith<$Res>
    implements $TrendingTagCopyWith<$Res> {
  factory _$$_TrendingTagsCopyWith(
          _$_TrendingTags value, $Res Function(_$_TrendingTags) then) =
      __$$_TrendingTagsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tag tag, int postCount, int likeCount});
}

/// @nodoc
class __$$_TrendingTagsCopyWithImpl<$Res>
    extends _$TrendingTagCopyWithImpl<$Res, _$_TrendingTags>
    implements _$$_TrendingTagsCopyWith<$Res> {
  __$$_TrendingTagsCopyWithImpl(
      _$_TrendingTags _value, $Res Function(_$_TrendingTags) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? postCount = null,
    Object? likeCount = null,
  }) {
    return _then(_$_TrendingTags(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
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

class _$_TrendingTags implements _TrendingTags {
  const _$_TrendingTags(
      {required this.tag, required this.postCount, required this.likeCount});

  @override
  final Tag tag;
  @override
  final int postCount;
  @override
  final int likeCount;

  @override
  String toString() {
    return 'TrendingTag(tag: $tag, postCount: $postCount, likeCount: $likeCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingTags &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, postCount, likeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrendingTagsCopyWith<_$_TrendingTags> get copyWith =>
      __$$_TrendingTagsCopyWithImpl<_$_TrendingTags>(this, _$identity);
}

abstract class _TrendingTags implements TrendingTag {
  const factory _TrendingTags(
      {required final Tag tag,
      required final int postCount,
      required final int likeCount}) = _$_TrendingTags;

  @override
  Tag get tag;
  @override
  int get postCount;
  @override
  int get likeCount;
  @override
  @JsonKey(ignore: true)
  _$$_TrendingTagsCopyWith<_$_TrendingTags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CPostFilter {
  PostBody? get postBody => throw _privateConstructorUsedError;
  List<Tag>? get tags => throw _privateConstructorUsedError;
  bool? get commentEnabled => throw _privateConstructorUsedError;
  int? get likeCount => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CPostFilterCopyWith<CPostFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPostFilterCopyWith<$Res> {
  factory $CPostFilterCopyWith(
          CPostFilter value, $Res Function(CPostFilter) then) =
      _$CPostFilterCopyWithImpl<$Res, CPostFilter>;
  @useResult
  $Res call(
      {PostBody? postBody,
      List<Tag>? tags,
      bool? commentEnabled,
      int? likeCount,
      int? commentCount});
}

/// @nodoc
class _$CPostFilterCopyWithImpl<$Res, $Val extends CPostFilter>
    implements $CPostFilterCopyWith<$Res> {
  _$CPostFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postBody = freezed,
    Object? tags = freezed,
    Object? commentEnabled = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_value.copyWith(
      postBody: freezed == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as PostBody?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      commentEnabled: freezed == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CPostFilterCopyWith<$Res>
    implements $CPostFilterCopyWith<$Res> {
  factory _$$_CPostFilterCopyWith(
          _$_CPostFilter value, $Res Function(_$_CPostFilter) then) =
      __$$_CPostFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostBody? postBody,
      List<Tag>? tags,
      bool? commentEnabled,
      int? likeCount,
      int? commentCount});
}

/// @nodoc
class __$$_CPostFilterCopyWithImpl<$Res>
    extends _$CPostFilterCopyWithImpl<$Res, _$_CPostFilter>
    implements _$$_CPostFilterCopyWith<$Res> {
  __$$_CPostFilterCopyWithImpl(
      _$_CPostFilter _value, $Res Function(_$_CPostFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postBody = freezed,
    Object? tags = freezed,
    Object? commentEnabled = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_$_CPostFilter(
      postBody: freezed == postBody
          ? _value.postBody
          : postBody // ignore: cast_nullable_to_non_nullable
              as PostBody?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      commentEnabled: freezed == commentEnabled
          ? _value.commentEnabled
          : commentEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_CPostFilter implements _CPostFilter {
  const _$_CPostFilter(
      {this.postBody,
      final List<Tag>? tags,
      this.commentEnabled,
      this.likeCount,
      this.commentCount})
      : _tags = tags;

  @override
  final PostBody? postBody;
  final List<Tag>? _tags;
  @override
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? commentEnabled;
  @override
  final int? likeCount;
  @override
  final int? commentCount;

  @override
  String toString() {
    return 'CPostFilter(postBody: $postBody, tags: $tags, commentEnabled: $commentEnabled, likeCount: $likeCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CPostFilter &&
            (identical(other.postBody, postBody) ||
                other.postBody == postBody) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.commentEnabled, commentEnabled) ||
                other.commentEnabled == commentEnabled) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      postBody,
      const DeepCollectionEquality().hash(_tags),
      commentEnabled,
      likeCount,
      commentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CPostFilterCopyWith<_$_CPostFilter> get copyWith =>
      __$$_CPostFilterCopyWithImpl<_$_CPostFilter>(this, _$identity);
}

abstract class _CPostFilter implements CPostFilter {
  const factory _CPostFilter(
      {final PostBody? postBody,
      final List<Tag>? tags,
      final bool? commentEnabled,
      final int? likeCount,
      final int? commentCount}) = _$_CPostFilter;

  @override
  PostBody? get postBody;
  @override
  List<Tag>? get tags;
  @override
  bool? get commentEnabled;
  @override
  int? get likeCount;
  @override
  int? get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$_CPostFilterCopyWith<_$_CPostFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
