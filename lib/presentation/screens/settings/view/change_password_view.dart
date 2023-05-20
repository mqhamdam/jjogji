import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:jjogji/application/forms/change_password_form/change_password_form_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final ChangePasswordFormBloc _changePasswordBloc = ChangePasswordFormBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _changePasswordBloc,
      child: KeyboardVisibilityBuilder(
        builder: (context, kbIsOpen) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(
                bottom: kToolbarHeight +
                    (kbIsOpen ? MediaQuery.of(context).viewInsets.bottom : 0),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: UIText(
                      'Change password',
                      style: UITextStyles.headLine,
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),

                  /// old password
                  TextField(
                    // controller: _commentController,
                    onChanged: (value) {
                      _changePasswordBloc.add(
                        ChangePasswordFormEvent.oldPasswordChanged(value),
                      );
                    },

                    style: const TextStyle(color: AppColorScheme.textColor),
                    maxLength: 1000,
                    maxLines: null,
                    textInputAction: TextInputAction.newline,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                      counterText: '',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23),
                        borderSide: const BorderSide(
                          color: AppColorScheme.primaryColor,
                        ),
                      ),
                      labelText: 'Current password',
                      labelStyle: TextStyle(color: Colors.grey[600]),
                      floatingLabelStyle: const TextStyle(color: Colors.tealAccent),
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      fillColor: AppColorScheme.backgroundColor,
                      filled: true,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // new password
                  TextField(
                    onChanged: (value) {
                      _changePasswordBloc.add(
                        ChangePasswordFormEvent.newPasswordChanged(value),
                      );
                    },
                    style: const TextStyle(color: AppColorScheme.textColor),
                    maxLength: 1000,
                    maxLines: null,
                    textInputAction: TextInputAction.newline,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                      counterText: '',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23),
                        borderSide: const BorderSide(
                          color: AppColorScheme.primaryColor,
                        ),
                      ),
                      labelText: 'New Password',
                      labelStyle: TextStyle(color: Colors.grey[600]),
                      floatingLabelStyle: const TextStyle(color: Colors.tealAccent),
                      fillColor: AppColorScheme.backgroundColor,
                      filled: true,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      _changePasswordBloc.add(
                        ChangePasswordFormEvent.confirmPasswordChanged(value),
                      );
                    },
                    style: const TextStyle(color: AppColorScheme.textColor),
                    maxLength: 1000,
                    maxLines: null,
                    textInputAction: TextInputAction.newline,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                      counterText: '',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23),
                        borderSide: const BorderSide(
                          color: AppColorScheme.primaryColor,
                        ),
                      ),
                      labelText: 'Confirm New Password',
                      labelStyle: TextStyle(color: Colors.grey[600]),
                      floatingLabelStyle: const TextStyle(color: Colors.tealAccent),
                      fillColor: AppColorScheme.backgroundColor,
                      filled: true,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  /// submit button
                  BlocBuilder<ChangePasswordFormBloc, ChangePasswordFormState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        style: UITextButtonStyles.saveButton,
                        onPressed: _changePasswordBloc.passwordMatch
                            ? () {
                                _changePasswordBloc.add(
                                  const ChangePasswordFormEvent
                                      .changePasswordBtnPressed(),
                                );
                              }
                            : null,
                        child: const UIText('Change Password',
                            style: UITextStyles.mainTitle,),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
