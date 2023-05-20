import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jjogji/application/extensions/extensions.dart';
import 'package:jjogji/application/forms/user_form/user_form_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:overlay_support/overlay_support.dart';

class EditUserDataScreen extends StatelessWidget {
  const EditUserDataScreen({super.key});
  static const String routeName = '/editUserDataScreen';
  Future<void> popOnSave(BuildContext context) async {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<UserFormBloc>(context);
    return BlocBuilder<UserFormBloc, UserFormState>(
      builder: (context, state) {
        if (state.isSaving) {
          //  popOnSave(context);
        }

        if (state.loadingInitalData) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: AppColorScheme.backgroundColor,
            body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar.medium(
                  stretch: true,
                  expandedHeight: 150,
                  backgroundColor: Colors.black12,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(33),
                    ),
                  ),
                  flexibleSpace: GestureDetector(
                    onTap: bloc.initialData.reputation < 2000
                        ? () {
                            toast(
                                '2000 Reputation needed to change background',);
                          }
                        : () async {
                            final XFile? image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (image != null) {
                              bloc.add(
                                UserFormEvent.backgroundImageChanged(image),
                              );
                            }
                          },
                    child: FlexibleSpaceBar(
                      background: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(33),
                        ),
                        child: state.backgroundImage != null
                            ? Image.file(
                                state.backgroundImage!.toFile(),
                                fit: BoxFit.cover,
                              )
                            : state.user.backgroundImageUrl != null
                                ? Image.network(
                                    state.user.backgroundImageUrl!.getOrCrash(),
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    'assets/images/background/01jpg.jpg',
                                    fit: BoxFit.cover,
                                  ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: bloc.initialData.reputation < 1000
                          ? () {
                              toast(
                                  '1000 Reputation needed to change background',);
                            }
                          : () async {
                              final XFile? image = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                              if (image != null) {
                                bloc.add(
                                  UserFormEvent.avatarImageChanged(image),
                                );
                              }
                            },
                      child: BlocBuilder<UserFormBloc, UserFormState>(
                          builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform.scale(
                              scale: 1.2,
                              child: resolveProfilePic(
                                bloc.initialData.profilePic,
                                isLarge: true,
                                fileImage: state.avatarImage?.toFile(),
                              ),
                            ),
                          ],
                        );
                      },),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color: AppColorScheme.cardColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            BlocBuilder<UserFormBloc, UserFormState>(
                              builder: (context, state) {
                                return TextField(
                                  onChanged: (value) {
                                    bloc.add(
                                      UserFormEvent.userNameChanged(value),
                                    );
                                  },
                                  style: const TextStyle(
                                    color: AppColorScheme.textColor,
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: const BorderSide(
                                        color: AppColorScheme.primaryColor,
                                      ),
                                    ),
                                    fillColor:
                                        const Color.fromARGB(255, 7, 7, 7),
                                    filled: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    hintText:
                                        bloc.initialData.userName.getOrCrash(),
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextButton(
                              onPressed: () {
                                bloc.add(
                                  const UserFormEvent.saveButtonPressed(),
                                );
                                Navigator.of(context).pop();
                              },
                              style: UITextButtonStyles.simpleButton,
                              child: BlocBuilder<UserFormBloc, UserFormState>(
                                builder: (context, state) {
                                  return UIText(
                                    state.isSaving ? "Saving..." : "Save Data",
                                    style: UITextStyles.mainTitle,
                                  );
                                },
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
          );
        }
      },
    );
  }
}
