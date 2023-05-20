import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:overlay_support/overlay_support.dart';

class EmailVerificationView extends StatelessWidget {
  const EmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(
          bottom: kToolbarHeight,
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: UIText(
                'Verify Email Address',
                style: UITextStyles.headLine,
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            const SizedBox(
              height: 30,
            ),

            /// submit button
            ElevatedButton(
              style: UITextButtonStyles.saveButton,
              onPressed: () {
                BlocProvider.of<AuthBloc>(context)
                    .userCredentials!
                    .sendEmailVerification();
                toast('Check your Email for verification link');
              },
              child: const UIText(
                'Send Verification Link',
                style: UITextStyles.mainTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
