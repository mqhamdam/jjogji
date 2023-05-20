import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:jjogji/application/forms/auth_form/auth_form_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen(this.pageController, {super.key});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.backgroundColor,
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: AppColorScheme.cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 20,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: UIText(
                      "Login",
                      style: UITextStyles.headLine,
                    ),
                  ),
                  TextField(
                    onChanged: (value) {
                      BlocProvider.of<AuthFormBloc>(context).add(
                        AuthFormEvent.emailChanged(value),
                      );
                    },
                    style: const TextStyle(color: AppColorScheme.textColor),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fillColor: const Color.fromARGB(255, 7, 7, 7),
                      filled: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      prefixIcon: const Icon(
                        FontAwesome5.at,
                        color: AppColorScheme.iconColor,
                      ),
                      focusColor: AppColorScheme.primaryColor,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          color: AppColorScheme.primaryColor,
                        ),
                      ),
                      hintText: "hongildong@naver.com",
                   
                      hintStyle: TextStyle(
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      BlocProvider.of<AuthFormBloc>(context).add(
                        AuthFormEvent.passwordChanged(value),
                      );
                    },
                    style: const TextStyle(color: AppColorScheme.textColor),
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
                      fillColor: const Color.fromARGB(255, 7, 7, 7),
                      filled: true,
                     
                      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                      prefixIcon: const Icon(
                        FontAwesome5.key,
                        color: AppColorScheme.iconColor,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey[800],
                      ),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AuthFormBloc, AuthFormState>(
            builder: (context, state) {
              return TextButton(
                onPressed: BlocProvider.of<AuthFormBloc>(context).isFormValid
                    ? () {
                        BlocProvider.of<AuthFormBloc>(context).add(
                          const AuthFormEvent
                              .signInUserWithEmailAndPasswordPressed(),
                        );
                      }
                    : null,
                style: UITextButtonStyles.simpleButton,
                child: const UIText(
                  "Log in",
                  style: UITextStyles.mainTitle,
                ),
              );
            },
          ),
          const SizedBox(
            height: 40,
          ),
          const UIText(
            "Don't have an account?",
            style: UITextStyles.subtitle,
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              pageController.animateToPage(
                0,
                duration: kThemeAnimationDuration,
                curve: Curves.bounceIn,
              );
            },
            child: const UIText(
              "Sign Up",
              style: TextStyle(color: AppColorScheme.textColor),
            ),
          ),
        ],
      ),
    );
  }
}
