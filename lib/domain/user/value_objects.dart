import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:jjogji/domain/core/failures.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/core/value_validators.dart';

///
class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 1000;

  factory UserName(String input) {
    return UserName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const UserName._(this.value);
}

class VOColor extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const int maxLength = 11;

  factory VOColor(int input) {
    return VOColor._(validateIntegerLength(input, maxLength));
  }

  const VOColor._(
    this.value,
  );
}

class VOAlignment {
  final double value;
  final double value2;
  
  
  const VOAlignment(this.value, this.value2);
  Alignment toAlignment(){
    return Alignment(value, value2);
  }
}

class UserID extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserID(String input) {
    return UserID._(validateSingleLine(input));
  }
  const UserID._(this.value);
}

/// ? This is different with UserID. UserID starts with @ and user can change it
/// ? whenever he wants to. But UserUUID is generated at server and neither user
/// ? nor developers can change it. Remember that when user creates account
/// ? UserUUID maped to UserID. Because both should be unique.
/// ! when user changes UserID remember to set lenght -1 of UserUUID
/// ! to prevent duplicated UserIDs.
///
// class UserUUID extends IEntity {
  
//   @override
//   final UUID uuid;

  
//   const UserUUID(this.uuid);
// }
