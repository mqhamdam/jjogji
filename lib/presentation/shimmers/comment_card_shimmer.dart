import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/presentation/shimmers/user_card_shimmer.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/readable_numbers.dart';
import 'package:shimmer/shimmer.dart';

class ShCommentCard extends StatelessWidget {
  const ShCommentCard(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColorScheme.cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
      child: Column(
        children: [
          Row(
            children: [
              const Flexible(
                child: ShUserCard(
                  showUserMenu: false,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadowColor: Colors.transparent,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Shimmer.fromColors(
                    baseColor: Colors.transparent,
                    highlightColor: Colors.white,
                    child: const Row(
                      children: [
                        UIIcon(FontAwesomeIcons.comments),
                        SizedBox(
                          width: 10,
                        ),
                        ReadableNumbers(123142),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              )
              //UserModalMenu(_userBloc)
            ],
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, bottom: 10, right: 10),
            child: Row(
              children: [
                Flexible(
                  child: UIText(
                    '',
                    style: TextStyle(
                      color: AppColorScheme.textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
