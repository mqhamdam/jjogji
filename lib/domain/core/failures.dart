import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';



@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ValueFailureExceedingLength<T>;
  //invalid url
  const factory ValueFailure.invalidUrl({
    required T failedValue,
  }) = ValueFailureInvalidUrl<T>;

  const factory ValueFailure.empty({
    required T failedValue,
  }) = ValueFailureEmpty<T>;

  const factory ValueFailure.multiline({
    required T failedValue,
  }) = ValueFailureMultiline<T>;

  const factory ValueFailure.numberTooLarge({
    required T failedValue,
    required num max,
  }) = ValueFailureNumberTooLarge<T>;

  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = ValueFailureListTooLong<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = ValueFailureInvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ValueFailureShortPassword<T>;

  const factory ValueFailure.invalidPhotoUrl({
    required T failedValue,
  }) = ValueFailureInvalidPhotoUrl<T>;
}
