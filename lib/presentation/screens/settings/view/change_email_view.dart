import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/forms/change_email_form/change_email_form_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class ChangeEmailView extends StatefulWidget {
  const ChangeEmailView({super.key});

  @override
  State<ChangeEmailView> createState() => _ChangeEmailViewState();
}

class _ChangeEmailViewState extends State<ChangeEmailView> {
  final ChangeEmailFormBloc _changeEmailBloc = ChangeEmailFormBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _changeEmailBloc,
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
                      'Change Email Address',
                      style: UITextStyles.headLine,
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),

                  /// new email
                  TextField(
                    // controller: _commentController,
                    onChanged: (value) {
                      _changeEmailBloc.add(
                        ChangeEmailFormEvent.emailChanged(value),
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
                      labelText: 'New Email Address',
                      helperText:
                          "Current email Address: ${BlocProvider.of<AuthBloc>(context).getSignedUser.email}",
                      helperStyle: const TextStyle(color: Colors.white70),
                      labelStyle: TextStyle(color: Colors.grey[600]),
                      floatingLabelStyle:
                          const TextStyle(color: Colors.tealAccent),
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
                  // password
                  TextField(
                    onChanged: (value) {
                      _changeEmailBloc.add(
                        ChangeEmailFormEvent.passwordChanged(value),
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
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey[600]),
                      floatingLabelStyle:
                          const TextStyle(color: Colors.tealAccent),
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

                  const SizedBox(
                    height: 30,
                  ),

                  /// submit button
                  BlocBuilder<ChangeEmailFormBloc, ChangeEmailFormState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        style: UITextButtonStyles.saveButton,
                        onPressed: _changeEmailBloc.isFormValid
                            ? () {
                                _changeEmailBloc.add(
                                  const ChangeEmailFormEvent
                                      .changeEmailBtnPressed(),
                                );
                              }
                            : null,
                        child: const UIText(
                          'Change Password',
                          style: UITextStyles.mainTitle,
                        ),
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
