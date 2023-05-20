import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/presentation/shimmers/user_card_shimmer.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/bookmark_button.dart';
import 'package:jjogji/presentation/widgets/like_button.dart';
import 'package:shimmer/shimmer.dart';

class ShPostCard extends StatelessWidget {
  const ShPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColorScheme.cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(33),
      ),
      child: Shimmer.fromColors(
        baseColor: AppColorScheme.cardColor,
        highlightColor: const Color.fromARGB(52, 255, 255, 255),
        //period: Duration(milliseconds: 1500),
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  child: ShUserCard(
                    shimmerEnabled: false,
                  ),
                ),
                 SizedBox(
                  width: 10,
                ),
              ],
            ),
            const Divider(
              color: AppColorScheme.backgroundColor,
              thickness: 0.2,
            ),
            ...List.generate(
              5,
              (i) => Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4,),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(33),
                            color: AppColorScheme.cardColor,),
                        height: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: AppColorScheme.backgroundColor,
              thickness: 0.2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                bottom: 10,
                right: 20,
              ),
              child: Row(
                children: [
                  LikeButton(
                    false,
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const UIText(
                    '0',
                    style: TextStyle(
                      color: AppColorScheme.textColor,
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  const Icon(
                    FontAwesomeIcons.comment,
                    color: AppColorScheme.iconColor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const UIText(
                    "0",
                    style: TextStyle(color: AppColorScheme.textColor),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      FontAwesomeIcons.share,
                      color: AppColorScheme.iconColor,
                    ),
                  ),
                  const Spacer(),
                  BookmarkButton(false, () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
