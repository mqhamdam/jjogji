
// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum UserRelationType{
  followed,unfollowed,blocked,bestie
}

enum AccountAccessType {
  public, private, closed
}

enum AccountType {
  normal, verified,
}

@JsonEnum()
enum LinkedService {
  Github,
  Facebook,
  Twitter,
  Instagram,
  TikTok,
  LinkedIn,
  YouTube,
  Snapchat,
  Pinterest,
  Telegram,
  KakaoTalk,
  Medium,
  Skype,
  VK,
  Steam,
  Reddit,
  Odnoklassniki,
  Link,
}

@JsonEnum()
enum VerificationStatus {
  verified,
  unverified,
  pending,
  none,
}
