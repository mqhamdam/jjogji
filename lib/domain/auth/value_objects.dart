import 'package:dartz/dartz.dart';
import 'package:jjogji/domain/core/failures.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class PasswordVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PasswordVO(String input) {
    return PasswordVO._(validatePassword(input));
  }

  const PasswordVO._(this.value);
}
