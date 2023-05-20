import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/application/enums.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/domain/user/value_objects.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  factory UserDto({
    @JsonKey(name: "userUUID") required String uuid,
    required String userName,
    required String? userID,
    required VerificationStatus verificationStatus,
    required int postCount,
    required int reputation,
    required int followersCount,
    required UserPrefsDto? userPrefs,
    required int followingCount,
    required ProfilePicDto profilePic,
    required List<LinkedContactDto> linkedContacts,
    required String? avatarImageUrl,
    required String? backgroundImageUrl,
  }) = _UserDto;
  UserDto._();

  factory UserDto.fromDomain(User user) => UserDto(
        uuid: user.uuid.getOrCrash(),
        userName: user.userName.getOrCrash(),
        userID: user.userID?.getOrCrash(),
        verificationStatus: user.verificationStatus,
        postCount: user.postCount,
        userPrefs: user.userPrefs != null
            ? UserPrefsDto.fromDomain(user.userPrefs!)
            : null,
        profilePic: ProfilePicDto.fromDomain(user.profilePic),
        linkedContacts: user.linkedContacts
            .map((e) => LinkedContactDto.fromDomain(e))
            .toList(),
        reputation: user.reputation,
        followersCount: user.followersCount,
        followingCount: user.followingCount,
        avatarImageUrl: user.avatarImageUrl?.getOrCrash(),
        backgroundImageUrl: user.backgroundImageUrl?.getOrCrash(),
      );

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

extension UserDtoX on UserDto {
  User toDomain() => User(
        uuid: UUID.fromDB(uuid),
        verificationStatus: verificationStatus,
        userName: UserName(userName),
        userID: userID != null ? UserID(userID!) : null,
        reputation: reputation,
        userPrefs: userPrefs?.toDomain(),
        postCount: postCount,
        profilePic: profilePic.toDomain(),
        linkedContacts: linkedContacts.map((e) => e.toDomain()).toList(),
        followersCount: followersCount,
        followingCount: followingCount,
        avatarImageUrl:
            avatarImageUrl != null ? NetworkImageURL(avatarImageUrl!) : null,
        backgroundImageUrl: backgroundImageUrl != null
            ? NetworkImageURL(backgroundImageUrl!)
            : null,
      );
}

@freezed
class UserRelationDto with _$UserRelationDto {
  factory UserRelationDto({
    required bool follow,
    required bool follower,
    required bool block,
    required bool bestie,
  }) = _UserRelation;

  factory UserRelationDto.fromDomain(UserRelation userRelation) =>
      UserRelationDto(
        follow: userRelation.follow,
        follower: userRelation.follower,
        block: userRelation.block,
        bestie: userRelation.bestie,
      );

  factory UserRelationDto.fromJson(Map<String, dynamic> json) =>
      _$UserRelationDtoFromJson(json);
}

extension UserRelationDtoX on UserRelationDto {
  UserRelation toDomain() => UserRelation(
        follow: follow,
        follower: follower,
        block: block,
        bestie: bestie,
      );
}

@freezed
class LinkedContactDto with _$LinkedContactDto {
  factory LinkedContactDto({
    @JsonEnum() required LinkedService type,
    required String url,
  }) = _LinkedContactDto;

  factory LinkedContactDto.fromDomain(LinkedContact linkedContact) =>
      LinkedContactDto(
        type: linkedContact.type,
        url: linkedContact.url.getOrCrash(),
      );

  factory LinkedContactDto.fromJson(Map<String, dynamic> json) =>
      _$LinkedContactDtoFromJson(json);
}

extension LinkedContactDtoX on LinkedContactDto {
  LinkedContact toDomain() => LinkedContact(
        type: type,
        url: ValidatedURL(url),
      );
}

@freezed
class ProfilePicDto with _$ProfilePicDto {
  factory ProfilePicDto({
    required String? imageUrl,
    @JsonEnum() required Polygons? choosedPolygon,
    required PolygonStyleDto styles,
  }) = _ProfilePicDto;

  factory ProfilePicDto.fromDomain(ProfilePic profilePic) => ProfilePicDto(
        imageUrl: profilePic.imageUrl?.getOrCrash(),
        choosedPolygon: profilePic.choosedPolygon,
        styles: PolygonStyleDto.fromDomain(profilePic.styles),
      );

  factory ProfilePicDto.fromJson(Map<String, dynamic> json) =>
      _$ProfilePicDtoFromJson(json);
}

extension ProfilePicDtoX on ProfilePicDto {
  ProfilePic toDomain() => ProfilePic(
        imageUrl: imageUrl != null ? NetworkImageURL(imageUrl!) : null,
        choosedPolygon: choosedPolygon,
        styles: styles.toDomain(),
      );
}

///////////////////////////////

@freezed
class PolygonStyleDto with _$PolygonStyleDto {
  factory PolygonStyleDto({
    required TrianglePPStyleDto? trianglePPStyle,
    required PentagonPPStyleDto? pentagonPPStyle,
    required HeptagonPPStyleDto? heptagonPPStyle,
  }) = _PolygonStyleDto;

  factory PolygonStyleDto.fromDomain(PolygonStyle polygonStyle) =>
      PolygonStyleDto(
        trianglePPStyle:
            TrianglePPStyleDto.fromDomain(polygonStyle.trianglePPStyle),
        pentagonPPStyle:
            PentagonPPStyleDto.fromDomain(polygonStyle.pentagonPPStyle),
        heptagonPPStyle:
            HeptagonPPStyleDto.fromDomain(polygonStyle.heptagonPPStyle),
      );

  factory PolygonStyleDto.fromJson(Map<String, dynamic> json) =>
      _$PolygonStyleDtoFromJson(json);
}

extension PolygonStyleDtoX on PolygonStyleDto {
  PolygonStyle toDomain() => PolygonStyle(
        trianglePPStyle: trianglePPStyle?.toDomain() ?? TrianglePPStyle.dflt(),
        pentagonPPStyle: pentagonPPStyle?.toDomain() ?? PentagonPPStyle.dflt(),
        heptagonPPStyle: heptagonPPStyle?.toDomain() ?? HeptagonPPStyle.dflt(),
      );
}

@freezed
class TrianglePPStyleDto with _$TrianglePPStyleDto {
  factory TrianglePPStyleDto({
    required double radialRadius,
    required List<int> colors,
  }) = _TrianglePPStyleDto;
  factory TrianglePPStyleDto.fromDomain(TrianglePPStyle trianglePPStyle) =>
      TrianglePPStyleDto(
        radialRadius: trianglePPStyle.radius,
        colors: trianglePPStyle.colors
            .map(
              (e) => e.getOrCrash(),
            )
            .toList(),
      );

  factory TrianglePPStyleDto.fromJson(Map<String, dynamic> json) =>
      _$TrianglePPStyleDtoFromJson(json);
}

extension TrianglePPStyleDtoX on TrianglePPStyleDto {
  TrianglePPStyle toDomain() => TrianglePPStyle(
        radius: radialRadius,
        colors: colors.map((e) => VOColor(e)).toList(),
      );
}

////////////////////////
@freezed
class PentagonPPStyleDto with _$PentagonPPStyleDto {
  factory PentagonPPStyleDto({
    required double beginX,
    required double beginY,
    required double endX,
    required double endY,
    required List<int> colors,
  }) = _PentagonPPStyleDto;

  factory PentagonPPStyleDto.fromDomain(PentagonPPStyle pentagonPPStyle) =>
      PentagonPPStyleDto(
        beginX: pentagonPPStyle.beginXY.value,
        beginY: pentagonPPStyle.beginXY.value2,
        endX: pentagonPPStyle.endXY.value,
        endY: pentagonPPStyle.endXY.value2,
        colors: pentagonPPStyle.colors
            .map(
              (e) => e.getOrCrash(),
            )
            .toList(),
      );
  factory PentagonPPStyleDto.fromJson(Map<String, dynamic> json) =>
      _$PentagonPPStyleDtoFromJson(json);
}

extension PentagonPPStyleDtoX on PentagonPPStyleDto {
  PentagonPPStyle toDomain() => PentagonPPStyle(
        beginXY: VOAlignment(beginX, beginY),
        endXY: VOAlignment(endX, endY),
        colors: colors.map((e) => VOColor(e)).toList(),
      );
}
//////////////////////////
///

@freezed
class HeptagonPPStyleDto with _$HeptagonPPStyleDto {
  factory HeptagonPPStyleDto({
    required double epicenterX,
    required double epicenterY,
    required double startAngle,
    required double endAngle,
    required List<int> colors,
  }) = _HeptagonPPStyleDto;

  factory HeptagonPPStyleDto.fromDomain(HeptagonPPStyle heptagonPPStyle) =>
      HeptagonPPStyleDto(
        epicenterX: heptagonPPStyle.epicenter.value,
        epicenterY: heptagonPPStyle.epicenter.value2,
        startAngle: heptagonPPStyle.startAngle,
        endAngle: heptagonPPStyle.endAngle,
        colors: heptagonPPStyle.colors
            .map(
              (e) => e.getOrCrash(),
            )
            .toList(),
      );

  factory HeptagonPPStyleDto.fromJson(Map<String, dynamic> json) =>
      _$HeptagonPPStyleDtoFromJson(json);
}

extension HeptagonPPStyleDtoX on HeptagonPPStyleDto {
  HeptagonPPStyle toDomain() => HeptagonPPStyle(
        epicenter: VOAlignment(epicenterX, epicenterY),
        startAngle: startAngle,
        endAngle: endAngle,
        colors: colors.map((e) => VOColor(e)).toList(),
      );
}

@freezed
class UserPrefsDto with _$UserPrefsDto {
  const factory UserPrefsDto({
    required List<String>? achievements,
    required int? points,
  }) = _UserPrefsDto;

  factory UserPrefsDto.fromDomain(UserPrefs userPrefs) => UserPrefsDto(
        achievements: userPrefs.achievements,
        points: userPrefs.points,
      );

  factory UserPrefsDto.fromJson(Map<String, dynamic> json) =>
      _$UserPrefsDtoFromJson(json);
}

extension UserPrefsDtoX on UserPrefsDto {
  UserPrefs toDomain() => UserPrefs(
        achievements: achievements,
        points: points,
      );
}

@freezed
class UserFormDto with _$UserFormDto {
  const factory UserFormDto({
    String? userName,
    String? avatarImageUrl,
    String? backgroundImageUrl,
  }) = _UserFormDto;

  factory UserFormDto.fromDomain(UserForm userForm) => UserFormDto(
        userName:
            userForm.userName != null ? userForm.userName!.getOrCrash() : null,
        avatarImageUrl: userForm.avatarImageUrl != null
            ? userForm.avatarImageUrl!.getOrCrash()
            : null,
        backgroundImageUrl: userForm.backgroundImageUrl != null
            ? userForm.backgroundImageUrl!.getOrCrash()
            : null,
      );

  factory UserFormDto.fromJson(Map<String, dynamic> json) =>
      _$UserFormDtoFromJson(json);
}
