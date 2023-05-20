// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/application/enums.dart';
import 'package:jjogji/domain/core/abstract_class.dart';
import 'package:jjogji/domain/core/entity.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/user/value_objects.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';

part 'user.freezed.dart';

@freezed
class User with _$User implements IEntity {
  factory User({
    required UUID uuid, // this field required for Entity classes
    required UserName userName,
    required UserID? userID,
    required int reputation,
    required int postCount,
    required int followersCount,
    required int followingCount,
    required UserPrefs? userPrefs,
    required VerificationStatus verificationStatus,
    required ProfilePic profilePic,
    required List<LinkedContact> linkedContacts,
    required NetworkImageURL? avatarImageUrl,
    required NetworkImageURL? backgroundImageUrl,
  }) = _User;

  factory User.empty() => User(
        uuid: UUID.empty(),
        userName: UserName(""),
        userID: UserID(""),
        verificationStatus: VerificationStatus.none,
        profilePic: ProfilePic.dflt(),
        linkedContacts: [],
        reputation: 0,
        userPrefs: null,
        postCount: 0,
        followersCount: 0,
        followingCount: 0,
        avatarImageUrl: null,
        backgroundImageUrl: null,
      );
}

extension UserX on User {
  UserForm toForm() => UserForm(
        userName: userName,
        avatarImageUrl: profilePic.imageUrl,
        backgroundImageUrl: backgroundImageUrl,
      );
}

@freezed
class UserRelation with _$UserRelation {
  factory UserRelation({
    required bool follow,
    required bool follower,
    required bool block,
    required bool bestie,
  }) = _UserRelation;

  factory UserRelation.dflt() => UserRelation(
        follow: false,
        follower: false,
        block: false,
        bestie: false,
      );
}

@freezed
class LinkedContact with _$LinkedContact {
  factory LinkedContact({
    required LinkedService type,
    required ValidatedURL url,
  }) = _LinkedContact;
  factory LinkedContact.dflt() => LinkedContact(
        type: LinkedService.Telegram,
        url: ValidatedURL(""),
      );
}

@freezed
class ProfilePic with _$ProfilePic {
  factory ProfilePic({
    required NetworkImageURL? imageUrl,
    required Polygons? choosedPolygon,
    required PolygonStyle styles,
  }) = _ProfilePic;

  factory ProfilePic.dflt() => ProfilePic(
        imageUrl: null,
        choosedPolygon: Polygons.heptagon,
        styles: PolygonStyle.dflt(),
      );
}

@freezed
class PolygonStyle with _$PolygonStyle {
  const factory PolygonStyle({
    required TrianglePPStyle trianglePPStyle,
    required PentagonPPStyle pentagonPPStyle,
    required HeptagonPPStyle heptagonPPStyle,
  }) = _PolygonStyle;
  factory PolygonStyle.dflt() => PolygonStyle(
        trianglePPStyle: TrianglePPStyle.dflt(),
        pentagonPPStyle: PentagonPPStyle.dflt(),
        heptagonPPStyle: HeptagonPPStyle.dflt(),
      );
  // TrianglePPStyle trianglePPStyle;
  // PentagonPPStyle pentagonPPStyle;
  // HeptagonPPStyle heptagonPPStyle;
}

@freezed
class TrianglePPStyle with _$TrianglePPStyle {
  final Polygons type = Polygons.triangle;
  factory TrianglePPStyle({
    required double radius,
    required List<VOColor> colors,
  }) = _TrianglePPStyle;

  factory TrianglePPStyle.dflt() => TrianglePPStyle(
        radius: 1.0,
        colors: dColors,
      );

  const TrianglePPStyle._();
}

List<VOColor> dColors = [
  VOColor(Colors.red.value),
  VOColor(Colors.green.value),
  VOColor(Colors.blue.value),
];

@freezed
class PentagonPPStyle with _$PentagonPPStyle {
  final Polygons type = Polygons.pentagon;

  factory PentagonPPStyle({
    required VOAlignment beginXY,
    required VOAlignment endXY,
    required List<VOColor> colors,
  }) = _PentagonPPStyle;

  factory PentagonPPStyle.dflt() => PentagonPPStyle(
        beginXY: const VOAlignment(-1.0, 0),
        endXY: const VOAlignment(1.0, 0.4),
        colors: dColors,
      );
  const PentagonPPStyle._();
}

@freezed
class HeptagonPPStyle with _$HeptagonPPStyle {
  final Polygons type = Polygons.heptagon;

  factory HeptagonPPStyle({
    required VOAlignment epicenter,
    required double startAngle,
    required double endAngle,
    required List<VOColor> colors,
  }) = _HeptagonPPStyle;

  factory HeptagonPPStyle.dflt() => HeptagonPPStyle(
        epicenter: const VOAlignment(0.0, 0.0),
        startAngle: 0,
        endAngle: 1,
        colors: dColors,
      );
  const HeptagonPPStyle._();
}

@freezed
class UserFilter extends AppFilter with _$UserFilter {
  const factory UserFilter({
    UserName? userName,
    UserID? userID,
    bool? isVerified,
    int? reputation,
    int? points,
    int? postCount,
    int? followersCount,
    int? followingCount,
  }) = _UserFilter;
}

extension UserFilterX on UserFilter {
  String toQueryStrings() {
    final List<String> qs = [];
    if (userName != null) {
      qs.add("userName=${userName!.getOrCrash()}");
    }
    if (userID != null) {
      qs.add("userID=${userID!.getOrCrash()}");
    }
    if (isVerified != null) {
      qs.add("isVerified=${isVerified!}");
    }
    if (reputation != null) {
      qs.add("reputation=${reputation!}");
    }
    if (points != null) {
      qs.add("points=${points!}");
    }
    if (postCount != null) {
      qs.add("postCount=${postCount!}");
    }
    if (followersCount != null) {
      qs.add("followersCount=${followersCount!}");
    }
    if (followingCount != null) {
      qs.add("followingCount=${followingCount!}");
    }
    return qs.join("&");
  }
}

@freezed
class UserPrefs with _$UserPrefs {
  const factory UserPrefs({
    required int? points,
    required List<String>? achievements,
  }) = _UserPrefs;

  factory UserPrefs.dflt() => const UserPrefs(
        points: 0,
        achievements: [],
      );
}

@freezed
class UserForm with _$UserForm {
  const factory UserForm({
    UserName? userName,
    NetworkImageURL? avatarImageUrl,
    NetworkImageURL? backgroundImageUrl,
  }) = _UserForm;

  factory UserForm.dflt() => UserForm(
        userName: UserName(''),
        avatarImageUrl: NetworkImageURL(''),
        backgroundImageUrl: NetworkImageURL(''),
      );
}
