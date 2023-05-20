import 'package:dartz/dartz.dart';
import 'package:jjogji/domain/core/failures.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/core/value_validators.dart';

class CommentBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 1000;

  factory CommentBody(String input) {
    return CommentBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const CommentBody._(this.value);
}
