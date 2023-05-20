import 'package:dartz/dartz.dart';
import 'package:jjogji/domain/core/failures.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/core/value_validators.dart';

class PostBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 10000;

  factory PostBody(String input) {
    return PostBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const PostBody._(this.value);
}

class Tag extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 20;

  factory Tag(String input) {
    return Tag._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const Tag._(this.value);
}
