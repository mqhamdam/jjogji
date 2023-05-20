import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jjogji/domain/auth/auth_failures.dart';
import 'package:jjogji/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Stream<bool> authenticationStatus();
  Future<User> getSignedInUser();
  Future<Either<AuthFailures, Unit>> signOut();
  Future<Either<AuthFailures, Unit>> signInWithEmailAndPassword(
    EmailAddress emailAddress,
    PasswordVO passwordVO,
  );
  Future<Either<AuthFailures, Unit>> signUpWithEmailAndPassword(
    EmailAddress emailAddress,
    PasswordVO passwordVO,
  );
  Future<Either<AuthFailures, Unit>> verifyEmail();

  Future<Either<AuthFailures, Unit>> resetPassword(
    EmailAddress emailAddress,
  );
  Future<Either<AuthFailures, Unit>> deleteAccount(
    PasswordVO passwordVO,
  );
  //////
  Either<AuthFailures, String> getEmailAddress();

  Future<Either<AuthFailures, Unit>> changePassword(
    PasswordVO oldPassword,
    PasswordVO newPassword,
  );
  Future<Either<AuthFailures, Unit>> changeEmailAddress(
    PasswordVO password,
    EmailAddress newEmailAddress,
  );
  
}

void aa() {}
