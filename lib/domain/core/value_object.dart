import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/core/errors.dart';
import 'package:jjogji/domain/core/failures.dart';
import 'package:jjogji/domain/core/value_validators.dart';

//?
abstract class IValidatable {
  bool isValid();
}

//////

//? Abstract class for creating Validated Value Objects (a.k.a VOs)
@immutable
abstract class ValueObject<T> implements IValidatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

///////////////
//? Core Value Objects.

/*

*/
class UUID extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  // We know that UUID we get from DB is 100% unique;
  factory UUID.fromDB(String uuid) {
    return UUID._(right(uuid));
  }
  factory UUID.empty() => UUID._(
        left(
          const ValueFailure.empty(failedValue: ""),
        ),
      );
  const UUID._(this.value);
}

/*

*/
class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    return StringSingleLine._(validateSingleLine(input));
  }

  const StringSingleLine._(this.value);
}

/* 

*/
class NetworkImageURL extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NetworkImageURL(String input) {
    return NetworkImageURL._(validateSingleLine(input));
  }

  const NetworkImageURL._(this.value);
}

// Validated URL Object
class ValidatedURL extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ValidatedURL(String input) {
    return ValidatedURL._(validateUrl(input));
  }

  const ValidatedURL._(this.value);
}
