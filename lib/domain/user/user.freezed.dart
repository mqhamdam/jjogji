// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  UUID get uuid =>
      throw _privateConstructorUsedError; // this field required for Entity classes
  UserName get userName => throw _privateConstructorUsedError;
  UserID? get userID => throw _privateConstructorUsedError;
  int get reputation => throw _privateConstructorUsedError;
  int get postCount => throw _privateConstructorUsedError;
  int get followersCount => throw _privateConstructorUsedError;
  int get followingCount => throw _privateConstructorUsedError;
  UserPrefs? get userPrefs => throw _privateConstructorUsedError;
  VerificationStatus get verificationStatus =>
      throw _privateConstructorUsedError;
  ProfilePic get profilePic => throw _privateConstructorUsedError;
  List<LinkedContact> get linkedContacts => throw _privateConstructorUsedError;
  NetworkImageURL? get avatarImageUrl => throw _privateConstructorUsedError;
  NetworkImageURL? get backgroundImageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {UUID uuid,
      UserName userName,
      UserID? userID,
      int reputation,
      int postCount,
      int followersCount,
      int followingCount,
      UserPrefs? userPrefs,
      VerificationStatus verificationStatus,
      ProfilePic profilePic,
      List<LinkedContact> linkedContacts,
      NetworkImageURL? avatarImageUrl,
      NetworkImageURL? backgroundImageUrl});

  $UserPrefsCopyWith<$Res>? get userPrefs;
  $ProfilePicCopyWith<$Res> get profilePic;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

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
    Object? reputation = null,
    Object? postCount = null,
    Object? followersCount = null,
    Object? followingCount = null,
    Object? userPrefs = freezed,
    Object? verificationStatus = null,
    Object? profilePic = null,
    Object? linkedContacts = null,
    Object? avatarImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID?,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      userPrefs: freezed == userPrefs
          ? _value.userPrefs
          : userPrefs // ignore: cast_nullable_to_non_nullable
              as UserPrefs?,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as VerificationStatus,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as ProfilePic,
      linkedContacts: null == linkedContacts
          ? _value.linkedContacts
          : linkedContacts // ignore: cast_nullable_to_non_nullable
              as List<LinkedContact>,
      avatarImageUrl: freezed == avatarImageUrl
          ? _value.avatarImageUrl
          : avatarImageUrl // ignore: cast_nullable_to_non_nullable
              as NetworkImageURL?,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as NetworkImageURL?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserPrefsCopyWith<$Res>? get userPrefs {
    if (_value.userPrefs == null) {
      return null;
    }

    return $UserPrefsCopyWith<$Res>(_value.userPrefs!, (value) {
      return _then(_value.copyWith(userPrefs: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfilePicCopyWith<$Res> get profilePic {
    return $ProfilePicCopyWith<$Res>(_value.profilePic, (value) {
      return _then(_value.copyWith(profilePic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UUID uuid,
      UserName userName,
      UserID? userID,
      int reputation,
      int postCount,
      int followersCount,
      int followingCount,
      UserPrefs? userPrefs,
      VerificationStatus verificationStatus,
      ProfilePic profilePic,
      List<LinkedContact> linkedContacts,
      NetworkImageURL? avatarImageUrl,
      NetworkImageURL? backgroundImageUrl});

  @override
  $UserPrefsCopyWith<$Res>? get userPrefs;
  @override
  $ProfilePicCopyWith<$Res> get profilePic;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? userName = null,
    Object? userID = freezed,
    Object? reputation = null,
    Object? postCount = null,
    Object? followersCount = null,
    Object? followingCount = null,
    Object? userPrefs = freezed,
    Object? verificationStatus = null,
    Object? profilePic = null,
    Object? linkedContacts = null,
    Object? avatarImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
  }) {
    return _then(_$_User(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID?,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      userPrefs: freezed == userPrefs
          ? _value.userPrefs
          : userPrefs // ignore: cast_nullable_to_non_nullable
              as UserPrefs?,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as VerificationStatus,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as ProfilePic,
      linkedContacts: null == linkedContacts
          ? _value._linkedContacts
          : linkedContacts // ignore: cast_nullable_to_non_nullable
              as List<LinkedContact>,
      avatarImageUrl: freezed == avatarImageUrl
          ? _value.avatarImageUrl
          : avatarImageUrl // ignore: cast_nullable_to_non_nullable
              as NetworkImageURL?,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as NetworkImageURL?,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  _$_User(
      {required this.uuid,
      required this.userName,
      required this.userID,
      required this.reputation,
      required this.postCount,
      required this.followersCount,
      required this.followingCount,
      required this.userPrefs,
      required this.verificationStatus,
      required this.profilePic,
      required final List<LinkedContact> linkedContacts,
      required this.avatarImageUrl,
      required this.backgroundImageUrl})
      : _linkedContacts = linkedContacts;

  @override
  final UUID uuid;
// this field required for Entity classes
  @override
  final UserName userName;
  @override
  final UserID? userID;
  @override
  final int reputation;
  @override
  final int postCount;
  @override
  final int followersCount;
  @override
  final int followingCount;
  @override
  final UserPrefs? userPrefs;
  @override
  final VerificationStatus verificationStatus;
  @override
  final ProfilePic profilePic;
  final List<LinkedContact> _linkedContacts;
  @override
  List<LinkedContact> get linkedContacts {
    if (_linkedContacts is EqualUnmodifiableListView) return _linkedContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_linkedContacts);
  }

  @override
  final NetworkImageURL? avatarImageUrl;
  @override
  final NetworkImageURL? backgroundImageUrl;

  @override
  String toString() {
    return 'User(uuid: $uuid, userName: $userName, userID: $userID, reputation: $reputation, postCount: $postCount, followersCount: $followersCount, followingCount: $followingCount, userPrefs: $userPrefs, verificationStatus: $verificationStatus, profilePic: $profilePic, linkedContacts: $linkedContacts, avatarImageUrl: $avatarImageUrl, backgroundImageUrl: $backgroundImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.userPrefs, userPrefs) ||
                other.userPrefs == userPrefs) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            const DeepCollectionEquality()
                .equals(other._linkedContacts, _linkedContacts) &&
            (identical(other.avatarImageUrl, avatarImageUrl) ||
                other.avatarImageUrl == avatarImageUrl) &&
            (identical(other.backgroundImageUrl, backgroundImageUrl) ||
                other.backgroundImageUrl == backgroundImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      userName,
      userID,
      reputation,
      postCount,
      followersCount,
      followingCount,
      userPrefs,
      verificationStatus,
      profilePic,
      const DeepCollectionEquality().hash(_linkedContacts),
      avatarImageUrl,
      backgroundImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User implements User {
  factory _User(
      {required final UUID uuid,
      required final UserName userName,
      required final UserID? userID,
      required final int reputation,
      required final int postCount,
      required final int followersCount,
      required final int followingCount,
      required final UserPrefs? userPrefs,
      required final VerificationStatus verificationStatus,
      required final ProfilePic profilePic,
      required final List<LinkedContact> linkedContacts,
      required final NetworkImageURL? avatarImageUrl,
      required final NetworkImageURL? backgroundImageUrl}) = _$_User;

  @override
  UUID get uuid;
  @override // this field required for Entity classes
  UserName get userName;
  @override
  UserID? get userID;
  @override
  int get reputation;
  @override
  int get postCount;
  @override
  int get followersCount;
  @override
  int get followingCount;
  @override
  UserPrefs? get userPrefs;
  @override
  VerificationStatus get verificationStatus;
  @override
  ProfilePic get profilePic;
  @override
  List<LinkedContact> get linkedContacts;
  @override
  NetworkImageURL? get avatarImageUrl;
  @override
  NetworkImageURL? get backgroundImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserRelation {
  bool get follow => throw _privateConstructorUsedError;
  bool get follower => throw _privateConstructorUsedError;
  bool get block => throw _privateConstructorUsedError;
  bool get bestie => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRelationCopyWith<UserRelation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRelationCopyWith<$Res> {
  factory $UserRelationCopyWith(
          UserRelation value, $Res Function(UserRelation) then) =
      _$UserRelationCopyWithImpl<$Res, UserRelation>;
  @useResult
  $Res call({bool follow, bool follower, bool block, bool bestie});
}

/// @nodoc
class _$UserRelationCopyWithImpl<$Res, $Val extends UserRelation>
    implements $UserRelationCopyWith<$Res> {
  _$UserRelationCopyWithImpl(this._value, this._then);

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
    implements $UserRelationCopyWith<$Res> {
  factory _$$_UserRelationCopyWith(
          _$_UserRelation value, $Res Function(_$_UserRelation) then) =
      __$$_UserRelationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool follow, bool follower, bool block, bool bestie});
}

/// @nodoc
class __$$_UserRelationCopyWithImpl<$Res>
    extends _$UserRelationCopyWithImpl<$Res, _$_UserRelation>
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

class _$_UserRelation implements _UserRelation {
  _$_UserRelation(
      {required this.follow,
      required this.follower,
      required this.block,
      required this.bestie});

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
    return 'UserRelation(follow: $follow, follower: $follower, block: $block, bestie: $bestie)';
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

  @override
  int get hashCode => Object.hash(runtimeType, follow, follower, block, bestie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRelationCopyWith<_$_UserRelation> get copyWith =>
      __$$_UserRelationCopyWithImpl<_$_UserRelation>(this, _$identity);
}

abstract class _UserRelation implements UserRelation {
  factory _UserRelation(
      {required final bool follow,
      required final bool follower,
      required final bool block,
      required final bool bestie}) = _$_UserRelation;

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

/// @nodoc
mixin _$LinkedContact {
  LinkedService get type => throw _privateConstructorUsedError;
  ValidatedURL get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkedContactCopyWith<LinkedContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedContactCopyWith<$Res> {
  factory $LinkedContactCopyWith(
          LinkedContact value, $Res Function(LinkedContact) then) =
      _$LinkedContactCopyWithImpl<$Res, LinkedContact>;
  @useResult
  $Res call({LinkedService type, ValidatedURL url});
}

/// @nodoc
class _$LinkedContactCopyWithImpl<$Res, $Val extends LinkedContact>
    implements $LinkedContactCopyWith<$Res> {
  _$LinkedContactCopyWithImpl(this._value, this._then);

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
              as ValidatedURL,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinkedContactCopyWith<$Res>
    implements $LinkedContactCopyWith<$Res> {
  factory _$$_LinkedContactCopyWith(
          _$_LinkedContact value, $Res Function(_$_LinkedContact) then) =
      __$$_LinkedContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LinkedService type, ValidatedURL url});
}

/// @nodoc
class __$$_LinkedContactCopyWithImpl<$Res>
    extends _$LinkedContactCopyWithImpl<$Res, _$_LinkedContact>
    implements _$$_LinkedContactCopyWith<$Res> {
  __$$_LinkedContactCopyWithImpl(
      _$_LinkedContact _value, $Res Function(_$_LinkedContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$_LinkedContact(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LinkedService,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as ValidatedURL,
    ));
  }
}

/// @nodoc

class _$_LinkedContact implements _LinkedContact {
  _$_LinkedContact({required this.type, required this.url});

  @override
  final LinkedService type;
  @override
  final ValidatedURL url;

  @override
  String toString() {
    return 'LinkedContact(type: $type, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinkedContact &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkedContactCopyWith<_$_LinkedContact> get copyWith =>
      __$$_LinkedContactCopyWithImpl<_$_LinkedContact>(this, _$identity);
}

abstract class _LinkedContact implements LinkedContact {
  factory _LinkedContact(
      {required final LinkedService type,
      required final ValidatedURL url}) = _$_LinkedContact;

  @override
  LinkedService get type;
  @override
  ValidatedURL get url;
  @override
  @JsonKey(ignore: true)
  _$$_LinkedContactCopyWith<_$_LinkedContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfilePic {
  NetworkImageURL? get imageUrl => throw _privateConstructorUsedError;
  Polygons? get choosedPolygon => throw _privateConstructorUsedError;
  PolygonStyle get styles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfilePicCopyWith<ProfilePic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePicCopyWith<$Res> {
  factory $ProfilePicCopyWith(
          ProfilePic value, $Res Function(ProfilePic) then) =
      _$ProfilePicCopyWithImpl<$Res, ProfilePic>;
  @useResult
  $Res call(
      {NetworkImageURL? imageUrl,
      Polygons? choosedPolygon,
      PolygonStyle styles});

  $PolygonStyleCopyWith<$Res> get styles;
}

/// @nodoc
class _$ProfilePicCopyWithImpl<$Res, $Val extends ProfilePic>
    implements $ProfilePicCopyWith<$Res> {
  _$ProfilePicCopyWithImpl(this._value, this._then);

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
              as NetworkImageURL?,
      choosedPolygon: freezed == choosedPolygon
          ? _value.choosedPolygon
          : choosedPolygon // ignore: cast_nullable_to_non_nullable
              as Polygons?,
      styles: null == styles
          ? _value.styles
          : styles // ignore: cast_nullable_to_non_nullable
              as PolygonStyle,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolygonStyleCopyWith<$Res> get styles {
    return $PolygonStyleCopyWith<$Res>(_value.styles, (value) {
      return _then(_value.copyWith(styles: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfilePicCopyWith<$Res>
    implements $ProfilePicCopyWith<$Res> {
  factory _$$_ProfilePicCopyWith(
          _$_ProfilePic value, $Res Function(_$_ProfilePic) then) =
      __$$_ProfilePicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NetworkImageURL? imageUrl,
      Polygons? choosedPolygon,
      PolygonStyle styles});

  @override
  $PolygonStyleCopyWith<$Res> get styles;
}

/// @nodoc
class __$$_ProfilePicCopyWithImpl<$Res>
    extends _$ProfilePicCopyWithImpl<$Res, _$_ProfilePic>
    implements _$$_ProfilePicCopyWith<$Res> {
  __$$_ProfilePicCopyWithImpl(
      _$_ProfilePic _value, $Res Function(_$_ProfilePic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? choosedPolygon = freezed,
    Object? styles = null,
  }) {
    return _then(_$_ProfilePic(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as NetworkImageURL?,
      choosedPolygon: freezed == choosedPolygon
          ? _value.choosedPolygon
          : choosedPolygon // ignore: cast_nullable_to_non_nullable
              as Polygons?,
      styles: null == styles
          ? _value.styles
          : styles // ignore: cast_nullable_to_non_nullable
              as PolygonStyle,
    ));
  }
}

/// @nodoc

class _$_ProfilePic implements _ProfilePic {
  _$_ProfilePic(
      {required this.imageUrl,
      required this.choosedPolygon,
      required this.styles});

  @override
  final NetworkImageURL? imageUrl;
  @override
  final Polygons? choosedPolygon;
  @override
  final PolygonStyle styles;

  @override
  String toString() {
    return 'ProfilePic(imageUrl: $imageUrl, choosedPolygon: $choosedPolygon, styles: $styles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePic &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.choosedPolygon, choosedPolygon) ||
                other.choosedPolygon == choosedPolygon) &&
            (identical(other.styles, styles) || other.styles == styles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, imageUrl, choosedPolygon, styles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfilePicCopyWith<_$_ProfilePic> get copyWith =>
      __$$_ProfilePicCopyWithImpl<_$_ProfilePic>(this, _$identity);
}

abstract class _ProfilePic implements ProfilePic {
  factory _ProfilePic(
      {required final NetworkImageURL? imageUrl,
      required final Polygons? choosedPolygon,
      required final PolygonStyle styles}) = _$_ProfilePic;

  @override
  NetworkImageURL? get imageUrl;
  @override
  Polygons? get choosedPolygon;
  @override
  PolygonStyle get styles;
  @override
  @JsonKey(ignore: true)
  _$$_ProfilePicCopyWith<_$_ProfilePic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PolygonStyle {
  TrianglePPStyle get trianglePPStyle => throw _privateConstructorUsedError;
  PentagonPPStyle get pentagonPPStyle => throw _privateConstructorUsedError;
  HeptagonPPStyle get heptagonPPStyle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PolygonStyleCopyWith<PolygonStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolygonStyleCopyWith<$Res> {
  factory $PolygonStyleCopyWith(
          PolygonStyle value, $Res Function(PolygonStyle) then) =
      _$PolygonStyleCopyWithImpl<$Res, PolygonStyle>;
  @useResult
  $Res call(
      {TrianglePPStyle trianglePPStyle,
      PentagonPPStyle pentagonPPStyle,
      HeptagonPPStyle heptagonPPStyle});

  $TrianglePPStyleCopyWith<$Res> get trianglePPStyle;
  $PentagonPPStyleCopyWith<$Res> get pentagonPPStyle;
  $HeptagonPPStyleCopyWith<$Res> get heptagonPPStyle;
}

/// @nodoc
class _$PolygonStyleCopyWithImpl<$Res, $Val extends PolygonStyle>
    implements $PolygonStyleCopyWith<$Res> {
  _$PolygonStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trianglePPStyle = null,
    Object? pentagonPPStyle = null,
    Object? heptagonPPStyle = null,
  }) {
    return _then(_value.copyWith(
      trianglePPStyle: null == trianglePPStyle
          ? _value.trianglePPStyle
          : trianglePPStyle // ignore: cast_nullable_to_non_nullable
              as TrianglePPStyle,
      pentagonPPStyle: null == pentagonPPStyle
          ? _value.pentagonPPStyle
          : pentagonPPStyle // ignore: cast_nullable_to_non_nullable
              as PentagonPPStyle,
      heptagonPPStyle: null == heptagonPPStyle
          ? _value.heptagonPPStyle
          : heptagonPPStyle // ignore: cast_nullable_to_non_nullable
              as HeptagonPPStyle,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrianglePPStyleCopyWith<$Res> get trianglePPStyle {
    return $TrianglePPStyleCopyWith<$Res>(_value.trianglePPStyle, (value) {
      return _then(_value.copyWith(trianglePPStyle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PentagonPPStyleCopyWith<$Res> get pentagonPPStyle {
    return $PentagonPPStyleCopyWith<$Res>(_value.pentagonPPStyle, (value) {
      return _then(_value.copyWith(pentagonPPStyle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HeptagonPPStyleCopyWith<$Res> get heptagonPPStyle {
    return $HeptagonPPStyleCopyWith<$Res>(_value.heptagonPPStyle, (value) {
      return _then(_value.copyWith(heptagonPPStyle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PolygonStyleCopyWith<$Res>
    implements $PolygonStyleCopyWith<$Res> {
  factory _$$_PolygonStyleCopyWith(
          _$_PolygonStyle value, $Res Function(_$_PolygonStyle) then) =
      __$$_PolygonStyleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrianglePPStyle trianglePPStyle,
      PentagonPPStyle pentagonPPStyle,
      HeptagonPPStyle heptagonPPStyle});

  @override
  $TrianglePPStyleCopyWith<$Res> get trianglePPStyle;
  @override
  $PentagonPPStyleCopyWith<$Res> get pentagonPPStyle;
  @override
  $HeptagonPPStyleCopyWith<$Res> get heptagonPPStyle;
}

/// @nodoc
class __$$_PolygonStyleCopyWithImpl<$Res>
    extends _$PolygonStyleCopyWithImpl<$Res, _$_PolygonStyle>
    implements _$$_PolygonStyleCopyWith<$Res> {
  __$$_PolygonStyleCopyWithImpl(
      _$_PolygonStyle _value, $Res Function(_$_PolygonStyle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trianglePPStyle = null,
    Object? pentagonPPStyle = null,
    Object? heptagonPPStyle = null,
  }) {
    return _then(_$_PolygonStyle(
      trianglePPStyle: null == trianglePPStyle
          ? _value.trianglePPStyle
          : trianglePPStyle // ignore: cast_nullable_to_non_nullable
              as TrianglePPStyle,
      pentagonPPStyle: null == pentagonPPStyle
          ? _value.pentagonPPStyle
          : pentagonPPStyle // ignore: cast_nullable_to_non_nullable
              as PentagonPPStyle,
      heptagonPPStyle: null == heptagonPPStyle
          ? _value.heptagonPPStyle
          : heptagonPPStyle // ignore: cast_nullable_to_non_nullable
              as HeptagonPPStyle,
    ));
  }
}

/// @nodoc

class _$_PolygonStyle implements _PolygonStyle {
  const _$_PolygonStyle(
      {required this.trianglePPStyle,
      required this.pentagonPPStyle,
      required this.heptagonPPStyle});

  @override
  final TrianglePPStyle trianglePPStyle;
  @override
  final PentagonPPStyle pentagonPPStyle;
  @override
  final HeptagonPPStyle heptagonPPStyle;

  @override
  String toString() {
    return 'PolygonStyle(trianglePPStyle: $trianglePPStyle, pentagonPPStyle: $pentagonPPStyle, heptagonPPStyle: $heptagonPPStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PolygonStyle &&
            (identical(other.trianglePPStyle, trianglePPStyle) ||
                other.trianglePPStyle == trianglePPStyle) &&
            (identical(other.pentagonPPStyle, pentagonPPStyle) ||
                other.pentagonPPStyle == pentagonPPStyle) &&
            (identical(other.heptagonPPStyle, heptagonPPStyle) ||
                other.heptagonPPStyle == heptagonPPStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trianglePPStyle, pentagonPPStyle, heptagonPPStyle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PolygonStyleCopyWith<_$_PolygonStyle> get copyWith =>
      __$$_PolygonStyleCopyWithImpl<_$_PolygonStyle>(this, _$identity);
}

abstract class _PolygonStyle implements PolygonStyle {
  const factory _PolygonStyle(
      {required final TrianglePPStyle trianglePPStyle,
      required final PentagonPPStyle pentagonPPStyle,
      required final HeptagonPPStyle heptagonPPStyle}) = _$_PolygonStyle;

  @override
  TrianglePPStyle get trianglePPStyle;
  @override
  PentagonPPStyle get pentagonPPStyle;
  @override
  HeptagonPPStyle get heptagonPPStyle;
  @override
  @JsonKey(ignore: true)
  _$$_PolygonStyleCopyWith<_$_PolygonStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrianglePPStyle {
  double get radius => throw _privateConstructorUsedError;
  List<VOColor> get colors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrianglePPStyleCopyWith<TrianglePPStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrianglePPStyleCopyWith<$Res> {
  factory $TrianglePPStyleCopyWith(
          TrianglePPStyle value, $Res Function(TrianglePPStyle) then) =
      _$TrianglePPStyleCopyWithImpl<$Res, TrianglePPStyle>;
  @useResult
  $Res call({double radius, List<VOColor> colors});
}

/// @nodoc
class _$TrianglePPStyleCopyWithImpl<$Res, $Val extends TrianglePPStyle>
    implements $TrianglePPStyleCopyWith<$Res> {
  _$TrianglePPStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radius = null,
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<VOColor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrianglePPStyleCopyWith<$Res>
    implements $TrianglePPStyleCopyWith<$Res> {
  factory _$$_TrianglePPStyleCopyWith(
          _$_TrianglePPStyle value, $Res Function(_$_TrianglePPStyle) then) =
      __$$_TrianglePPStyleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double radius, List<VOColor> colors});
}

/// @nodoc
class __$$_TrianglePPStyleCopyWithImpl<$Res>
    extends _$TrianglePPStyleCopyWithImpl<$Res, _$_TrianglePPStyle>
    implements _$$_TrianglePPStyleCopyWith<$Res> {
  __$$_TrianglePPStyleCopyWithImpl(
      _$_TrianglePPStyle _value, $Res Function(_$_TrianglePPStyle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radius = null,
    Object? colors = null,
  }) {
    return _then(_$_TrianglePPStyle(
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<VOColor>,
    ));
  }
}

/// @nodoc

class _$_TrianglePPStyle extends _TrianglePPStyle {
  _$_TrianglePPStyle(
      {required this.radius, required final List<VOColor> colors})
      : _colors = colors,
        super._();

  @override
  final double radius;
  final List<VOColor> _colors;
  @override
  List<VOColor> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'TrianglePPStyle(radius: $radius, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrianglePPStyle &&
            (identical(other.radius, radius) || other.radius == radius) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, radius, const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrianglePPStyleCopyWith<_$_TrianglePPStyle> get copyWith =>
      __$$_TrianglePPStyleCopyWithImpl<_$_TrianglePPStyle>(this, _$identity);
}

abstract class _TrianglePPStyle extends TrianglePPStyle {
  factory _TrianglePPStyle(
      {required final double radius,
      required final List<VOColor> colors}) = _$_TrianglePPStyle;
  _TrianglePPStyle._() : super._();

  @override
  double get radius;
  @override
  List<VOColor> get colors;
  @override
  @JsonKey(ignore: true)
  _$$_TrianglePPStyleCopyWith<_$_TrianglePPStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PentagonPPStyle {
  VOAlignment get beginXY => throw _privateConstructorUsedError;
  VOAlignment get endXY => throw _privateConstructorUsedError;
  List<VOColor> get colors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PentagonPPStyleCopyWith<PentagonPPStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PentagonPPStyleCopyWith<$Res> {
  factory $PentagonPPStyleCopyWith(
          PentagonPPStyle value, $Res Function(PentagonPPStyle) then) =
      _$PentagonPPStyleCopyWithImpl<$Res, PentagonPPStyle>;
  @useResult
  $Res call({VOAlignment beginXY, VOAlignment endXY, List<VOColor> colors});
}

/// @nodoc
class _$PentagonPPStyleCopyWithImpl<$Res, $Val extends PentagonPPStyle>
    implements $PentagonPPStyleCopyWith<$Res> {
  _$PentagonPPStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginXY = null,
    Object? endXY = null,
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      beginXY: null == beginXY
          ? _value.beginXY
          : beginXY // ignore: cast_nullable_to_non_nullable
              as VOAlignment,
      endXY: null == endXY
          ? _value.endXY
          : endXY // ignore: cast_nullable_to_non_nullable
              as VOAlignment,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<VOColor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PentagonPPStyleCopyWith<$Res>
    implements $PentagonPPStyleCopyWith<$Res> {
  factory _$$_PentagonPPStyleCopyWith(
          _$_PentagonPPStyle value, $Res Function(_$_PentagonPPStyle) then) =
      __$$_PentagonPPStyleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VOAlignment beginXY, VOAlignment endXY, List<VOColor> colors});
}

/// @nodoc
class __$$_PentagonPPStyleCopyWithImpl<$Res>
    extends _$PentagonPPStyleCopyWithImpl<$Res, _$_PentagonPPStyle>
    implements _$$_PentagonPPStyleCopyWith<$Res> {
  __$$_PentagonPPStyleCopyWithImpl(
      _$_PentagonPPStyle _value, $Res Function(_$_PentagonPPStyle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginXY = null,
    Object? endXY = null,
    Object? colors = null,
  }) {
    return _then(_$_PentagonPPStyle(
      beginXY: null == beginXY
          ? _value.beginXY
          : beginXY // ignore: cast_nullable_to_non_nullable
              as VOAlignment,
      endXY: null == endXY
          ? _value.endXY
          : endXY // ignore: cast_nullable_to_non_nullable
              as VOAlignment,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<VOColor>,
    ));
  }
}

/// @nodoc

class _$_PentagonPPStyle extends _PentagonPPStyle {
  _$_PentagonPPStyle(
      {required this.beginXY,
      required this.endXY,
      required final List<VOColor> colors})
      : _colors = colors,
        super._();

  @override
  final VOAlignment beginXY;
  @override
  final VOAlignment endXY;
  final List<VOColor> _colors;
  @override
  List<VOColor> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'PentagonPPStyle(beginXY: $beginXY, endXY: $endXY, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PentagonPPStyle &&
            (identical(other.beginXY, beginXY) || other.beginXY == beginXY) &&
            (identical(other.endXY, endXY) || other.endXY == endXY) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, beginXY, endXY,
      const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PentagonPPStyleCopyWith<_$_PentagonPPStyle> get copyWith =>
      __$$_PentagonPPStyleCopyWithImpl<_$_PentagonPPStyle>(this, _$identity);
}

abstract class _PentagonPPStyle extends PentagonPPStyle {
  factory _PentagonPPStyle(
      {required final VOAlignment beginXY,
      required final VOAlignment endXY,
      required final List<VOColor> colors}) = _$_PentagonPPStyle;
  _PentagonPPStyle._() : super._();

  @override
  VOAlignment get beginXY;
  @override
  VOAlignment get endXY;
  @override
  List<VOColor> get colors;
  @override
  @JsonKey(ignore: true)
  _$$_PentagonPPStyleCopyWith<_$_PentagonPPStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HeptagonPPStyle {
  VOAlignment get epicenter => throw _privateConstructorUsedError;
  double get startAngle => throw _privateConstructorUsedError;
  double get endAngle => throw _privateConstructorUsedError;
  List<VOColor> get colors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeptagonPPStyleCopyWith<HeptagonPPStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeptagonPPStyleCopyWith<$Res> {
  factory $HeptagonPPStyleCopyWith(
          HeptagonPPStyle value, $Res Function(HeptagonPPStyle) then) =
      _$HeptagonPPStyleCopyWithImpl<$Res, HeptagonPPStyle>;
  @useResult
  $Res call(
      {VOAlignment epicenter,
      double startAngle,
      double endAngle,
      List<VOColor> colors});
}

/// @nodoc
class _$HeptagonPPStyleCopyWithImpl<$Res, $Val extends HeptagonPPStyle>
    implements $HeptagonPPStyleCopyWith<$Res> {
  _$HeptagonPPStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epicenter = null,
    Object? startAngle = null,
    Object? endAngle = null,
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      epicenter: null == epicenter
          ? _value.epicenter
          : epicenter // ignore: cast_nullable_to_non_nullable
              as VOAlignment,
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
              as List<VOColor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HeptagonPPStyleCopyWith<$Res>
    implements $HeptagonPPStyleCopyWith<$Res> {
  factory _$$_HeptagonPPStyleCopyWith(
          _$_HeptagonPPStyle value, $Res Function(_$_HeptagonPPStyle) then) =
      __$$_HeptagonPPStyleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VOAlignment epicenter,
      double startAngle,
      double endAngle,
      List<VOColor> colors});
}

/// @nodoc
class __$$_HeptagonPPStyleCopyWithImpl<$Res>
    extends _$HeptagonPPStyleCopyWithImpl<$Res, _$_HeptagonPPStyle>
    implements _$$_HeptagonPPStyleCopyWith<$Res> {
  __$$_HeptagonPPStyleCopyWithImpl(
      _$_HeptagonPPStyle _value, $Res Function(_$_HeptagonPPStyle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epicenter = null,
    Object? startAngle = null,
    Object? endAngle = null,
    Object? colors = null,
  }) {
    return _then(_$_HeptagonPPStyle(
      epicenter: null == epicenter
          ? _value.epicenter
          : epicenter // ignore: cast_nullable_to_non_nullable
              as VOAlignment,
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
              as List<VOColor>,
    ));
  }
}

/// @nodoc

class _$_HeptagonPPStyle extends _HeptagonPPStyle {
  _$_HeptagonPPStyle(
      {required this.epicenter,
      required this.startAngle,
      required this.endAngle,
      required final List<VOColor> colors})
      : _colors = colors,
        super._();

  @override
  final VOAlignment epicenter;
  @override
  final double startAngle;
  @override
  final double endAngle;
  final List<VOColor> _colors;
  @override
  List<VOColor> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'HeptagonPPStyle(epicenter: $epicenter, startAngle: $startAngle, endAngle: $endAngle, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeptagonPPStyle &&
            (identical(other.epicenter, epicenter) ||
                other.epicenter == epicenter) &&
            (identical(other.startAngle, startAngle) ||
                other.startAngle == startAngle) &&
            (identical(other.endAngle, endAngle) ||
                other.endAngle == endAngle) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, epicenter, startAngle, endAngle,
      const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeptagonPPStyleCopyWith<_$_HeptagonPPStyle> get copyWith =>
      __$$_HeptagonPPStyleCopyWithImpl<_$_HeptagonPPStyle>(this, _$identity);
}

abstract class _HeptagonPPStyle extends HeptagonPPStyle {
  factory _HeptagonPPStyle(
      {required final VOAlignment epicenter,
      required final double startAngle,
      required final double endAngle,
      required final List<VOColor> colors}) = _$_HeptagonPPStyle;
  _HeptagonPPStyle._() : super._();

  @override
  VOAlignment get epicenter;
  @override
  double get startAngle;
  @override
  double get endAngle;
  @override
  List<VOColor> get colors;
  @override
  @JsonKey(ignore: true)
  _$$_HeptagonPPStyleCopyWith<_$_HeptagonPPStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserFilter {
  UserName? get userName => throw _privateConstructorUsedError;
  UserID? get userID => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  int? get reputation => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  int? get postCount => throw _privateConstructorUsedError;
  int? get followersCount => throw _privateConstructorUsedError;
  int? get followingCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFilterCopyWith<UserFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFilterCopyWith<$Res> {
  factory $UserFilterCopyWith(
          UserFilter value, $Res Function(UserFilter) then) =
      _$UserFilterCopyWithImpl<$Res, UserFilter>;
  @useResult
  $Res call(
      {UserName? userName,
      UserID? userID,
      bool? isVerified,
      int? reputation,
      int? points,
      int? postCount,
      int? followersCount,
      int? followingCount});
}

/// @nodoc
class _$UserFilterCopyWithImpl<$Res, $Val extends UserFilter>
    implements $UserFilterCopyWith<$Res> {
  _$UserFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userID = freezed,
    Object? isVerified = freezed,
    Object? reputation = freezed,
    Object? points = freezed,
    Object? postCount = freezed,
    Object? followersCount = freezed,
    Object? followingCount = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName?,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      reputation: freezed == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      postCount: freezed == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingCount: freezed == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserFilterCopyWith<$Res>
    implements $UserFilterCopyWith<$Res> {
  factory _$$_UserFilterCopyWith(
          _$_UserFilter value, $Res Function(_$_UserFilter) then) =
      __$$_UserFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserName? userName,
      UserID? userID,
      bool? isVerified,
      int? reputation,
      int? points,
      int? postCount,
      int? followersCount,
      int? followingCount});
}

/// @nodoc
class __$$_UserFilterCopyWithImpl<$Res>
    extends _$UserFilterCopyWithImpl<$Res, _$_UserFilter>
    implements _$$_UserFilterCopyWith<$Res> {
  __$$_UserFilterCopyWithImpl(
      _$_UserFilter _value, $Res Function(_$_UserFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userID = freezed,
    Object? isVerified = freezed,
    Object? reputation = freezed,
    Object? points = freezed,
    Object? postCount = freezed,
    Object? followersCount = freezed,
    Object? followingCount = freezed,
  }) {
    return _then(_$_UserFilter(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName?,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      reputation: freezed == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      postCount: freezed == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingCount: freezed == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_UserFilter implements _UserFilter {
  const _$_UserFilter(
      {this.userName,
      this.userID,
      this.isVerified,
      this.reputation,
      this.points,
      this.postCount,
      this.followersCount,
      this.followingCount});

  @override
  final UserName? userName;
  @override
  final UserID? userID;
  @override
  final bool? isVerified;
  @override
  final int? reputation;
  @override
  final int? points;
  @override
  final int? postCount;
  @override
  final int? followersCount;
  @override
  final int? followingCount;

  @override
  String toString() {
    return 'UserFilter(userName: $userName, userID: $userID, isVerified: $isVerified, reputation: $reputation, points: $points, postCount: $postCount, followersCount: $followersCount, followingCount: $followingCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFilter &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, userID, isVerified,
      reputation, points, postCount, followersCount, followingCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFilterCopyWith<_$_UserFilter> get copyWith =>
      __$$_UserFilterCopyWithImpl<_$_UserFilter>(this, _$identity);
}

abstract class _UserFilter implements UserFilter {
  const factory _UserFilter(
      {final UserName? userName,
      final UserID? userID,
      final bool? isVerified,
      final int? reputation,
      final int? points,
      final int? postCount,
      final int? followersCount,
      final int? followingCount}) = _$_UserFilter;

  @override
  UserName? get userName;
  @override
  UserID? get userID;
  @override
  bool? get isVerified;
  @override
  int? get reputation;
  @override
  int? get points;
  @override
  int? get postCount;
  @override
  int? get followersCount;
  @override
  int? get followingCount;
  @override
  @JsonKey(ignore: true)
  _$$_UserFilterCopyWith<_$_UserFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserPrefs {
  int? get points => throw _privateConstructorUsedError;
  List<String>? get achievements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPrefsCopyWith<UserPrefs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPrefsCopyWith<$Res> {
  factory $UserPrefsCopyWith(UserPrefs value, $Res Function(UserPrefs) then) =
      _$UserPrefsCopyWithImpl<$Res, UserPrefs>;
  @useResult
  $Res call({int? points, List<String>? achievements});
}

/// @nodoc
class _$UserPrefsCopyWithImpl<$Res, $Val extends UserPrefs>
    implements $UserPrefsCopyWith<$Res> {
  _$UserPrefsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = freezed,
    Object? achievements = freezed,
  }) {
    return _then(_value.copyWith(
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      achievements: freezed == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPrefsCopyWith<$Res> implements $UserPrefsCopyWith<$Res> {
  factory _$$_UserPrefsCopyWith(
          _$_UserPrefs value, $Res Function(_$_UserPrefs) then) =
      __$$_UserPrefsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? points, List<String>? achievements});
}

/// @nodoc
class __$$_UserPrefsCopyWithImpl<$Res>
    extends _$UserPrefsCopyWithImpl<$Res, _$_UserPrefs>
    implements _$$_UserPrefsCopyWith<$Res> {
  __$$_UserPrefsCopyWithImpl(
      _$_UserPrefs _value, $Res Function(_$_UserPrefs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = freezed,
    Object? achievements = freezed,
  }) {
    return _then(_$_UserPrefs(
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      achievements: freezed == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_UserPrefs implements _UserPrefs {
  const _$_UserPrefs(
      {required this.points, required final List<String>? achievements})
      : _achievements = achievements;

  @override
  final int? points;
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
  String toString() {
    return 'UserPrefs(points: $points, achievements: $achievements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPrefs &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, points, const DeepCollectionEquality().hash(_achievements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPrefsCopyWith<_$_UserPrefs> get copyWith =>
      __$$_UserPrefsCopyWithImpl<_$_UserPrefs>(this, _$identity);
}

abstract class _UserPrefs implements UserPrefs {
  const factory _UserPrefs(
      {required final int? points,
      required final List<String>? achievements}) = _$_UserPrefs;

  @override
  int? get points;
  @override
  List<String>? get achievements;
  @override
  @JsonKey(ignore: true)
  _$$_UserPrefsCopyWith<_$_UserPrefs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserForm {
  UserName? get userName => throw _privateConstructorUsedError;
  NetworkImageURL? get avatarImageUrl => throw _privateConstructorUsedError;
  NetworkImageURL? get backgroundImageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFormCopyWith<UserForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormCopyWith<$Res> {
  factory $UserFormCopyWith(UserForm value, $Res Function(UserForm) then) =
      _$UserFormCopyWithImpl<$Res, UserForm>;
  @useResult
  $Res call(
      {UserName? userName,
      NetworkImageURL? avatarImageUrl,
      NetworkImageURL? backgroundImageUrl});
}

/// @nodoc
class _$UserFormCopyWithImpl<$Res, $Val extends UserForm>
    implements $UserFormCopyWith<$Res> {
  _$UserFormCopyWithImpl(this._value, this._then);

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
              as UserName?,
      avatarImageUrl: freezed == avatarImageUrl
          ? _value.avatarImageUrl
          : avatarImageUrl // ignore: cast_nullable_to_non_nullable
              as NetworkImageURL?,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as NetworkImageURL?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserFormCopyWith<$Res> implements $UserFormCopyWith<$Res> {
  factory _$$_UserFormCopyWith(
          _$_UserForm value, $Res Function(_$_UserForm) then) =
      __$$_UserFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserName? userName,
      NetworkImageURL? avatarImageUrl,
      NetworkImageURL? backgroundImageUrl});
}

/// @nodoc
class __$$_UserFormCopyWithImpl<$Res>
    extends _$UserFormCopyWithImpl<$Res, _$_UserForm>
    implements _$$_UserFormCopyWith<$Res> {
  __$$_UserFormCopyWithImpl(
      _$_UserForm _value, $Res Function(_$_UserForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? avatarImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
  }) {
    return _then(_$_UserForm(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName?,
      avatarImageUrl: freezed == avatarImageUrl
          ? _value.avatarImageUrl
          : avatarImageUrl // ignore: cast_nullable_to_non_nullable
              as NetworkImageURL?,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as NetworkImageURL?,
    ));
  }
}

/// @nodoc

class _$_UserForm implements _UserForm {
  const _$_UserForm(
      {this.userName, this.avatarImageUrl, this.backgroundImageUrl});

  @override
  final UserName? userName;
  @override
  final NetworkImageURL? avatarImageUrl;
  @override
  final NetworkImageURL? backgroundImageUrl;

  @override
  String toString() {
    return 'UserForm(userName: $userName, avatarImageUrl: $avatarImageUrl, backgroundImageUrl: $backgroundImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserForm &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.avatarImageUrl, avatarImageUrl) ||
                other.avatarImageUrl == avatarImageUrl) &&
            (identical(other.backgroundImageUrl, backgroundImageUrl) ||
                other.backgroundImageUrl == backgroundImageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, avatarImageUrl, backgroundImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFormCopyWith<_$_UserForm> get copyWith =>
      __$$_UserFormCopyWithImpl<_$_UserForm>(this, _$identity);
}

abstract class _UserForm implements UserForm {
  const factory _UserForm(
      {final UserName? userName,
      final NetworkImageURL? avatarImageUrl,
      final NetworkImageURL? backgroundImageUrl}) = _$_UserForm;

  @override
  UserName? get userName;
  @override
  NetworkImageURL? get avatarImageUrl;
  @override
  NetworkImageURL? get backgroundImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserFormCopyWith<_$_UserForm> get copyWith =>
      throw _privateConstructorUsedError;
}
