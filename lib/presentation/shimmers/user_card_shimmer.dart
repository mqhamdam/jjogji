import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:shimmer/shimmer.dart';

class ShUserCard extends StatelessWidget {
  const ShUserCard(
      {this.showUserMenu = true, this.shimmerEnabled = true, super.key,});
  final bool showUserMenu;
  final bool shimmerEnabled;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColorScheme.cardColor,
      highlightColor: Colors.white70,
      enabled: shimmerEnabled,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 15,
          right: 15,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: resolveProfilePic(ProfilePic.dflt()),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: GestureDetector(
                onTap: () {
                  //
                },
                child: Shimmer.fromColors(
                  baseColor: AppColorScheme.cardColor,
                  highlightColor: Colors.white70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColorScheme.cardColor,
                                borderRadius: BorderRadius.circular(33),),
                            height: 10,
                            width: 80,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            FontAwesomeIcons.circleCheck,
                            size: 12,
                            color: AppColorScheme.primaryColor,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          UIText(
                            "@id",
                            style: UITextStyles.subtitle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            FontAwesomeIcons.star,
                            size: 10,
                            color: AppColorScheme.inactiveColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            if (showUserMenu)
              IconButton(
                onPressed: () {},
                icon: const UIIcon(
                  FontAwesomeIcons.ellipsis,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
