import 'package:flutter/material.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class LanguagesView extends StatelessWidget {
  const LanguagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.006,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          border: Border.all(color: Colors.tealAccent),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(53)),
        ),
        height: MediaQuery.of(context).size.height * 0.5,
        child: Transform.scale(
          scale: 0.990,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 18.0, bottom: 15),
                    child: UIText('Select language',
                        style: UITextStyles.headLine,),
                  ),
                  RadioListTile(
                    value: true,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    tileColor: AppColorScheme.cardColor,
                    groupValue: true,
                    onChanged: (value) {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),),
                    // contentPadding:
                    //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    title: const UIText('한국어', style: UITextStyles.mainTitle),
                    secondary: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        'icons/flags/png/kr.png',
                        package: 'country_icons',
                        width: 70,
                      ),
                    ),
                  ),
                  // SizedBox(height: 10),
                  // RadioListTile(
                  //   value: true,
                  //   contentPadding:
                  //       EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  //   tileColor: AppColorScheme.cardColor,
                  //   groupValue: true,
                  //   onChanged: (value) {},
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(33)),
                  //   // contentPadding:
                  //   //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  //   title:
                  //       UIText('Русский язык', style: UITextStyles.mainTitle),
                  //   secondary: ClipRRect(
                  //     borderRadius: BorderRadius.circular(22),
                  //     child: Image.asset(
                  //       'icons/flags/png/ru.png',
                  //       package: 'country_icons',
                  //       width: 70,
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 10),
                  RadioListTile(
                    value: true,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    tileColor: AppColorScheme.cardColor,
                    groupValue: true,
                    onChanged: (value) {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),),
                    // contentPadding:
                    //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    title: const UIText('English', style: UITextStyles.mainTitle),
                    secondary: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        'icons/flags/png/gb.png',
                        package: 'country_icons',
                        width: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
