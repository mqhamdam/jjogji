import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                // color: Colors.black38,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create different posts',
                      style: UITextStyles.headLine.copyWith(fontSize: 35),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    buildTile(
                        const Icon(
                          Icons.public,
                          size: 100,
                          color: Colors.blueGrey,
                        ),
                        const UIText(
                          "Public Posts",
                          style: UITextStyles.headLine,
                        ),
                        const UIText('Posts visible to everyone',
                            style: UITextStyles.mainTitle,),),
                    buildTile(
                        const Icon(
                          Icons.shield_outlined,
                          size: 100,
                          color: Colors.blueAccent,
                        ),
                        const UIText(
                          "Private Posts",
                          style: UITextStyles.headLine,
                        ),
                        const UIText('Visible to subscribers',
                            style: UITextStyles.mainTitle,),),
                    buildTile(
                      const Icon(
                        Icons.star_border_rounded,
                        size: 100,
                        color: Colors.yellowAccent,
                      ),
                      const UIText(
                        "Special Posts",
                        style: UITextStyles.headLine,
                      ),
                      const UIText(
                        'Visible to Besties',
                        style: UITextStyles.mainTitle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildTile(Widget icon, Widget title, Widget description) {
  return Row(
    children: [
      icon,
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [title, description],
      ),),
    ],
  );
}
