// ignore_for_file: unused_local_variable

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jjogji/domain/auth/auth_failures.dart';
import 'package:jjogji/domain/auth/i_auth_facade.dart';
import 'package:jjogji/domain/auth/value_objects.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/user/user.dart' as app;
import 'package:jjogji/infrastructure/user/user_repo.dart';
import 'package:overlay_support/overlay_support.dart';

class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static final AuthFacade instance = AuthFacade._();
  static final UserRepo _userRepo = UserRepo.instance;

  static Future<Either<Error, app.User>> get getUserData async =>
      _userRepo.getUserData(
        UUID.fromDB(
          await instance.getSignedInUser().then((value) => value.uid),
        ),
      );

  AuthFacade._();
  @override
  Future<Either<AuthFailures, Unit>> signUpWithEmailAndPassword(
    EmailAddress emailAddress,
    PasswordVO passwordVO,
  ) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = passwordVO.getOrCrash();

    try {
      ///! DELETE ON PRODUCTION
      /// TEST USER EMAIL AND PASSWORD
      /// email: testusernum(1~100)@gmail.com
      /// password: 123456789TEST (for all users)
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        toast('Email Alderady in use');
        return left(const AuthFailures.emailAlreadyInUse());
      } else if (e.code == 'weak-password') {
        toast('Weak Password');
        return left(const AuthFailures.weakPassword());
      } else if (e.code == 'invalid-email') {
        toast('Invalid Email');
        return left(const AuthFailures.invalidEmail());
      } else {
        toast('Server Error');
        return left(const AuthFailures.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> signInWithEmailAndPassword(
    EmailAddress emailAddress,
    PasswordVO passwordVO,
  ) async {
    toast('Signing In...');
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = passwordVO.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        toast('Invalid Email or Password');
        return left(const AuthFailures.invalidEmailAndPasswordCombination());
      } else if (e.code == 'user-disabled') {
        toast('User Disabled');
        return left(const AuthFailures.serverError());
      } else if (e.code == 'user-not-found') {
        toast('User Not Found');
        return left(const AuthFailures.userNotFound());
      } else {
        return left(const AuthFailures.serverError());
      }
    }
  }

  @override
  Future<User> getSignedInUser() async {
    return _firebaseAuth.currentUser!;
  }

  @override
  Future<Either<AuthFailures, Unit>> signOut() async {
    try {
      toast('logging out...');
      await _firebaseAuth.signOut();
      return right(unit);
    } catch (e) {
      return left(
        const AuthFailures.serverError(),
      );
    }
  }

  /// if true means user is signed in
  @override
  Stream<bool> authenticationStatus() {
    return _firebaseAuth.authStateChanges().map((user) {
      return user != null;
    });
  }

  ///
  @override
  Future<Either<AuthFailures, Unit>> deleteAccount(
    PasswordVO password,
  ) async {
    toast('Deleting Account...');
    final passwordStr = password.getOrCrash();
    final emailAddrStr = _firebaseAuth.currentUser!.email!;
    try {
      final credentials = EmailAuthProvider.credential(
        email: emailAddrStr,
        password: passwordStr,
      );
      // reauth
      await _firebaseAuth.currentUser!
          .reauthenticateWithCredential(credentials);
      // delete
      await _firebaseAuth.currentUser!.delete();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        toast('Current Password is wrong');
      }
      return left(const AuthFailures.invalidEmailAndPasswordCombination());
    }
  }

  ///
  @override
  Future<Either<AuthFailures, Unit>> resetPassword(
    EmailAddress emailAddress,
  ) async {
    throw UnimplementedError();
    // final String emailAddrString = emailAddress.getOrCrash();
    // try {
    //   final ActionCodeSettings actionCodeSettings = ActionCodeSettings(
    //     url: '/password-reset',
    //     androidPackageName: 'com.example.jjogji',
    //     androidInstallApp: true,
    //     androidMinimumVersion: '12',
    //     handleCodeInApp: true,
    //     iOSBundleId: 'com.example.jjogji',
    //     dynamicLinkDomain: 'jjogji.page.link ',
    //   );

    //   await _firebaseAuth.sendPasswordResetEmail(email: emailAddrString);

    //   return right(unit);
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == 'user-not-found') {
    //     toast('No user found for that email.');
    //   }
    //   return left(const AuthFailures.invalidEmailAndPasswordCombination());
    // }
  }

  @override
  Future<Either<AuthFailures, Unit>> verifyEmail() async {
    toast('verifying email...');
    final res = await _firebaseAuth.currentUser!.sendEmailVerification();
    toast('Email Sent');
    return right(unit);
  }

  @override
  Either<AuthFailures, String> getEmailAddress() =>
      right(_firebaseAuth.currentUser!.email!);

  @override
  Future<Either<AuthFailures, Unit>> changePassword(
    PasswordVO oldPassword,
    PasswordVO newPassword,
  ) async {
    try {
      toast('Changing Password...');
      final String oldPasswordStr = oldPassword.getOrCrash();
      final String newPasswordStr = newPassword.getOrCrash();

      final credentials = EmailAuthProvider.credential(
        email: _firebaseAuth.currentUser!.email!,
        password: oldPasswordStr,
      );

      await _firebaseAuth.currentUser!
          .reauthenticateWithCredential(credentials);
      await _firebaseAuth.currentUser!.updatePassword(newPasswordStr);
      toast('Password Changed Successfully');
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        toast('Current Password is wrong');
      }

      if (e.code == 'weak-password') {
        toast('Password should be at least 6 characters');
      }

      return left(const AuthFailures.invalidEmailAndPasswordCombination());
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> changeEmailAddress(
    PasswordVO password,
    EmailAddress newEmailAddress,
  ) async {
    try {
      toast('Changing Email Address...');
      final String passwordStr = password.getOrCrash();
      final String newEmailAddressStr = newEmailAddress.getOrCrash();

      final credentials = EmailAuthProvider.credential(
        email: _firebaseAuth.currentUser!.email!,
        password: passwordStr,
      );

      await _firebaseAuth.currentUser!
          .reauthenticateWithCredential(credentials);
      await _firebaseAuth.currentUser!
          .verifyBeforeUpdateEmail(newEmailAddressStr);
      // await _firebaseAuth.currentUser!.updateEmail(newEmailAddressStr);

      toast('Check your ${_firebaseAuth.currentUser!.email} for verification');

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        toast('Current Password is wrong');
      }

      if (e.code == 'email-already-in-use') {
        toast('Email already in use');
      }

      if (e.code == 'invalid-email') {
        toast('Invalid Email');
      }
      return left(const AuthFailures.invalidEmailAndPasswordCombination());
    }
  }
}
