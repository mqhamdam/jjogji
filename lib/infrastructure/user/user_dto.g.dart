// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      uuid: json['userUUID'] as String,
      userName: json['userName'] as String,
      userID: json['userID'] as String?,
      verificationStatus:
          $enumDecode(_$VerificationStatusEnumMap, json['verificationStatus']),
      postCount: json['postCount'] as int,
      reputation: json['reputation'] as int,
      followersCount: json['followersCount'] as int,
      userPrefs: json['userPrefs'] == null
          ? null
          : UserPrefsDto.fromJson(json['userPrefs'] as Map<String, dynamic>),
      followingCount: json['followingCount'] as int,
      profilePic:
          ProfilePicDto.fromJson(json['profilePic'] as Map<String, dynamic>),
      linkedContacts: (json['linkedContacts'] as List<dynamic>)
          .map((e) => LinkedContactDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      avatarImageUrl: json['avatarImageUrl'] as String?,
      backgroundImageUrl: json['backgroundImageUrl'] as String?,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'userUUID': instance.uuid,
      'userName': instance.userName,
      'userID': instance.userID,
      'verificationStatus':
          _$VerificationStatusEnumMap[instance.verificationStatus]!,
      'postCount': instance.postCount,
      'reputation': instance.reputation,
      'followersCount': instance.followersCount,
      'userPrefs': instance.userPrefs,
      'followingCount': instance.followingCount,
      'profilePic': instance.profilePic,
      'linkedContacts': instance.linkedContacts,
      'avatarImageUrl': instance.avatarImageUrl,
      'backgroundImageUrl': instance.backgroundImageUrl,
    };

const _$VerificationStatusEnumMap = {
  VerificationStatus.verified: 'verified',
  VerificationStatus.unverified: 'unverified',
  VerificationStatus.pending: 'pending',
  VerificationStatus.none: 'none',
};

_$_UserRelation _$$_UserRelationFromJson(Map<String, dynamic> json) =>
    _$_UserRelation(
      follow: json['follow'] as bool,
      follower: json['follower'] as bool,
      block: json['block'] as bool,
      bestie: json['bestie'] as bool,
    );

Map<String, dynamic> _$$_UserRelationToJson(_$_UserRelation instance) =>
    <String, dynamic>{
      'follow': instance.follow,
      'follower': instance.follower,
      'block': instance.block,
      'bestie': instance.bestie,
    };

_$_LinkedContactDto _$$_LinkedContactDtoFromJson(Map<String, dynamic> json) =>
    _$_LinkedContactDto(
      type: $enumDecode(_$LinkedServiceEnumMap, json['type']),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_LinkedContactDtoToJson(_$_LinkedContactDto instance) =>
    <String, dynamic>{
      'type': _$LinkedServiceEnumMap[instance.type]!,
      'url': instance.url,
    };

const _$LinkedServiceEnumMap = {
  LinkedService.Github: 'Github',
  LinkedService.Facebook: 'Facebook',
  LinkedService.Twitter: 'Twitter',
  LinkedService.Instagram: 'Instagram',
  LinkedService.TikTok: 'TikTok',
  LinkedService.LinkedIn: 'LinkedIn',
  LinkedService.YouTube: 'YouTube',
  LinkedService.Snapchat: 'Snapchat',
  LinkedService.Pinterest: 'Pinterest',
  LinkedService.Telegram: 'Telegram',
  LinkedService.KakaoTalk: 'KakaoTalk',
  LinkedService.Medium: 'Medium',
  LinkedService.Skype: 'Skype',
  LinkedService.VK: 'VK',
  LinkedService.Steam: 'Steam',
  LinkedService.Reddit: 'Reddit',
  LinkedService.Odnoklassniki: 'Odnoklassniki',
  LinkedService.Link: 'Link',
};

_$_ProfilePicDto _$$_ProfilePicDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfilePicDto(
      imageUrl: json['imageUrl'] as String?,
      choosedPolygon:
          $enumDecodeNullable(_$PolygonsEnumMap, json['choosedPolygon']),
      styles: PolygonStyleDto.fromJson(json['styles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfilePicDtoToJson(_$_ProfilePicDto instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'choosedPolygon': _$PolygonsEnumMap[instance.choosedPolygon],
      'styles': instance.styles,
    };

const _$PolygonsEnumMap = {
  Polygons.triangle: 'triangle',
  Polygons.pentagon: 'pentagon',
  Polygons.heptagon: 'heptagon',
};

_$_PolygonStyleDto _$$_PolygonStyleDtoFromJson(Map<String, dynamic> json) =>
    _$_PolygonStyleDto(
      trianglePPStyle: json['trianglePPStyle'] == null
          ? null
          : TrianglePPStyleDto.fromJson(
              json['trianglePPStyle'] as Map<String, dynamic>),
      pentagonPPStyle: json['pentagonPPStyle'] == null
          ? null
          : PentagonPPStyleDto.fromJson(
              json['pentagonPPStyle'] as Map<String, dynamic>),
      heptagonPPStyle: json['heptagonPPStyle'] == null
          ? null
          : HeptagonPPStyleDto.fromJson(
              json['heptagonPPStyle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PolygonStyleDtoToJson(_$_PolygonStyleDto instance) =>
    <String, dynamic>{
      'trianglePPStyle': instance.trianglePPStyle,
      'pentagonPPStyle': instance.pentagonPPStyle,
      'heptagonPPStyle': instance.heptagonPPStyle,
    };

_$_TrianglePPStyleDto _$$_TrianglePPStyleDtoFromJson(
        Map<String, dynamic> json) =>
    _$_TrianglePPStyleDto(
      radialRadius: (json['radialRadius'] as num).toDouble(),
      colors: (json['colors'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_TrianglePPStyleDtoToJson(
        _$_TrianglePPStyleDto instance) =>
    <String, dynamic>{
      'radialRadius': instance.radialRadius,
      'colors': instance.colors,
    };

_$_PentagonPPStyleDto _$$_PentagonPPStyleDtoFromJson(
        Map<String, dynamic> json) =>
    _$_PentagonPPStyleDto(
      beginX: (json['beginX'] as num).toDouble(),
      beginY: (json['beginY'] as num).toDouble(),
      endX: (json['endX'] as num).toDouble(),
      endY: (json['endY'] as num).toDouble(),
      colors: (json['colors'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_PentagonPPStyleDtoToJson(
        _$_PentagonPPStyleDto instance) =>
    <String, dynamic>{
      'beginX': instance.beginX,
      'beginY': instance.beginY,
      'endX': instance.endX,
      'endY': instance.endY,
      'colors': instance.colors,
    };

_$_HeptagonPPStyleDto _$$_HeptagonPPStyleDtoFromJson(
        Map<String, dynamic> json) =>
    _$_HeptagonPPStyleDto(
      epicenterX: (json['epicenterX'] as num).toDouble(),
      epicenterY: (json['epicenterY'] as num).toDouble(),
      startAngle: (json['startAngle'] as num).toDouble(),
      endAngle: (json['endAngle'] as num).toDouble(),
      colors: (json['colors'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_HeptagonPPStyleDtoToJson(
        _$_HeptagonPPStyleDto instance) =>
    <String, dynamic>{
      'epicenterX': instance.epicenterX,
      'epicenterY': instance.epicenterY,
      'startAngle': instance.startAngle,
      'endAngle': instance.endAngle,
      'colors': instance.colors,
    };

_$_UserPrefsDto _$$_UserPrefsDtoFromJson(Map<String, dynamic> json) =>
    _$_UserPrefsDto(
      achievements: (json['achievements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      points: json['points'] as int?,
    );

Map<String, dynamic> _$$_UserPrefsDtoToJson(_$_UserPrefsDto instance) =>
    <String, dynamic>{
      'achievements': instance.achievements,
      'points': instance.points,
    };

_$_UserFormDto _$$_UserFormDtoFromJson(Map<String, dynamic> json) =>
    _$_UserFormDto(
      userName: json['userName'] as String?,
      avatarImageUrl: json['avatarImageUrl'] as String?,
      backgroundImageUrl: json['backgroundImageUrl'] as String?,
    );

Map<String, dynamic> _$$_UserFormDtoToJson(_$_UserFormDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'avatarImageUrl': instance.avatarImageUrl,
      'backgroundImageUrl': instance.backgroundImageUrl,
    };
