// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: "userUUID")
  String get uuid => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get userID => throw _privateConstructorUsedError;
  VerificationStatus get verificationStatus =>
      throw _privateConstructorUsedError;
  int get postCount => throw _privateConstructorUsedError;
  int get reputation => throw _privateConstructorUsedError;
  int get followersCount => throw _privateConstructorUsedError;
  UserPrefsDto? get userPrefs => throw _privateConstructorUsedError;
  int get followingCount => throw _privateConstructorUsedError;
  ProfilePicDto get profilePic => throw _privateConstructorUsedError;
  List<LinkedContactDto> get linkedContacts =>
      throw _privateConstructorUsedError;
  String? get avatarImageUrl => throw _privateConstructorUsedError;
  String? get backgroundImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "userUUID") String uuid,
      String userName,
      String? userID,
      VerificationStatus verificationStatus,
      int postCount,
      int reputation,
      int followersCount,
      UserPrefsDto? userPrefs,
      int followingCount,
      ProfilePicDto profilePic,
      List<LinkedContactDto> linkedContacts,
      String? avatarImageUrl,
      String? backgroundImageUrl});

  $UserPrefsDtoCopyWith<$Res>? get userPrefs;
  $ProfilePicDtoCopyWith<$Res> get profilePic;
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? userName = null,
    Object? userID = freezed,
    Object? verificationStatus = null,
    Object? postCount = null,
    Object? reputation = null,
    Object? followersCount = null,
    Object? userPrefs = freezed,
    Object? followingCount = null,
    Object? profilePic = null,
    Object? linkedContacts = null,
    Object? avatarImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as VerificationStatus,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      userPrefs: freezed == userPrefs
          ? _value.userPrefs
          : userPrefs // ignore: cast_nullable_to_non_nullable
              as UserPrefsDto?,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as ProfilePicDto,
      linkedContacts: null == linkedContacts
          ? _value.linkedContacts
          : linkedContacts // ignore: cast_nullable_to_non_nullable
              as List<LinkedContactDto>,
      avatarImageUrl: freezed == avatarImageUrl
          ? _value.avatarImageUrl
          : avatarImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserPrefsDtoCopyWith<$Res>? get userPrefs {
    if (_value.userPrefs == null) {
      return null;
    }

    return $UserPrefsDtoCopyWith<$Res>(_value.userPrefs!, (value) {
      return _then(_value.copyWith(userPrefs: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfilePicDtoCopyWith<$Res> get profilePic {
    return $ProfilePicDtoCopyWith<$Res>(_value.profilePic, (value) {
      return _then(_value.copyWith(profilePic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userUUID") String uuid,
      String userName,
      String? userID,
      VerificationStatus verificationStatus,
      int postCount,
      int reputation,
      int followersCount,
      UserPrefsDto? userPrefs,
      int followingCount,
      ProfilePicDto profilePic,
      List<LinkedContactDto> linkedContacts,
      String? avatarImageUrl,
      String? backgroundImageUrl});

  @override
  $UserPrefsDtoCopyWith<$Res>? get userPrefs;
  @override
  $ProfilePicDtoCopyWith<$Res> get profilePic;
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$_UserDto>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? userName = null,
    Object? userID = freezed,
    Object? verificationStatus = null,
    Object? postCount = null,
    Object? reputation = null,
    Object? followersCount = null,
    Object? userPrefs = freezed,
    Object? followingCount = null,
    Object? profilePic = null,
    Object? linkedContacts = null,
    Object? avatarImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
  }) {
    return _then(_$_UserDto(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as VerificationStatus,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      userPrefs: freezed == userPrefs
          ? _value.userPrefs
          : userPrefs // ignore: cast_nullable_to_non_nullable
              as UserPrefsDto?,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as ProfilePicDto,
      linkedContacts: null == linkedContacts
          ? _value._linkedContacts
          : linkedContacts // ignore: cast_nullable_to_non_nullable
              as List<LinkedContactDto>,
      avatarImageUrl: freezed == avatarImageUrl
          ? _value.avatarImageUrl
          : avatarImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  _$_UserDto(
      {@JsonKey(name: "userUUID") required this.uuid,
      required this.userName,
      required this.userID,
      required this.verificationStatus,
      required this.postCount,
      required this.reputation,
      required this.followersCount,
      required this.userPrefs,
      required this.followingCount,
      required this.profilePic,
      required final List<LinkedContactDto> linkedContacts,
      required this.avatarImageUrl,
      required this.backgroundImageUrl})
      : _linkedContacts = linkedContacts,
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  @JsonKey(name: "userUUID")
  final String uuid;
  @override
  final String userName;
  @override
  final String? userID;
  @override
  final VerificationStatus verificationStatus;
  @override
  final int postCount;
  @override
  final int reputation;
  @override
  final int followersCount;
  @override
  final UserPrefsDto? userPrefs;
  @override
  final int followingCount;
  @override
  final ProfilePicDto profilePic;
  final List<LinkedContactDto> _linkedContacts;
  @override
  List<LinkedContactDto> get linkedContacts {
    if (_linkedContacts is EqualUnmodifiableListView) return _linkedContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_linkedContacts);
  }

  @override
  final String? avatarImageUrl;
  @override
  final String? backgroundImageUrl;

  @override
  String toString() {
    return 'UserDto(uuid: $uuid, userName: $userName, userID: $userID, verificationStatus: $verificationStatus, postCount: $postCount, reputation: $reputation, followersCount: $followersCount, userPrefs: $userPrefs, followingCount: $followingCount, profilePic: $profilePic, linkedContacts: $linkedContacts, avatarImageUrl: $avatarImageUrl, backgroundImageUrl: $backgroundImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount) &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.userPrefs, userPrefs) ||
                other.userPrefs == userPrefs) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            const DeepCollectionEquality()
                .equals(other._linkedContacts, _linkedContacts) &&
            (identical(other.avatarImageUrl, avatarImageUrl) ||
                other.avatarImageUrl == avatarImageUrl) &&
            (identical(other.backgroundImageUrl, backgroundImageUrl) ||
                other.backgroundImageUrl == backgroundImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      userName,
      userID,
      verificationStatus,
      postCount,
      reputation,
      followersCount,
      userPrefs,
      followingCount,
      profilePic,
      const DeepCollectionEquality().hash(_linkedContacts),
      avatarImageUrl,
      backgroundImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(
      this,
    );
  }
}

abstract class _UserDto extends UserDto {
  factory _UserDto(
      {@JsonKey(name: "userUUID") required final String uuid,
      required final String userName,
      required final String? userID,
      required final VerificationStatus verificationStatus,
      required final int postCount,
      required final int reputation,
      required final int followersCount,
      required final UserPrefsDto? userPrefs,
      required final int followingCount,
      required final ProfilePicDto profilePic,
      required final List<LinkedContactDto> linkedContacts,
      required final String? avatarImageUrl,
      required final String? backgroundImageUrl}) = _$_UserDto;
  _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(name: "userUUID")
  String get uuid;
  @override
  String get userName;
  @override
  String? get userID;
  @override
  VerificationStatus get verificationStatus;
  @override
  int get postCount;
  @override
  int get reputation;
  @override
  int get followersCount;
  @override
  UserPrefsDto? get userPrefs;
  @override
  int get followingCount;
  @override
  ProfilePicDto get profilePic;
  @override
  List<LinkedContactDto> get linkedContacts;
  @override
  String? get avatarImageUrl;
  @override
  String? get backgroundImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRelationDto _$UserRelationDtoFromJson(Map<String, dynamic> json) {
  return _UserRelation.fromJson(json);
}

/// @nodoc
mixin _$UserRelationDto {
  bool get follow => throw _privateConstructorUsedError;
  bool get follower => throw _privateConstructorUsedError;
  bool get block => throw _privateConstructorUsedError;
  bool get bestie => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRelationDtoCopyWith<UserRelationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRelationDtoCopyWith<$Res> {
  factory $UserRelationDtoCopyWith(
          UserRelationDto value, $Res Function(UserRelationDto) then) =
      _$UserRelationDtoCopyWithImpl<$Res, UserRelationDto>;
  @useResult
  $Res call({bool follow, bool follower, bool block, bool bestie});
}

/// @nodoc
class _$UserRelationDtoCopyWithImpl<$Res, $Val extends UserRelationDto>
    implements $UserRelationDtoCopyWith<$Res> {
  _$UserRelationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? follow = null,
    Object? follower = null,
    Object? block = null,
    Object? bestie = null,
  }) {
    return _then(_value.copyWith(
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      follower: null == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as bool,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as bool,
      bestie: null == bestie
          ? _value.bestie
          : bestie // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRelationCopyWith<$Res>
    implements $UserRelationDtoCopyWith<$Res> {
  factory _$$_UserRelationCopyWith(
          _$_UserRelation value, $Res Function(_$_UserRelation) then) =
      __$$_UserRelationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool follow, bool follower, bool block, bool bestie});
}

/// @nodoc
class __$$_UserRelationCopyWithImpl<$Res>
    extends _$UserRelationDtoCopyWithImpl<$Res, _$_UserRelation>
    implements _$$_UserRelationCopyWith<$Res> {
  __$$_UserRelationCopyWithImpl(
      _$_UserRelation _value, $Res Function(_$_UserRelation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? follow = null,
    Object? follower = null,
    Object? block = null,
    Object? bestie = null,
  }) {
    return _then(_$_UserRelation(
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      follower: null == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as bool,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as bool,
      bestie: null == bestie
          ? _value.bestie
          : bestie // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRelation implements _UserRelation {
  _$_UserRelation(
      {required this.follow,
      required this.follower,
      required this.block,
      required this.bestie});

  factory _$_UserRelation.fromJson(Map<String, dynamic> json) =>
      _$$_UserRelationFromJson(json);

  @override
  final bool follow;
  @override
  final bool follower;
  @override
  final bool block;
  @override
  final bool bestie;

  @override
  String toString() {
    return 'UserRelationDto(follow: $follow, follower: $follower, block: $block, bestie: $bestie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRelation &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.follower, follower) ||
                other.follower == follower) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.bestie, bestie) || other.bestie == bestie));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, follow, follower, block, bestie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRelationCopyWith<_$_UserRelation> get copyWith =>
      __$$_UserRelationCopyWithImpl<_$_UserRelation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRelationToJson(
      this,
    );
  }
}

abstract class _UserRelation implements UserRelationDto {
  factory _UserRelation(
      {required final bool follow,
      required final bool follower,
      required final bool block,
      required final bool bestie}) = _$_UserRelation;

  factory _UserRelation.fromJson(Map<String, dynamic> json) =
      _$_UserRelation.fromJson;

  @override
  bool get follow;
  @override
  bool get follower;
  @override
  bool get block;
  @override
  bool get bestie;
  @override
  @JsonKey(ignore: true)
  _$$_UserRelationCopyWith<_$_UserRelation> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkedContactDto _$LinkedContactDtoFromJson(Map<String, dynamic> json) {
  return _LinkedContactDto.fromJson(json);
}

/// @nodoc
mixin _$LinkedContactDto {
  @JsonEnum()
  LinkedService get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkedContactDtoCopyWith<LinkedContactDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedContactDtoCopyWith<$Res> {
  factory $LinkedContactDtoCopyWith(
          LinkedContactDto value, $Res Function(LinkedContactDto) then) =
      _$LinkedContactDtoCopyWithImpl<$Res, LinkedContactDto>;
  @useResult
  $Res call({@JsonEnum() LinkedService type, String url});
}

/// @nodoc
class _$LinkedContactDtoCopyWithImpl<$Res, $Val extends LinkedContactDto>
    implements $LinkedContactDtoCopyWith<$Res> {
  _$LinkedContactDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LinkedService,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinkedContactDtoCopyWith<$Res>
    implements $LinkedContactDtoCopyWith<$Res> {
  factory _$$_LinkedContactDtoCopyWith(
          _$_LinkedContactDto value, $Res Function(_$_LinkedContactDto) then) =
      __$$_LinkedContactDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonEnum() LinkedService type, String url});
}

/// @nodoc
class __$$_LinkedContactDtoCopyWithImpl<$Res>
    extends _$LinkedContactDtoCopyWithImpl<$Res, _$_LinkedContactDto>
    implements _$$_LinkedContactDtoCopyWith<$Res> {
  __$$_LinkedContactDtoCopyWithImpl(
      _$_LinkedContactDto _value, $Res Function(_$_LinkedContactDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$_LinkedContactDto(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LinkedService,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkedContactDto implements _LinkedContactDto {
  _$_LinkedContactDto({@JsonEnum() required this.type, required this.url});

  factory _$_LinkedContactDto.fromJson(Map<String, dynamic> json) =>
      _$$_LinkedContactDtoFromJson(json);

  @override
  @JsonEnum()
  final LinkedService type;
  @override
  final String url;

  @override
  String toString() {
    return 'LinkedContactDto(type: $type, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinkedContactDto &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkedContactDtoCopyWith<_$_LinkedContactDto> get copyWith =>
      __$$_LinkedContactDtoCopyWithImpl<_$_LinkedContactDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkedContactDtoToJson(
      this,
    );
  }
}

abstract class _LinkedContactDto implements LinkedContactDto {
  factory _LinkedContactDto(
      {@JsonEnum() required final LinkedService type,
      required final String url}) = _$_LinkedContactDto;

  factory _LinkedContactDto.fromJson(Map<String, dynamic> json) =
      _$_LinkedContactDto.fromJson;

  @override
  @JsonEnum()
  LinkedService get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_LinkedContactDtoCopyWith<_$_LinkedContactDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfilePicDto _$ProfilePicDtoFromJson(Map<String, dynamic> json) {
  return _ProfilePicDto.fromJson(json);
}

/// @nodoc
mixin _$ProfilePicDto {
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonEnum()
  Polygons? get choosedPolygon => throw _privateConstructorUsedError;
  PolygonStyleDto get styles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilePicDtoCopyWith<ProfilePicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePicDtoCopyWith<$Res> {
  factory $ProfilePicDtoCopyWith(
          ProfilePicDto value, $Res Function(ProfilePicDto) then) =
      _$ProfilePicDtoCopyWithImpl<$Res, ProfilePicDto>;
  @useResult
  $Res call(
      {String? imageUrl,
      @JsonEnum() Polygons? choosedPolygon,
      PolygonStyleDto styles});

  $PolygonStyleDtoCopyWith<$Res> get styles;
}

/// @nodoc
class _$ProfilePicDtoCopyWithImpl<$Res, $Val extends ProfilePicDto>
    implements $ProfilePicDtoCopyWith<$Res> {
  _$ProfilePicDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? choosedPolygon = freezed,
    Object? styles = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      choosedPolygon: freezed == choosedPolygon
          ? _value.choosedPolygon
          : choosedPolygon // ignore: cast_nullable_to_non_nullable
              as Polygons?,
      styles: null == styles
          ? _value.styles
          : styles // ignore: cast_nullable_to_non_nullable
              as PolygonStyleDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolygonStyleDtoCopyWith<$Res> get styles {
    return $PolygonStyleDtoCopyWith<$Res>(_value.styles, (value) {
      return _then(_value.copyWith(styles: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfilePicDtoCopyWith<$Res>
    implements $ProfilePicDtoCopyWith<$Res> {
  factory _$$_ProfilePicDtoCopyWith(
          _$_ProfilePicDto value, $Res Function(_$_ProfilePicDto) then) =
      __$$_ProfilePicDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? imageUrl,
      @JsonEnum() Polygons? choosedPolygon,
      PolygonStyleDto styles});

  @override
  $PolygonStyleDtoCopyWith<$Res> get styles;
}

/// @nodoc
class __$$_ProfilePicDtoCopyWithImpl<$Res>
    extends _$ProfilePicDtoCopyWithImpl<$Res, _$_ProfilePicDto>
    implements _$$_ProfilePicDtoCopyWith<$Res> {
  __$$_ProfilePicDtoCopyWithImpl(
      _$_ProfilePicDto _value, $Res Function(_$_ProfilePicDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? choosedPolygon = freezed,
    Object? styles = null,
  }) {
    return _then(_$_ProfilePicDto(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      choosedPolygon: freezed == choosedPolygon
          ? _value.choosedPolygon
          : choosedPolygon // ignore: cast_nullable_to_non_nullable
              as Polygons?,
      styles: null == styles
          ? _value.styles
          : styles // ignore: cast_nullable_to_non_nullable
              as PolygonStyleDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfilePicDto implements _ProfilePicDto {
  _$_ProfilePicDto(
      {required this.imageUrl,
      @JsonEnum() required this.choosedPolygon,
      required this.styles});

  factory _$_ProfilePicDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfilePicDtoFromJson(json);

  @override
  final String? imageUrl;
  @override
  @JsonEnum()
  final Polygons? choosedPolygon;
  @override
  final PolygonStyleDto styles;

  @override
  String toString() {
    return 'ProfilePicDto(imageUrl: $imageUrl, choosedPolygon: $choosedPolygon, styles: $styles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePicDto &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.choosedPolygon, choosedPolygon) ||
                other.choosedPolygon == choosedPolygon) &&
            (identical(other.styles, styles) || other.styles == styles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imageUrl, choosedPolygon, styles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfilePicDtoCopyWith<_$_ProfilePicDto> get copyWith =>
      __$$_ProfilePicDtoCopyWithImpl<_$_ProfilePicDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfilePicDtoToJson(
      this,
    );
  }
}

abstract class _ProfilePicDto implements ProfilePicDto {
  factory _ProfilePicDto(
      {required final String? imageUrl,
      @JsonEnum() required final Polygons? choosedPolygon,
      required final PolygonStyleDto styles}) = _$_ProfilePicDto;

  factory _ProfilePicDto.fromJson(Map<String, dynamic> json) =
      _$_ProfilePicDto.fromJson;

  @override
  String? get imageUrl;
  @override
  @JsonEnum()
  Polygons? get choosedPolygon;
  @override
  PolygonStyleDto get styles;
  @override
  @JsonKey(ignore: true)
  _$$_ProfilePicDtoCopyWith<_$_ProfilePicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PolygonStyleDto _$PolygonStyleDtoFromJson(Map<String, dynamic> json) {
  return _PolygonStyleDto.fromJson(json);
}

/// @nodoc
mixin _$PolygonStyleDto {
  TrianglePPStyleDto? get trianglePPStyle => throw _privateConstructorUsedError;
  PentagonPPStyleDto? get pentagonPPStyle => throw _privateConstructorUsedError;
  HeptagonPPStyleDto? get heptagonPPStyle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolygonStyleDtoCopyWith<PolygonStyleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolygonStyleDtoCopyWith<$Res> {
  factory $PolygonStyleDtoCopyWith(
          PolygonStyleDto value, $Res Function(PolygonStyleDto) then) =
      _$PolygonStyleDtoCopyWithImpl<$Res, PolygonStyleDto>;
  @useResult
  $Res call(
      {TrianglePPStyleDto? trianglePPStyle,
      PentagonPPStyleDto? pentagonPPStyle,
      HeptagonPPStyleDto? heptagonPPStyle});

  $TrianglePPStyleDtoCopyWith<$Res>? get trianglePPStyle;
  $PentagonPPStyleDtoCopyWith<$Res>? get pentagonPPStyle;
  $HeptagonPPStyleDtoCopyWith<$Res>? get heptagonPPStyle;
}

/// @nodoc
class _$PolygonStyleDtoCopyWithImpl<$Res, $Val extends PolygonStyleDto>
    implements $PolygonStyleDtoCopyWith<$Res> {
  _$PolygonStyleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trianglePPStyle = freezed,
    Object? pentagonPPStyle = freezed,
    Object? heptagonPPStyle = freezed,
  }) {
    return _then(_value.copyWith(
      trianglePPStyle: freezed == trianglePPStyle
          ? _value.trianglePPStyle
          : trianglePPStyle // ignore: cast_nullable_to_non_nullable
              as TrianglePPStyleDto?,
      pentagonPPStyle: freezed == pentagonPPStyle
          ? _value.pentagonPPStyle
          : pentagonPPStyle // ignore: cast_nullable_to_non_nullable
              as PentagonPPStyleDto?,
      heptagonPPStyle: freezed == heptagonPPStyle
          ? _value.heptagonPPStyle
          : heptagonPPStyle // ignore: cast_nullable_to_non_nullable
              as HeptagonPPStyleDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrianglePPStyleDtoCopyWith<$Res>? get trianglePPStyle {
    if (_value.trianglePPStyle == null) {
      return null;
    }

    return $TrianglePPStyleDtoCopyWith<$Res>(_value.trianglePPStyle!, (value) {
      return _then(_value.copyWith(trianglePPStyle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PentagonPPStyleDtoCopyWith<$Res>? get pentagonPPStyle {
    if (_value.pentagonPPStyle == null) {
      return null;
    }

    return $PentagonPPStyleDtoCopyWith<$Res>(_value.pentagonPPStyle!, (value) {
      return _then(_value.copyWith(pentagonPPStyle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HeptagonPPStyleDtoCopyWith<$Res>? get heptagonPPStyle {
    if (_value.heptagonPPStyle == null) {
      return null;
    }

    return $HeptagonPPStyleDtoCopyWith<$Res>(_value.heptagonPPStyle!, (value) {
      return _then(_value.copyWith(heptagonPPStyle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PolygonStyleDtoCopyWith<$Res>
    implements $PolygonStyleDtoCopyWith<$Res> {
  factory _$$_PolygonStyleDtoCopyWith(
          _$_PolygonStyleDto value, $Res Function(_$_PolygonStyleDto) then) =
      __$$_PolygonStyleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrianglePPStyleDto? trianglePPStyle,
      PentagonPPStyleDto? pentagonPPStyle,
      HeptagonPPStyleDto? heptagonPPStyle});

  @override
  $TrianglePPStyleDtoCopyWith<$Res>? get trianglePPStyle;
  @override
  $PentagonPPStyleDtoCopyWith<$Res>? get pentagonPPStyle;
  @override
  $HeptagonPPStyleDtoCopyWith<$Res>? get heptagonPPStyle;
}

/// @nodoc
class __$$_PolygonStyleDtoCopyWithImpl<$Res>
    extends _$PolygonStyleDtoCopyWithImpl<$Res, _$_PolygonStyleDto>
    implements _$$_PolygonStyleDtoCopyWith<$Res> {
  __$$_PolygonStyleDtoCopyWithImpl(
      _$_PolygonStyleDto _value, $Res Function(_$_PolygonStyleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trianglePPStyle = freezed,
    Object? pentagonPPStyle = freezed,
    Object? heptagonPPStyle = freezed,
  }) {
    return _then(_$_PolygonStyleDto(
      trianglePPStyle: freezed == trianglePPStyle
          ? _value.trianglePPStyle
          : trianglePPStyle // ignore: cast_nullable_to_non_nullable
              as TrianglePPStyleDto?,
      pentagonPPStyle: freezed == pentagonPPStyle
          ? _value.pentagonPPStyle
          : pentagonPPStyle // ignore: cast_nullable_to_non_nullable
              as PentagonPPStyleDto?,
      heptagonPPStyle: freezed == heptagonPPStyle
          ? _value.heptagonPPStyle
          : heptagonPPStyle // ignore: cast_nullable_to_non_nullable
              as HeptagonPPStyleDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PolygonStyleDto implements _PolygonStyleDto {
  _$_PolygonStyleDto(
      {required this.trianglePPStyle,
      required this.pentagonPPStyle,
      required this.heptagonPPStyle});

  factory _$_PolygonStyleDto.fromJson(Map<String, dynamic> json) =>
      _$$_PolygonStyleDtoFromJson(json);

  @override
  final TrianglePPStyleDto? trianglePPStyle;
  @override
  final PentagonPPStyleDto? pentagonPPStyle;
  @override
  final HeptagonPPStyleDto? heptagonPPStyle;

  @override
  String toString() {
    return 'PolygonStyleDto(trianglePPStyle: $trianglePPStyle, pentagonPPStyle: $pentagonPPStyle, heptagonPPStyle: $heptagonPPStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PolygonStyleDto &&
            (identical(other.trianglePPStyle, trianglePPStyle) ||
                other.trianglePPStyle == trianglePPStyle) &&
            (identical(other.pentagonPPStyle, pentagonPPStyle) ||
                other.pentagonPPStyle == pentagonPPStyle) &&
            (identical(other.heptagonPPStyle, heptagonPPStyle) ||
                other.heptagonPPStyle == heptagonPPStyle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, trianglePPStyle, pentagonPPStyle, heptagonPPStyle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PolygonStyleDtoCopyWith<_$_PolygonStyleDto> get copyWith =>
      __$$_PolygonStyleDtoCopyWithImpl<_$_PolygonStyleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolygonStyleDtoToJson(
      this,
    );
  }
}

abstract class _PolygonStyleDto implements PolygonStyleDto {
  factory _PolygonStyleDto(
      {required final TrianglePPStyleDto? trianglePPStyle,
      required final PentagonPPStyleDto? pentagonPPStyle,
      required final HeptagonPPStyleDto? heptagonPPStyle}) = _$_PolygonStyleDto;

  factory _PolygonStyleDto.fromJson(Map<String, dynamic> json) =
      _$_PolygonStyleDto.fromJson;

  @override
  TrianglePPStyleDto? get trianglePPStyle;
  @override
  PentagonPPStyleDto? get pentagonPPStyle;
  @override
  HeptagonPPStyleDto? get heptagonPPStyle;
  @override
  @JsonKey(ignore: true)
  _$$_PolygonStyleDtoCopyWith<_$_PolygonStyleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

TrianglePPStyleDto _$TrianglePPStyleDtoFromJson(Map<String, dynamic> json) {
  return _TrianglePPStyleDto.fromJson(json);
}

/// @nodoc
mixin _$TrianglePPStyleDto {
  double get radialRadius => throw _privateConstructorUsedError;
  List<int> get colors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrianglePPStyleDtoCopyWith<TrianglePPStyleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrianglePPStyleDtoCopyWith<$Res> {
  factory $TrianglePPStyleDtoCopyWith(
          TrianglePPStyleDto value, $Res Function(TrianglePPStyleDto) then) =
      _$TrianglePPStyleDtoCopyWithImpl<$Res, TrianglePPStyleDto>;
  @useResult
  $Res call({double radialRadius, List<int> colors});
}

/// @nodoc
class _$TrianglePPStyleDtoCopyWithImpl<$Res, $Val extends TrianglePPStyleDto>
    implements $TrianglePPStyleDtoCopyWith<$Res> {
  _$TrianglePPStyleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radialRadius = null,
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      radialRadius: null == radialRadius
          ? _value.radialRadius
          : radialRadius // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrianglePPStyleDtoCopyWith<$Res>
    implements $TrianglePPStyleDtoCopyWith<$Res> {
  factory _$$_TrianglePPStyleDtoCopyWith(_$_TrianglePPStyleDto value,
          $Res Function(_$_TrianglePPStyleDto) then) =
      __$$_TrianglePPStyleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double radialRadius, List<int> colors});
}

/// @nodoc
class __$$_TrianglePPStyleDtoCopyWithImpl<$Res>
    extends _$TrianglePPStyleDtoCopyWithImpl<$Res, _$_TrianglePPStyleDto>
    implements _$$_TrianglePPStyleDtoCopyWith<$Res> {
  __$$_TrianglePPStyleDtoCopyWithImpl(
      _$_TrianglePPStyleDto _value, $Res Function(_$_TrianglePPStyleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radialRadius = null,
    Object? colors = null,
  }) {
    return _then(_$_TrianglePPStyleDto(
      radialRadius: null == radialRadius
          ? _value.radialRadius
          : radialRadius // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrianglePPStyleDto implements _TrianglePPStyleDto {
  _$_TrianglePPStyleDto(
      {required this.radialRadius, required final List<int> colors})
      : _colors = colors;

  factory _$_TrianglePPStyleDto.fromJson(Map<String, dynamic> json) =>
      _$$_TrianglePPStyleDtoFromJson(json);

  @override
  final double radialRadius;
  final List<int> _colors;
  @override
  List<int> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'TrianglePPStyleDto(radialRadius: $radialRadius, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrianglePPStyleDto &&
            (identical(other.radialRadius, radialRadius) ||
                other.radialRadius == radialRadius) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, radialRadius, const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrianglePPStyleDtoCopyWith<_$_TrianglePPStyleDto> get copyWith =>
      __$$_TrianglePPStyleDtoCopyWithImpl<_$_TrianglePPStyleDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrianglePPStyleDtoToJson(
      this,
    );
  }
}

abstract class _TrianglePPStyleDto implements TrianglePPStyleDto {
  factory _TrianglePPStyleDto(
      {required final double radialRadius,
      required final List<int> colors}) = _$_TrianglePPStyleDto;

  factory _TrianglePPStyleDto.fromJson(Map<String, dynamic> json) =
      _$_TrianglePPStyleDto.fromJson;

  @override
  double get radialRadius;
  @override
  List<int> get colors;
  @override
  @JsonKey(ignore: true)
  _$$_TrianglePPStyleDtoCopyWith<_$_TrianglePPStyleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PentagonPPStyleDto _$PentagonPPStyleDtoFromJson(Map<String, dynamic> json) {
  return _PentagonPPStyleDto.fromJson(json);
}

/// @nodoc
mixin _$PentagonPPStyleDto {
  double get beginX => throw _privateConstructorUsedError;
  double get beginY => throw _privateConstructorUsedError;
  double get endX => throw _privateConstructorUsedError;
  double get endY => throw _privateConstructorUsedError;
  List<int> get colors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PentagonPPStyleDtoCopyWith<PentagonPPStyleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PentagonPPStyleDtoCopyWith<$Res> {
  factory $PentagonPPStyleDtoCopyWith(
          PentagonPPStyleDto value, $Res Function(PentagonPPStyleDto) then) =
      _$PentagonPPStyleDtoCopyWithImpl<$Res, PentagonPPStyleDto>;
  @useResult
  $Res call(
      {double beginX,
      double beginY,
      double endX,
      double endY,
      List<int> colors});
}

/// @nodoc
class _$PentagonPPStyleDtoCopyWithImpl<$Res, $Val extends PentagonPPStyleDto>
    implements $PentagonPPStyleDtoCopyWith<$Res> {
  _$PentagonPPStyleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginX = null,
    Object? beginY = null,
    Object? endX = null,
    Object? endY = null,
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      beginX: null == beginX
          ? _value.beginX
          : beginX // ignore: cast_nullable_to_non_nullable
              as double,
      beginY: null == beginY
          ? _value.beginY
          : beginY // ignore: cast_nullable_to_non_nullable
              as double,
      endX: null == endX
          ? _value.endX
          : endX // ignore: cast_nullable_to_non_nullable
              as double,
      endY: null == endY
          ? _value.endY
          : endY // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PentagonPPStyleDtoCopyWith<$Res>
    implements $PentagonPPStyleDtoCopyWith<$Res> {
  factory _$$_PentagonPPStyleDtoCopyWith(_$_PentagonPPStyleDto value,
          $Res Function(_$_PentagonPPStyleDto) then) =
      __$$_PentagonPPStyleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double beginX,
      double beginY,
      double endX,
      double endY,
      List<int> colors});
}

/// @nodoc
class __$$_PentagonPPStyleDtoCopyWithImpl<$Res>
    extends _$PentagonPPStyleDtoCopyWithImpl<$Res, _$_PentagonPPStyleDto>
    implements _$$_PentagonPPStyleDtoCopyWith<$Res> {
  __$$_PentagonPPStyleDtoCopyWithImpl(
      _$_PentagonPPStyleDto _value, $Res Function(_$_PentagonPPStyleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginX = null,
    Object? beginY = null,
    Object? endX = null,
    Object? endY = null,
    Object? colors = null,
  }) {
    return _then(_$_PentagonPPStyleDto(
      beginX: null == beginX
          ? _value.beginX
          : beginX // ignore: cast_nullable_to_non_nullable
              as double,
      beginY: null == beginY
          ? _value.beginY
          : beginY // ignore: cast_nullable_to_non_nullable
              as double,
      endX: null == endX
          ? _value.endX
          : endX // ignore: cast_nullable_to_non_nullable
              as double,
      endY: null == endY
          ? _value.endY
          : endY // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PentagonPPStyleDto implements _PentagonPPStyleDto {
  _$_PentagonPPStyleDto(
      {required this.beginX,
      required this.beginY,
      required this.endX,
      required this.endY,
      required final List<int> colors})
      : _colors = colors;

  factory _$_PentagonPPStyleDto.fromJson(Map<String, dynamic> json) =>
      _$$_PentagonPPStyleDtoFromJson(json);

  @override
  final double beginX;
  @override
  final double beginY;
  @override
  final double endX;
  @override
  final double endY;
  final List<int> _colors;
  @override
  List<int> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'PentagonPPStyleDto(beginX: $beginX, beginY: $beginY, endX: $endX, endY: $endY, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PentagonPPStyleDto &&
            (identical(other.beginX, beginX) || other.beginX == beginX) &&
            (identical(other.beginY, beginY) || other.beginY == beginY) &&
            (identical(other.endX, endX) || other.endX == endX) &&
            (identical(other.endY, endY) || other.endY == endY) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, beginX, beginY, endX, endY,
      const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PentagonPPStyleDtoCopyWith<_$_PentagonPPStyleDto> get copyWith =>
      __$$_PentagonPPStyleDtoCopyWithImpl<_$_PentagonPPStyleDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PentagonPPStyleDtoToJson(
      this,
    );
  }
}

abstract class _PentagonPPStyleDto implements PentagonPPStyleDto {
  factory _PentagonPPStyleDto(
      {required final double beginX,
      required final double beginY,
      required final double endX,
      required final double endY,
      required final List<int> colors}) = _$_PentagonPPStyleDto;

  factory _PentagonPPStyleDto.fromJson(Map<String, dynamic> json) =
      _$_PentagonPPStyleDto.fromJson;

  @override
  double get beginX;
  @override
  double get beginY;
  @override
  double get endX;
  @override
  double get endY;
  @override
  List<int> get colors;
  @override
  @JsonKey(ignore: true)
  _$$_PentagonPPStyleDtoCopyWith<_$_PentagonPPStyleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

HeptagonPPStyleDto _$HeptagonPPStyleDtoFromJson(Map<String, dynamic> json) {
  return _HeptagonPPStyleDto.fromJson(json);
}

/// @nodoc
mixin _$HeptagonPPStyleDto {
  double get epicenterX => throw _privateConstructorUsedError;
  double get epicenterY => throw _privateConstructorUsedError;
  double get startAngle => throw _privateConstructorUsedError;
  double get endAngle => throw _privateConstructorUsedError;
  List<int> get colors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeptagonPPStyleDtoCopyWith<HeptagonPPStyleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeptagonPPStyleDtoCopyWith<$Res> {
  factory $HeptagonPPStyleDtoCopyWith(
          HeptagonPPStyleDto value, $Res Function(HeptagonPPStyleDto) then) =
      _$HeptagonPPStyleDtoCopyWithImpl<$Res, HeptagonPPStyleDto>;
  @useResult
  $Res call(
      {double epicenterX,
      double epicenterY,
      double startAngle,
      double endAngle,
      List<int> colors});
}

/// @nodoc
class _$HeptagonPPStyleDtoCopyWithImpl<$Res, $Val extends HeptagonPPStyleDto>
    implements $HeptagonPPStyleDtoCopyWith<$Res> {
  _$HeptagonPPStyleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epicenterX = null,
    Object? epicenterY = null,
    Object? startAngle = null,
    Object? endAngle = null,
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      epicenterX: null == epicenterX
          ? _value.epicenterX
          : epicenterX // ignore: cast_nullable_to_non_nullable
              as double,
      epicenterY: null == epicenterY
          ? _value.epicenterY
          : epicenterY // ignore: cast_nullable_to_non_nullable
              as double,
      startAngle: null == startAngle
          ? _value.startAngle
          : startAngle // ignore: cast_nullable_to_non_nullable
              as double,
      endAngle: null == endAngle
          ? _value.endAngle
          : endAngle // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HeptagonPPStyleDtoCopyWith<$Res>
    implements $HeptagonPPStyleDtoCopyWith<$Res> {
  factory _$$_HeptagonPPStyleDtoCopyWith(_$_HeptagonPPStyleDto value,
          $Res Function(_$_HeptagonPPStyleDto) then) =
      __$$_HeptagonPPStyleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double epicenterX,
      double epicenterY,
      double startAngle,
      double endAngle,
      List<int> colors});
}

/// @nodoc
class __$$_HeptagonPPStyleDtoCopyWithImpl<$Res>
    extends _$HeptagonPPStyleDtoCopyWithImpl<$Res, _$_HeptagonPPStyleDto>
    implements _$$_HeptagonPPStyleDtoCopyWith<$Res> {
  __$$_HeptagonPPStyleDtoCopyWithImpl(
      _$_HeptagonPPStyleDto _value, $Res Function(_$_HeptagonPPStyleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epicenterX = null,
    Object? epicenterY = null,
    Object? startAngle = null,
    Object? endAngle = null,
    Object? colors = null,
  }) {
    return _then(_$_HeptagonPPStyleDto(
      epicenterX: null == epicenterX
          ? _value.epicenterX
          : epicenterX // ignore: cast_nullable_to_non_nullable
              as double,
      epicenterY: null == epicenterY
          ? _value.epicenterY
          : epicenterY // ignore: cast_nullable_to_non_nullable
              as double,
      startAngle: null == startAngle
          ? _value.startAngle
          : startAngle // ignore: cast_nullable_to_non_nullable
              as double,
      endAngle: null == endAngle
          ? _value.endAngle
          : endAngle // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeptagonPPStyleDto implements _HeptagonPPStyleDto {
  _$_HeptagonPPStyleDto(
      {required this.epicenterX,
      required this.epicenterY,
      required this.startAngle,
      required this.endAngle,
      required final List<int> colors})
      : _colors = colors;

  factory _$_HeptagonPPStyleDto.fromJson(Map<String, dynamic> json) =>
      _$$_HeptagonPPStyleDtoFromJson(json);

  @override
  final double epicenterX;
  @override
  final double epicenterY;
  @override
  final double startAngle;
  @override
  final double endAngle;
  final List<int> _colors;
  @override
  List<int> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'HeptagonPPStyleDto(epicenterX: $epicenterX, epicenterY: $epicenterY, startAngle: $startAngle, endAngle: $endAngle, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeptagonPPStyleDto &&
            (identical(other.epicenterX, epicenterX) ||
                other.epicenterX == epicenterX) &&
            (identical(other.epicenterY, epicenterY) ||
                other.epicenterY == epicenterY) &&
            (identical(other.startAngle, startAngle) ||
                other.startAngle == startAngle) &&
            (identical(other.endAngle, endAngle) ||
                other.endAngle == endAngle) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, epicenterX, epicenterY,
      startAngle, endAngle, const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeptagonPPStyleDtoCopyWith<_$_HeptagonPPStyleDto> get copyWith =>
      __$$_HeptagonPPStyleDtoCopyWithImpl<_$_HeptagonPPStyleDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeptagonPPStyleDtoToJson(
      this,
    );
  }
}

abstract class _HeptagonPPStyleDto implements HeptagonPPStyleDto {
  factory _HeptagonPPStyleDto(
      {required final double epicenterX,
      required final double epicenterY,
      required final double startAngle,
      required final double endAngle,
      required final List<int> colors}) = _$_HeptagonPPStyleDto;

  factory _HeptagonPPStyleDto.fromJson(Map<String, dynamic> json) =
      _$_HeptagonPPStyleDto.fromJson;

  @override
  double get epicenterX;
  @override
  double get epicenterY;
  @override
  double get startAngle;
  @override
  double get endAngle;
  @override
  List<int> get colors;
  @override
  @JsonKey(ignore: true)
  _$$_HeptagonPPStyleDtoCopyWith<_$_HeptagonPPStyleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPrefsDto _$UserPrefsDtoFromJson(Map<String, dynamic> json) {
  return _UserPrefsDto.fromJson(json);
}

/// @nodoc
mixin _$UserPrefsDto {
  List<String>? get achievements => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPrefsDtoCopyWith<UserPrefsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPrefsDtoCopyWith<$Res> {
  factory $UserPrefsDtoCopyWith(
          UserPrefsDto value, $Res Function(UserPrefsDto) then) =
      _$UserPrefsDtoCopyWithImpl<$Res, UserPrefsDto>;
  @useResult
  $Res call({List<String>? achievements, int? points});
}

/// @nodoc
class _$UserPrefsDtoCopyWithImpl<$Res, $Val extends UserPrefsDto>
    implements $UserPrefsDtoCopyWith<$Res> {
  _$UserPrefsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achievements = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      achievements: freezed == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPrefsDtoCopyWith<$Res>
    implements $UserPrefsDtoCopyWith<$Res> {
  factory _$$_UserPrefsDtoCopyWith(
          _$_UserPrefsDto value, $Res Function(_$_UserPrefsDto) then) =
      __$$_UserPrefsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? achievements, int? points});
}

/// @nodoc
class __$$_UserPrefsDtoCopyWithImpl<$Res>
    extends _$UserPrefsDtoCopyWithImpl<$Res, _$_UserPrefsDto>
    implements _$$_UserPrefsDtoCopyWith<$Res> {
  __$$_UserPrefsDtoCopyWithImpl(
      _$_UserPrefsDto _value, $Res Function(_$_UserPrefsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achievements = freezed,
    Object? points = freezed,
  }) {
    return _then(_$_UserPrefsDto(
      achievements: freezed == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPrefsDto implements _UserPrefsDto {
  const _$_UserPrefsDto(
      {required final List<String>? achievements, required this.points})
      : _achievements = achievements;

  factory _$_UserPrefsDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserPrefsDtoFromJson(json);

  final List<String>? _achievements;
  @override
  List<String>? get achievements {
    final value = _achievements;
    if (value == null) return null;
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? points;

  @override
  String toString() {
    return 'UserPrefsDto(achievements: $achievements, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPrefsDto &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_achievements), points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPrefsDtoCopyWith<_$_UserPrefsDto> get copyWith =>
      __$$_UserPrefsDtoCopyWithImpl<_$_UserPrefsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPrefsDtoToJson(
      this,
    );
  }
}

abstract class _UserPrefsDto implements UserPrefsDto {
  const factory _UserPrefsDto(
      {required final List<String>? achievements,
      required final int? points}) = _$_UserPrefsDto;

  factory _UserPrefsDto.fromJson(Map<String, dynamic> json) =
      _$_UserPrefsDto.fromJson;

  @override
  List<String>? get achievements;
  @override
  int? get points;
  @override
  @JsonKey(ignore: true)
  _$$_UserPrefsDtoCopyWith<_$_UserPrefsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserFormDto _$UserFormDtoFromJson(Map<String, dynamic> json) {
  return _UserFormDto.fromJson(json);
}

/// @nodoc
mixin _$UserFormDto {
  String? get userName => throw _privateConstructorUsedError;
  String? get avatarImageUrl => throw _privateConstructorUsedError;
  String? get backgroundImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFormDtoCopyWith<UserFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormDtoCopyWith<$Res> {
  factory $UserFormDtoCopyWith(
          UserFormDto value, $Res Function(UserFormDto) then) =
      _$UserFormDtoCopyWithImpl<$Res, UserFormDto>;
  @useResult
  $Res call(
      {String? userName, String? avatarImageUrl, String? backgroundImageUrl});
}

/// @nodoc
class _$UserFormDtoCopyWithImpl<$Res, $Val extends UserFormDto>
    implements $UserFormDtoCopyWith<$Res> {
  _$UserFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? avatarImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarImageUrl: freezed == avatarImageUrl
          ? _value.avatarImageUrl
          : avatarImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserFormDtoCopyWith<$Res>
    implements $UserFormDtoCopyWith<$Res> {
  factory _$$_UserFormDtoCopyWith(
          _$_UserFormDto value, $Res Function(_$_UserFormDto) then) =
      __$$_UserFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userName, String? avatarImageUrl, String? backgroundImageUrl});
}

/// @nodoc
class __$$_UserFormDtoCopyWithImpl<$Res>
    extends _$UserFormDtoCopyWithImpl<$Res, _$_UserFormDto>
    implements _$$_UserFormDtoCopyWith<$Res> {
  __$$_UserFormDtoCopyWithImpl(
      _$_UserFormDto _value, $Res Function(_$_UserFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? avatarImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
  }) {
    return _then(_$_UserFormDto(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarImageUrl: freezed == avatarImageUrl
          ? _value.avatarImageUrl
          : avatarImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserFormDto implements _UserFormDto {
  const _$_UserFormDto(
      {this.userName, this.avatarImageUrl, this.backgroundImageUrl});

  factory _$_UserFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserFormDtoFromJson(json);

  @override
  final String? userName;
  @override
  final String? avatarImageUrl;
  @override
  final String? backgroundImageUrl;

  @override
  String toString() {
    return 'UserFormDto(userName: $userName, avatarImageUrl: $avatarImageUrl, backgroundImageUrl: $backgroundImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFormDto &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.avatarImageUrl, avatarImageUrl) ||
                other.avatarImageUrl == avatarImageUrl) &&
            (identical(other.backgroundImageUrl, backgroundImageUrl) ||
                other.backgroundImageUrl == backgroundImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, avatarImageUrl, backgroundImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFormDtoCopyWith<_$_UserFormDto> get copyWith =>
      __$$_UserFormDtoCopyWithImpl<_$_UserFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFormDtoToJson(
      this,
    );
  }
}

abstract class _UserFormDto implements UserFormDto {
  const factory _UserFormDto(
      {final String? userName,
      final String? avatarImageUrl,
      final String? backgroundImageUrl}) = _$_UserFormDto;

  factory _UserFormDto.fromJson(Map<String, dynamic> json) =
      _$_UserFormDto.fromJson;

  @override
  String? get userName;
  @override
  String? get avatarImageUrl;
  @override
  String? get backgroundImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserFormDtoCopyWith<_$_UserFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
