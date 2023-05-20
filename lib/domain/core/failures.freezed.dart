// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, num max) numberTooLarge,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPhotoUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue, num max)? numberTooLarge,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPhotoUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, num max)? numberTooLarge,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPhotoUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureExceedingLength<T> value)
        exceedingLength,
    required TResult Function(ValueFailureInvalidUrl<T> value) invalidUrl,
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureMultiline<T> value) multiline,
    required TResult Function(ValueFailureNumberTooLarge<T> value)
        numberTooLarge,
    required TResult Function(ValueFailureListTooLong<T> value) listTooLong,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureShortPassword<T> value) shortPassword,
    required TResult Function(ValueFailureInvalidPhotoUrl<T> value)
        invalidPhotoUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult? Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult? Function(ValueFailureEmpty<T> value)? empty,
    TResult? Function(ValueFailureMultiline<T> value)? multiline,
    TResult? Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult? Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult? Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult? Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult? Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureMultiline<T> value)? multiline,
    TResult Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValueFailureExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureExceedingLengthCopyWith(
          _$ValueFailureExceedingLength<T> value,
          $Res Function(_$ValueFailureExceedingLength<T>) then) =
      __$$ValueFailureExceedingLengthCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ValueFailureExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res,
        _$ValueFailureExceedingLength<T>>
    implements _$$ValueFailureExceedingLengthCopyWith<T, $Res> {
  __$$ValueFailureExceedingLengthCopyWithImpl(
      _$ValueFailureExceedingLength<T> _value,
      $Res Function(_$ValueFailureExceedingLength<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ValueFailureExceedingLength<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ValueFailureExceedingLength<T>
    implements ValueFailureExceedingLength<T> {
  const _$ValueFailureExceedingLength(
      {required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFailureExceedingLengthCopyWith<T, _$ValueFailureExceedingLength<T>>
      get copyWith => __$$ValueFailureExceedingLengthCopyWithImpl<T,
          _$ValueFailureExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, num max) numberTooLarge,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPhotoUrl,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue, num max)? numberTooLarge,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPhotoUrl,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, num max)? numberTooLarge,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureExceedingLength<T> value)
        exceedingLength,
    required TResult Function(ValueFailureInvalidUrl<T> value) invalidUrl,
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureMultiline<T> value) multiline,
    required TResult Function(ValueFailureNumberTooLarge<T> value)
        numberTooLarge,
    required TResult Function(ValueFailureListTooLong<T> value) listTooLong,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureShortPassword<T> value) shortPassword,
    required TResult Function(ValueFailureInvalidPhotoUrl<T> value)
        invalidPhotoUrl,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult? Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult? Function(ValueFailureEmpty<T> value)? empty,
    TResult? Function(ValueFailureMultiline<T> value)? multiline,
    TResult? Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult? Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult? Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult? Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult? Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureMultiline<T> value)? multiline,
    TResult Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ValueFailureExceedingLength<T> implements ValueFailure<T> {
  const factory ValueFailureExceedingLength(
      {required final T failedValue,
      required final int max}) = _$ValueFailureExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureExceedingLengthCopyWith<T, _$ValueFailureExceedingLength<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureInvalidUrlCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureInvalidUrlCopyWith(_$ValueFailureInvalidUrl<T> value,
          $Res Function(_$ValueFailureInvalidUrl<T>) then) =
      __$$ValueFailureInvalidUrlCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ValueFailureInvalidUrlCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ValueFailureInvalidUrl<T>>
    implements _$$ValueFailureInvalidUrlCopyWith<T, $Res> {
  __$$ValueFailureInvalidUrlCopyWithImpl(_$ValueFailureInvalidUrl<T> _value,
      $Res Function(_$ValueFailureInvalidUrl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ValueFailureInvalidUrl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ValueFailureInvalidUrl<T> implements ValueFailureInvalidUrl<T> {
  const _$ValueFailureInvalidUrl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUrl(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureInvalidUrl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFailureInvalidUrlCopyWith<T, _$ValueFailureInvalidUrl<T>>
      get copyWith => __$$ValueFailureInvalidUrlCopyWithImpl<T,
          _$ValueFailureInvalidUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, num max) numberTooLarge,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPhotoUrl,
  }) {
    return invalidUrl(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue, num max)? numberTooLarge,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPhotoUrl,
  }) {
    return invalidUrl?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, num max)? numberTooLarge,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureExceedingLength<T> value)
        exceedingLength,
    required TResult Function(ValueFailureInvalidUrl<T> value) invalidUrl,
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureMultiline<T> value) multiline,
    required TResult Function(ValueFailureNumberTooLarge<T> value)
        numberTooLarge,
    required TResult Function(ValueFailureListTooLong<T> value) listTooLong,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureShortPassword<T> value) shortPassword,
    required TResult Function(ValueFailureInvalidPhotoUrl<T> value)
        invalidPhotoUrl,
  }) {
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult? Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult? Function(ValueFailureEmpty<T> value)? empty,
    TResult? Function(ValueFailureMultiline<T> value)? multiline,
    TResult? Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult? Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult? Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult? Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult? Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
  }) {
    return invalidUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureMultiline<T> value)? multiline,
    TResult Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class ValueFailureInvalidUrl<T> implements ValueFailure<T> {
  const factory ValueFailureInvalidUrl({required final T failedValue}) =
      _$ValueFailureInvalidUrl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureInvalidUrlCopyWith<T, _$ValueFailureInvalidUrl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureEmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureEmptyCopyWith(_$ValueFailureEmpty<T> value,
          $Res Function(_$ValueFailureEmpty<T>) then) =
      __$$ValueFailureEmptyCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ValueFailureEmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ValueFailureEmpty<T>>
    implements _$$ValueFailureEmptyCopyWith<T, $Res> {
  __$$ValueFailureEmptyCopyWithImpl(_$ValueFailureEmpty<T> _value,
      $Res Function(_$ValueFailureEmpty<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ValueFailureEmpty<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ValueFailureEmpty<T> implements ValueFailureEmpty<T> {
  const _$ValueFailureEmpty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureEmpty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFailureEmptyCopyWith<T, _$ValueFailureEmpty<T>> get copyWith =>
      __$$ValueFailureEmptyCopyWithImpl<T, _$ValueFailureEmpty<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, num max) numberTooLarge,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPhotoUrl,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue, num max)? numberTooLarge,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPhotoUrl,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, num max)? numberTooLarge,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureExceedingLength<T> value)
        exceedingLength,
    required TResult Function(ValueFailureInvalidUrl<T> value) invalidUrl,
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureMultiline<T> value) multiline,
    required TResult Function(ValueFailureNumberTooLarge<T> value)
        numberTooLarge,
    required TResult Function(ValueFailureListTooLong<T> value) listTooLong,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureShortPassword<T> value) shortPassword,
    required TResult Function(ValueFailureInvalidPhotoUrl<T> value)
        invalidPhotoUrl,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult? Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult? Function(ValueFailureEmpty<T> value)? empty,
    TResult? Function(ValueFailureMultiline<T> value)? multiline,
    TResult? Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult? Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult? Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult? Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult? Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureMultiline<T> value)? multiline,
    TResult Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ValueFailureEmpty<T> implements ValueFailure<T> {
  const factory ValueFailureEmpty({required final T failedValue}) =
      _$ValueFailureEmpty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureEmptyCopyWith<T, _$ValueFailureEmpty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureMultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureMultilineCopyWith(_$ValueFailureMultiline<T> value,
          $Res Function(_$ValueFailureMultiline<T>) then) =
      __$$ValueFailureMultilineCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ValueFailureMultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ValueFailureMultiline<T>>
    implements _$$ValueFailureMultilineCopyWith<T, $Res> {
  __$$ValueFailureMultilineCopyWithImpl(_$ValueFailureMultiline<T> _value,
      $Res Function(_$ValueFailureMultiline<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ValueFailureMultiline<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ValueFailureMultiline<T> implements ValueFailureMultiline<T> {
  const _$ValueFailureMultiline({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureMultiline<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFailureMultilineCopyWith<T, _$ValueFailureMultiline<T>>
      get copyWith =>
          __$$ValueFailureMultilineCopyWithImpl<T, _$ValueFailureMultiline<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, num max) numberTooLarge,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPhotoUrl,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue, num max)? numberTooLarge,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPhotoUrl,
  }) {
    return multiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, num max)? numberTooLarge,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureExceedingLength<T> value)
        exceedingLength,
    required TResult Function(ValueFailureInvalidUrl<T> value) invalidUrl,
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureMultiline<T> value) multiline,
    required TResult Function(ValueFailureNumberTooLarge<T> value)
        numberTooLarge,
    required TResult Function(ValueFailureListTooLong<T> value) listTooLong,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureShortPassword<T> value) shortPassword,
    required TResult Function(ValueFailureInvalidPhotoUrl<T> value)
        invalidPhotoUrl,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult? Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult? Function(ValueFailureEmpty<T> value)? empty,
    TResult? Function(ValueFailureMultiline<T> value)? multiline,
    TResult? Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult? Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult? Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult? Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult? Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureMultiline<T> value)? multiline,
    TResult Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class ValueFailureMultiline<T> implements ValueFailure<T> {
  const factory ValueFailureMultiline({required final T failedValue}) =
      _$ValueFailureMultiline<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureMultilineCopyWith<T, _$ValueFailureMultiline<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureNumberTooLargeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureNumberTooLargeCopyWith(
          _$ValueFailureNumberTooLarge<T> value,
          $Res Function(_$ValueFailureNumberTooLarge<T>) then) =
      __$$ValueFailureNumberTooLargeCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, num max});
}

/// @nodoc
class __$$ValueFailureNumberTooLargeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ValueFailureNumberTooLarge<T>>
    implements _$$ValueFailureNumberTooLargeCopyWith<T, $Res> {
  __$$ValueFailureNumberTooLargeCopyWithImpl(
      _$ValueFailureNumberTooLarge<T> _value,
      $Res Function(_$ValueFailureNumberTooLarge<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ValueFailureNumberTooLarge<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$ValueFailureNumberTooLarge<T> implements ValueFailureNumberTooLarge<T> {
  const _$ValueFailureNumberTooLarge(
      {required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final num max;

  @override
  String toString() {
    return 'ValueFailure<$T>.numberTooLarge(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureNumberTooLarge<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFailureNumberTooLargeCopyWith<T, _$ValueFailureNumberTooLarge<T>>
      get copyWith => __$$ValueFailureNumberTooLargeCopyWithImpl<T,
          _$ValueFailureNumberTooLarge<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, num max) numberTooLarge,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPhotoUrl,
  }) {
    return numberTooLarge(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue, num max)? numberTooLarge,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPhotoUrl,
  }) {
    return numberTooLarge?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, num max)? numberTooLarge,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (numberTooLarge != null) {
      return numberTooLarge(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureExceedingLength<T> value)
        exceedingLength,
    required TResult Function(ValueFailureInvalidUrl<T> value) invalidUrl,
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureMultiline<T> value) multiline,
    required TResult Function(ValueFailureNumberTooLarge<T> value)
        numberTooLarge,
    required TResult Function(ValueFailureListTooLong<T> value) listTooLong,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureShortPassword<T> value) shortPassword,
    required TResult Function(ValueFailureInvalidPhotoUrl<T> value)
        invalidPhotoUrl,
  }) {
    return numberTooLarge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult? Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult? Function(ValueFailureEmpty<T> value)? empty,
    TResult? Function(ValueFailureMultiline<T> value)? multiline,
    TResult? Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult? Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult? Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult? Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult? Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
  }) {
    return numberTooLarge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureMultiline<T> value)? multiline,
    TResult Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (numberTooLarge != null) {
      return numberTooLarge(this);
    }
    return orElse();
  }
}

abstract class ValueFailureNumberTooLarge<T> implements ValueFailure<T> {
  const factory ValueFailureNumberTooLarge(
      {required final T failedValue,
      required final num max}) = _$ValueFailureNumberTooLarge<T>;

  @override
  T get failedValue;
  num get max;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureNumberTooLargeCopyWith<T, _$ValueFailureNumberTooLarge<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureListTooLongCopyWith(_$ValueFailureListTooLong<T> value,
          $Res Function(_$ValueFailureListTooLong<T>) then) =
      __$$ValueFailureListTooLongCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ValueFailureListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ValueFailureListTooLong<T>>
    implements _$$ValueFailureListTooLongCopyWith<T, $Res> {
  __$$ValueFailureListTooLongCopyWithImpl(_$ValueFailureListTooLong<T> _value,
      $Res Function(_$ValueFailureListTooLong<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ValueFailureListTooLong<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ValueFailureListTooLong<T> implements ValueFailureListTooLong<T> {
  const _$ValueFailureListTooLong(
      {required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureListTooLong<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFailureListTooLongCopyWith<T, _$ValueFailureListTooLong<T>>
      get copyWith => __$$ValueFailureListTooLongCopyWithImpl<T,
          _$ValueFailureListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, num max) numberTooLarge,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPhotoUrl,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue, num max)? numberTooLarge,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPhotoUrl,
  }) {
    return listTooLong?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, num max)? numberTooLarge,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureExceedingLength<T> value)
        exceedingLength,
    required TResult Function(ValueFailureInvalidUrl<T> value) invalidUrl,
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureMultiline<T> value) multiline,
    required TResult Function(ValueFailureNumberTooLarge<T> value)
        numberTooLarge,
    required TResult Function(ValueFailureListTooLong<T> value) listTooLong,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureShortPassword<T> value) shortPassword,
    required TResult Function(ValueFailureInvalidPhotoUrl<T> value)
        invalidPhotoUrl,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult? Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult? Function(ValueFailureEmpty<T> value)? empty,
    TResult? Function(ValueFailureMultiline<T> value)? multiline,
    TResult? Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult? Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult? Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult? Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult? Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureMultiline<T> value)? multiline,
    TResult Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ValueFailureListTooLong<T> implements ValueFailure<T> {
  const factory ValueFailureListTooLong(
      {required final T failedValue,
      required final int max}) = _$ValueFailureListTooLong<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureListTooLongCopyWith<T, _$ValueFailureListTooLong<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureInvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureInvalidEmailCopyWith(
          _$ValueFailureInvalidEmail<T> value,
          $Res Function(_$ValueFailureInvalidEmail<T>) then) =
      __$$ValueFailureInvalidEmailCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ValueFailureInvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ValueFailureInvalidEmail<T>>
    implements _$$ValueFailureInvalidEmailCopyWith<T, $Res> {
  __$$ValueFailureInvalidEmailCopyWithImpl(_$ValueFailureInvalidEmail<T> _value,
      $Res Function(_$ValueFailureInvalidEmail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ValueFailureInvalidEmail<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ValueFailureInvalidEmail<T> implements ValueFailureInvalidEmail<T> {
  const _$ValueFailureInvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureInvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFailureInvalidEmailCopyWith<T, _$ValueFailureInvalidEmail<T>>
      get copyWith => __$$ValueFailureInvalidEmailCopyWithImpl<T,
          _$ValueFailureInvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, num max) numberTooLarge,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPhotoUrl,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue, num max)? numberTooLarge,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPhotoUrl,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, num max)? numberTooLarge,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureExceedingLength<T> value)
        exceedingLength,
    required TResult Function(ValueFailureInvalidUrl<T> value) invalidUrl,
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureMultiline<T> value) multiline,
    required TResult Function(ValueFailureNumberTooLarge<T> value)
        numberTooLarge,
    required TResult Function(ValueFailureListTooLong<T> value) listTooLong,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureShortPassword<T> value) shortPassword,
    required TResult Function(ValueFailureInvalidPhotoUrl<T> value)
        invalidPhotoUrl,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult? Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult? Function(ValueFailureEmpty<T> value)? empty,
    TResult? Function(ValueFailureMultiline<T> value)? multiline,
    TResult? Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult? Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult? Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult? Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult? Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureMultiline<T> value)? multiline,
    TResult Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class ValueFailureInvalidEmail<T> implements ValueFailure<T> {
  const factory ValueFailureInvalidEmail({required final T failedValue}) =
      _$ValueFailureInvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureInvalidEmailCopyWith<T, _$ValueFailureInvalidEmail<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureShortPasswordCopyWith(
          _$ValueFailureShortPassword<T> value,
          $Res Function(_$ValueFailureShortPassword<T>) then) =
      __$$ValueFailureShortPasswordCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ValueFailureShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ValueFailureShortPassword<T>>
    implements _$$ValueFailureShortPasswordCopyWith<T, $Res> {
  __$$ValueFailureShortPasswordCopyWithImpl(
      _$ValueFailureShortPassword<T> _value,
      $Res Function(_$ValueFailureShortPassword<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ValueFailureShortPassword<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ValueFailureShortPassword<T> implements ValueFailureShortPassword<T> {
  const _$ValueFailureShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFailureShortPasswordCopyWith<T, _$ValueFailureShortPassword<T>>
      get copyWith => __$$ValueFailureShortPasswordCopyWithImpl<T,
          _$ValueFailureShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, num max) numberTooLarge,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPhotoUrl,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue, num max)? numberTooLarge,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPhotoUrl,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, num max)? numberTooLarge,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureExceedingLength<T> value)
        exceedingLength,
    required TResult Function(ValueFailureInvalidUrl<T> value) invalidUrl,
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureMultiline<T> value) multiline,
    required TResult Function(ValueFailureNumberTooLarge<T> value)
        numberTooLarge,
    required TResult Function(ValueFailureListTooLong<T> value) listTooLong,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureShortPassword<T> value) shortPassword,
    required TResult Function(ValueFailureInvalidPhotoUrl<T> value)
        invalidPhotoUrl,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult? Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult? Function(ValueFailureEmpty<T> value)? empty,
    TResult? Function(ValueFailureMultiline<T> value)? multiline,
    TResult? Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult? Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult? Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult? Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult? Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureMultiline<T> value)? multiline,
    TResult Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ValueFailureShortPassword<T> implements ValueFailure<T> {
  const factory ValueFailureShortPassword({required final T failedValue}) =
      _$ValueFailureShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureShortPasswordCopyWith<T, _$ValueFailureShortPassword<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureInvalidPhotoUrlCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureInvalidPhotoUrlCopyWith(
          _$ValueFailureInvalidPhotoUrl<T> value,
          $Res Function(_$ValueFailureInvalidPhotoUrl<T>) then) =
      __$$ValueFailureInvalidPhotoUrlCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ValueFailureInvalidPhotoUrlCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res,
        _$ValueFailureInvalidPhotoUrl<T>>
    implements _$$ValueFailureInvalidPhotoUrlCopyWith<T, $Res> {
  __$$ValueFailureInvalidPhotoUrlCopyWithImpl(
      _$ValueFailureInvalidPhotoUrl<T> _value,
      $Res Function(_$ValueFailureInvalidPhotoUrl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ValueFailureInvalidPhotoUrl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ValueFailureInvalidPhotoUrl<T>
    implements ValueFailureInvalidPhotoUrl<T> {
  const _$ValueFailureInvalidPhotoUrl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhotoUrl(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureInvalidPhotoUrl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFailureInvalidPhotoUrlCopyWith<T, _$ValueFailureInvalidPhotoUrl<T>>
      get copyWith => __$$ValueFailureInvalidPhotoUrlCopyWithImpl<T,
          _$ValueFailureInvalidPhotoUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, num max) numberTooLarge,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPhotoUrl,
  }) {
    return invalidPhotoUrl(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue, num max)? numberTooLarge,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPhotoUrl,
  }) {
    return invalidPhotoUrl?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, num max)? numberTooLarge,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (invalidPhotoUrl != null) {
      return invalidPhotoUrl(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureExceedingLength<T> value)
        exceedingLength,
    required TResult Function(ValueFailureInvalidUrl<T> value) invalidUrl,
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureMultiline<T> value) multiline,
    required TResult Function(ValueFailureNumberTooLarge<T> value)
        numberTooLarge,
    required TResult Function(ValueFailureListTooLong<T> value) listTooLong,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureShortPassword<T> value) shortPassword,
    required TResult Function(ValueFailureInvalidPhotoUrl<T> value)
        invalidPhotoUrl,
  }) {
    return invalidPhotoUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult? Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult? Function(ValueFailureEmpty<T> value)? empty,
    TResult? Function(ValueFailureMultiline<T> value)? multiline,
    TResult? Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult? Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult? Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult? Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult? Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
  }) {
    return invalidPhotoUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureExceedingLength<T> value)? exceedingLength,
    TResult Function(ValueFailureInvalidUrl<T> value)? invalidUrl,
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureMultiline<T> value)? multiline,
    TResult Function(ValueFailureNumberTooLarge<T> value)? numberTooLarge,
    TResult Function(ValueFailureListTooLong<T> value)? listTooLong,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureShortPassword<T> value)? shortPassword,
    TResult Function(ValueFailureInvalidPhotoUrl<T> value)? invalidPhotoUrl,
    required TResult orElse(),
  }) {
    if (invalidPhotoUrl != null) {
      return invalidPhotoUrl(this);
    }
    return orElse();
  }
}

abstract class ValueFailureInvalidPhotoUrl<T> implements ValueFailure<T> {
  const factory ValueFailureInvalidPhotoUrl({required final T failedValue}) =
      _$ValueFailureInvalidPhotoUrl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureInvalidPhotoUrlCopyWith<T, _$ValueFailureInvalidPhotoUrl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
