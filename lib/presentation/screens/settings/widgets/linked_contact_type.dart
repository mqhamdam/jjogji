import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/enums.dart';

class LinkedContactType extends StatelessWidget {
  const LinkedContactType(this.type, {super.key});

  final LinkedService type;
  @override
  Widget build(BuildContext context) {
    IconData icon;
    switch (type) {
      case LinkedService.Github:
        icon = FontAwesomeIcons.github;
        break;
      case LinkedService.Facebook:
        icon = FontAwesomeIcons.facebook;
        break;
      case LinkedService.Twitter:
        icon = FontAwesomeIcons.twitter;
        break;
      case LinkedService.Instagram:
        icon = FontAwesomeIcons.instagram;
        break;
      case LinkedService.TikTok:
        icon = FontAwesomeIcons.tiktok;
        break;
      case LinkedService.LinkedIn:
        icon = FontAwesomeIcons.linkedin;
        break;
      case LinkedService.YouTube:
        icon = FontAwesomeIcons.youtube;
        break;
      case LinkedService.Snapchat:
        icon = FontAwesomeIcons.snapchat;
        break;
      case LinkedService.Pinterest:
        icon = FontAwesomeIcons.pinterest;
        break;
      case LinkedService.Telegram:
        icon = FontAwesomeIcons.telegram;
        break;
      case LinkedService.KakaoTalk:
        icon = FontAwesomeIcons.comment;
        break;
      case LinkedService.Medium:
        icon = FontAwesomeIcons.medium;
        break;
      case LinkedService.Skype:
        icon = FontAwesomeIcons.skype;
        break;
      case LinkedService.VK:
        icon = FontAwesomeIcons.vk;
        break;
      case LinkedService.Steam:
        icon = FontAwesomeIcons.steam;
        break;
      case LinkedService.Reddit:
        icon = FontAwesomeIcons.reddit;
        break;
      case LinkedService.Odnoklassniki:
        icon = FontAwesomeIcons.odnoklassniki;
        break;
      case LinkedService.Link:
        icon = FontAwesomeIcons.link;
        break;
    }
    return Icon(
      icon,
      color: Colors.white,
    );
  }
}

/// Get base uri for a given [LinkedService]
/// this uri should be valid and can be used to open the user's
/// profile by adding the username
String getBaseUri(LinkedService type) {
  switch (type) {
    case LinkedService.Github:
      return 'https://github.com/';
    case LinkedService.Facebook:
      return 'https://www.facebook.com/';
    case LinkedService.Twitter:
      return 'https://twitter.com/';
    case LinkedService.Instagram:
      return 'https://www.instagram.com/';
    case LinkedService.TikTok:
      return 'https://www.tiktok.com/@';
    case LinkedService.LinkedIn:
      return 'https://www.linkedin.com/in/';
    case LinkedService.YouTube:
      return 'https://www.youtube.com/channel/';
    case LinkedService.Snapchat:
      return 'https://www.snapchat.com/add/';
    case LinkedService.Pinterest:
      return 'https://www.pinterest.com/';
    case LinkedService.Telegram:
      return 'https://t.me/';
    case LinkedService.KakaoTalk:
      return 'https://open.kakao.com/o/';
    case LinkedService.Medium:
      return 'https://medium.com/@';
    case LinkedService.Skype:
      return 'https://join.skype.com/invite/';
    case LinkedService.VK:
      return 'https://vk.com/';
    case LinkedService.Steam:
      return 'https://steamcommunity.com/id/';
    case LinkedService.Reddit:
      return 'https://www.reddit.com/user/';
    case LinkedService.Odnoklassniki:
      return 'https://ok.ru/profile/';
    case LinkedService.Link:
      return 'https://';
  }
}
