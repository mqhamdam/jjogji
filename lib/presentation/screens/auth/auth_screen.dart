import 'package:flutter/material.dart';
import 'package:jjogji/presentation/screens/auth/login_screen.dart';
import 'package:jjogji/presentation/screens/auth/sign_up_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
   
    return PageView(
      controller: pageController,
      physics: const BouncingScrollPhysics(),
      children: [
        SignUpScreen(pageController),
        LoginScreen(pageController),
      ],
    );
  }
}
