
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/app/app_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class TranslateLanguagesView extends StatefulWidget {
  const TranslateLanguagesView({super.key});

  @override
  State<TranslateLanguagesView> createState() => _TranslateLanguagesViewState();
}

class _TranslateLanguagesViewState extends State<TranslateLanguagesView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appBloc = BlocProvider.of<AppBloc>(context);
   
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Transform.scale(
          scale: 1.006,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black87,
              border: Border.all(color: Colors.tealAccent),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(33)),
            ),
            height: MediaQuery.of(context).size.height * 0.9,
            child: Transform.scale(
              scale: 0.990,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.black87,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(33)),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 18.0, bottom: 15),
                          child: UIText('Select language',
                              style: UITextStyles.headLine,),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 10, right: 10,),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[0],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[0],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  title: const UIText('한국어',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/kr.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[1],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[1],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  title: const UIText('Русский язык',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/${appBloc.availableTranslateCountryCode[1]}.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[2],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[2],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  title: const UIText('English',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/gb.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[3],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[3],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  title: const UIText('Français',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/fr.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[4],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[4],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  title: const UIText('Español',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/es.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[5],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[5],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  title: const UIText('にほんご / 日本語',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/jp.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[6],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[6],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  title: const UIText('汉语/漢語 / 中文',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/cn.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[7],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[7],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  title: const UIText('Tiếng Việt',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/vn.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[8],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[8],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  title: const UIText('ภาษาไทย',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/th.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[9],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[9],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  title: const UIText('Wikang Filipino',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/ph.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[10],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[10],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  title: const UIText('ភាសាខ្មែរ / ខេមរភាសា',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/kh.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[11],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[11],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  title: const UIText('Mońǧol kele, Монгол хэл',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/mn.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[12],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[12],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  title: const UIText('नेपाली',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/np.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[13],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[13],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  title: const UIText('Bahasa Indonesia',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/id.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[14],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[14],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  title: const UIText('Bahasa Melayu',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/my.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[15],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[15],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  title: const UIText('جامعة الدول العربية',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.network(
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Flag_of_the_Arab_League.svg/125px-Flag_of_the_Arab_League.svg.png',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[16],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[16],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  title: const UIText('हिन्दी',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/in.png',
                                      package: 'country_icons',
                                      width: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RadioListTile(
                                  value: appBloc.currentTranslateLang ==
                                      appBloc.availableTranslateCountryCode[17],
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15,),
                                  tileColor: AppColorScheme.cardColor,
                                  groupValue: true,
                                  onChanged: (value) {
                                    appBloc.add(
                                      AppEvent.changeTranslateLang(
                                        appBloc
                                            .availableTranslateCountryCode[17],
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),),
                                  title: const UIText('Türkçe',
                                      style: UITextStyles.mainTitle,),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                      'icons/flags/png/tr.png',
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
