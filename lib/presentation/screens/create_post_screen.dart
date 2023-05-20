import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:jjogji/application/forms/post_form/post_form_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostFormBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.0),
                          child: Material(
                              color: Colors.white,
                              type: MaterialType.circle,
                              child: BackButton(),),
                        ),
                        UIText("Create Publication",
                            style: UITextStyles.headLine,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: BlocBuilder<PostFormBloc, PostFormState>(
                        builder: (context, state) {
                          return TextField(
                            onChanged: (str) {
                              BlocProvider.of<PostFormBloc>(context).add(
                                PostFormEvent.postBodyChanged(str),
                              );
                            },
                            maxLength: 10000,
                            style: const TextStyle(
                                color: AppColorScheme.textColor,),
                            maxLines: null,
                            expands: true,
                            scrollPhysics: const BouncingScrollPhysics(),
                            decoration: InputDecoration(
                              counterStyle: UITextStyles.subtitle,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: AppColorScheme.inactiveColor,
                                  width: 2,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: AppColorScheme.inactiveColor,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: AppColorScheme.primaryColor,
                                ),
                              ),
                              fillColor: const Color.fromARGB(255, 7, 7, 7),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10,),
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 10,
                          ),
                          child: BlocBuilder<PostFormBloc, PostFormState>(
                            builder: (context, state) {
                              return Wrap(
                                spacing: 10,
                                children: state.postForm.tags
                                    .map((e) => UIText(e.getOrCrash(),
                                        style: UITextStyles.subtitle,),)
                                    .toList(),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 10,),
                    child: TabBar(
                        controller: _tabController,
                        indicatorColor: AppColorScheme.primaryColor,
                        onTap: (i) {
                          BlocProvider.of<PostFormBloc>(context).add(
                            PostFormEvent.postVisibilityTypeChanged(i),
                          );
                        },
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: UITextStyles.subtitle,
                        tabs: const [
                          Tab(
                            icon: Icon(FontAwesome5.globe),
                            text: "Public",
                          ),
                          Tab(
                            icon: Icon(FontAwesome5.shield_alt,
                                color: Colors.blue,),
                            text: "Private",
                          ),
                          Tab(
                            icon: Icon(
                              FontAwesome5.star,
                              color: Colors.yellow,
                            ),
                            text: "Besties",
                          ),
                        ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10,),
                    child: BlocBuilder<PostFormBloc, PostFormState>(
                      builder: (context, state) {
                        return SwitchListTile.adaptive(
                          activeColor: AppColorScheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),),
                          title: const UIText('Enable Comment',
                              style: UITextStyles.mainTitle,),
                          value: state.postForm.commentEnabled,
                          tileColor: AppColorScheme.cardColor,
                          onChanged: (e) {
                            BlocProvider.of<PostFormBloc>(context).add(
                              PostFormEvent.commentEnableButtonSwitched(e),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 60, right: 60, bottom: 30,),
                          child: BlocBuilder<PostFormBloc, PostFormState>(
                            builder: (context, state) {
                              return TextButton(
                                style: UITextButtonStyles.simpleButton,
                                onPressed: state.postForm.postBody.isValid()
                                    ? () async {
                                        BlocProvider.of<PostFormBloc>(context)
                                            .add(
                                          const PostFormEvent
                                              .postButtonPressed(),
                                        );

                                        Navigator.of(context).pop();
                                      }
                                    : null,
                                child: state.isSaving
                                    ? const CircularProgressIndicator()
                                    : UIText(
                                        state.postForm.postBody.isValid()
                                            ? 'Post'
                                            : 'Type something to post',
                                        style: UITextStyles.mainTitle,
                                      ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },),
    );
  }
}
