// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpUserWithEmailAndPasswordPressed,
    required TResult Function() signInUserWithEmailAndPasswordPressed,
    required TResult Function(bool isSubmitting) toggleSubmitButton,
    required TResult Function(
            Option<Either<AuthFailures, Unit>> failureOrSuccess)
        errorMessageChanged,
    required TResult Function(AuthFormState state) updateState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? signUpUserWithEmailAndPasswordPressed,
    TResult? Function()? signInUserWithEmailAndPasswordPressed,
    TResult? Function(bool isSubmitting)? toggleSubmitButton,
    TResult? Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult? Function(AuthFormState state)? updateState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpUserWithEmailAndPasswordPressed,
    TResult Function()? signInUserWithEmailAndPasswordPressed,
    TResult Function(bool isSubmitting)? toggleSubmitButton,
    TResult Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult Function(AuthFormState state)? updateState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpUserWithEmailAndPasswordPressed value)
        signUpUserWithEmailAndPasswordPressed,
    required TResult Function(_SignInUserWithEmailAndPasswordPressed value)
        signInUserWithEmailAndPasswordPressed,
    required TResult Function(_ToggleSubmitButton value) toggleSubmitButton,
    required TResult Function(_ErrorMessageChanged value) errorMessageChanged,
    required TResult Function(_UpdateState value) updateState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult? Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult? Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult? Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult? Function(_UpdateState value)? updateState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormEventCopyWith<$Res> {
  factory $AuthFormEventCopyWith(
          AuthFormEvent value, $Res Function(AuthFormEvent) then) =
      _$AuthFormEventCopyWithImpl<$Res, AuthFormEvent>;
}

/// @nodoc
class _$AuthFormEventCopyWithImpl<$Res, $Val extends AuthFormEvent>
    implements $AuthFormEventCopyWith<$Res> {
  _$AuthFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$_EmailChanged(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AuthFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpUserWithEmailAndPasswordPressed,
    required TResult Function() signInUserWithEmailAndPasswordPressed,
    required TResult Function(bool isSubmitting) toggleSubmitButton,
    required TResult Function(
            Option<Either<AuthFailures, Unit>> failureOrSuccess)
        errorMessageChanged,
    required TResult Function(AuthFormState state) updateState,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? signUpUserWithEmailAndPasswordPressed,
    TResult? Function()? signInUserWithEmailAndPasswordPressed,
    TResult? Function(bool isSubmitting)? toggleSubmitButton,
    TResult? Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult? Function(AuthFormState state)? updateState,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpUserWithEmailAndPasswordPressed,
    TResult Function()? signInUserWithEmailAndPasswordPressed,
    TResult Function(bool isSubmitting)? toggleSubmitButton,
    TResult Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult Function(AuthFormState state)? updateState,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpUserWithEmailAndPasswordPressed value)
        signUpUserWithEmailAndPasswordPressed,
    required TResult Function(_SignInUserWithEmailAndPasswordPressed value)
        signInUserWithEmailAndPasswordPressed,
    required TResult Function(_ToggleSubmitButton value) toggleSubmitButton,
    required TResult Function(_ErrorMessageChanged value) errorMessageChanged,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult? Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult? Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult? Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements AuthFormEvent {
  const factory _EmailChanged(final String emailStr) = _$_EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$_PasswordChanged(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'AuthFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpUserWithEmailAndPasswordPressed,
    required TResult Function() signInUserWithEmailAndPasswordPressed,
    required TResult Function(bool isSubmitting) toggleSubmitButton,
    required TResult Function(
            Option<Either<AuthFailures, Unit>> failureOrSuccess)
        errorMessageChanged,
    required TResult Function(AuthFormState state) updateState,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? signUpUserWithEmailAndPasswordPressed,
    TResult? Function()? signInUserWithEmailAndPasswordPressed,
    TResult? Function(bool isSubmitting)? toggleSubmitButton,
    TResult? Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult? Function(AuthFormState state)? updateState,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpUserWithEmailAndPasswordPressed,
    TResult Function()? signInUserWithEmailAndPasswordPressed,
    TResult Function(bool isSubmitting)? toggleSubmitButton,
    TResult Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult Function(AuthFormState state)? updateState,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpUserWithEmailAndPasswordPressed value)
        signUpUserWithEmailAndPasswordPressed,
    required TResult Function(_SignInUserWithEmailAndPasswordPressed value)
        signInUserWithEmailAndPasswordPressed,
    required TResult Function(_ToggleSubmitButton value) toggleSubmitButton,
    required TResult Function(_ErrorMessageChanged value) errorMessageChanged,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult? Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult? Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult? Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements AuthFormEvent {
  const factory _PasswordChanged(final String passwordStr) = _$_PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpUserWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$$_SignUpUserWithEmailAndPasswordPressedCopyWith(
          _$_SignUpUserWithEmailAndPasswordPressed value,
          $Res Function(_$_SignUpUserWithEmailAndPasswordPressed) then) =
      __$$_SignUpUserWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpUserWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res,
        _$_SignUpUserWithEmailAndPasswordPressed>
    implements _$$_SignUpUserWithEmailAndPasswordPressedCopyWith<$Res> {
  __$$_SignUpUserWithEmailAndPasswordPressedCopyWithImpl(
      _$_SignUpUserWithEmailAndPasswordPressed _value,
      $Res Function(_$_SignUpUserWithEmailAndPasswordPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpUserWithEmailAndPasswordPressed
    implements _SignUpUserWithEmailAndPasswordPressed {
  const _$_SignUpUserWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'AuthFormEvent.signUpUserWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpUserWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpUserWithEmailAndPasswordPressed,
    required TResult Function() signInUserWithEmailAndPasswordPressed,
    required TResult Function(bool isSubmitting) toggleSubmitButton,
    required TResult Function(
            Option<Either<AuthFailures, Unit>> failureOrSuccess)
        errorMessageChanged,
    required TResult Function(AuthFormState state) updateState,
  }) {
    return signUpUserWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? signUpUserWithEmailAndPasswordPressed,
    TResult? Function()? signInUserWithEmailAndPasswordPressed,
    TResult? Function(bool isSubmitting)? toggleSubmitButton,
    TResult? Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult? Function(AuthFormState state)? updateState,
  }) {
    return signUpUserWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpUserWithEmailAndPasswordPressed,
    TResult Function()? signInUserWithEmailAndPasswordPressed,
    TResult Function(bool isSubmitting)? toggleSubmitButton,
    TResult Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult Function(AuthFormState state)? updateState,
    required TResult orElse(),
  }) {
    if (signUpUserWithEmailAndPasswordPressed != null) {
      return signUpUserWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpUserWithEmailAndPasswordPressed value)
        signUpUserWithEmailAndPasswordPressed,
    required TResult Function(_SignInUserWithEmailAndPasswordPressed value)
        signInUserWithEmailAndPasswordPressed,
    required TResult Function(_ToggleSubmitButton value) toggleSubmitButton,
    required TResult Function(_ErrorMessageChanged value) errorMessageChanged,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return signUpUserWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult? Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult? Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult? Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return signUpUserWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (signUpUserWithEmailAndPasswordPressed != null) {
      return signUpUserWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpUserWithEmailAndPasswordPressed implements AuthFormEvent {
  const factory _SignUpUserWithEmailAndPasswordPressed() =
      _$_SignUpUserWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$$_SignInUserWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$$_SignInUserWithEmailAndPasswordPressedCopyWith(
          _$_SignInUserWithEmailAndPasswordPressed value,
          $Res Function(_$_SignInUserWithEmailAndPasswordPressed) then) =
      __$$_SignInUserWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInUserWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res,
        _$_SignInUserWithEmailAndPasswordPressed>
    implements _$$_SignInUserWithEmailAndPasswordPressedCopyWith<$Res> {
  __$$_SignInUserWithEmailAndPasswordPressedCopyWithImpl(
      _$_SignInUserWithEmailAndPasswordPressed _value,
      $Res Function(_$_SignInUserWithEmailAndPasswordPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInUserWithEmailAndPasswordPressed
    implements _SignInUserWithEmailAndPasswordPressed {
  const _$_SignInUserWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'AuthFormEvent.signInUserWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInUserWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpUserWithEmailAndPasswordPressed,
    required TResult Function() signInUserWithEmailAndPasswordPressed,
    required TResult Function(bool isSubmitting) toggleSubmitButton,
    required TResult Function(
            Option<Either<AuthFailures, Unit>> failureOrSuccess)
        errorMessageChanged,
    required TResult Function(AuthFormState state) updateState,
  }) {
    return signInUserWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? signUpUserWithEmailAndPasswordPressed,
    TResult? Function()? signInUserWithEmailAndPasswordPressed,
    TResult? Function(bool isSubmitting)? toggleSubmitButton,
    TResult? Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult? Function(AuthFormState state)? updateState,
  }) {
    return signInUserWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpUserWithEmailAndPasswordPressed,
    TResult Function()? signInUserWithEmailAndPasswordPressed,
    TResult Function(bool isSubmitting)? toggleSubmitButton,
    TResult Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult Function(AuthFormState state)? updateState,
    required TResult orElse(),
  }) {
    if (signInUserWithEmailAndPasswordPressed != null) {
      return signInUserWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpUserWithEmailAndPasswordPressed value)
        signUpUserWithEmailAndPasswordPressed,
    required TResult Function(_SignInUserWithEmailAndPasswordPressed value)
        signInUserWithEmailAndPasswordPressed,
    required TResult Function(_ToggleSubmitButton value) toggleSubmitButton,
    required TResult Function(_ErrorMessageChanged value) errorMessageChanged,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return signInUserWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult? Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult? Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult? Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return signInUserWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (signInUserWithEmailAndPasswordPressed != null) {
      return signInUserWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInUserWithEmailAndPasswordPressed implements AuthFormEvent {
  const factory _SignInUserWithEmailAndPasswordPressed() =
      _$_SignInUserWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$$_ToggleSubmitButtonCopyWith<$Res> {
  factory _$$_ToggleSubmitButtonCopyWith(_$_ToggleSubmitButton value,
          $Res Function(_$_ToggleSubmitButton) then) =
      __$$_ToggleSubmitButtonCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSubmitting});
}

/// @nodoc
class __$$_ToggleSubmitButtonCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res, _$_ToggleSubmitButton>
    implements _$$_ToggleSubmitButtonCopyWith<$Res> {
  __$$_ToggleSubmitButtonCopyWithImpl(
      _$_ToggleSubmitButton _value, $Res Function(_$_ToggleSubmitButton) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
  }) {
    return _then(_$_ToggleSubmitButton(
      null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ToggleSubmitButton implements _ToggleSubmitButton {
  const _$_ToggleSubmitButton(this.isSubmitting);

  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'AuthFormEvent.toggleSubmitButton(isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleSubmitButton &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleSubmitButtonCopyWith<_$_ToggleSubmitButton> get copyWith =>
      __$$_ToggleSubmitButtonCopyWithImpl<_$_ToggleSubmitButton>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpUserWithEmailAndPasswordPressed,
    required TResult Function() signInUserWithEmailAndPasswordPressed,
    required TResult Function(bool isSubmitting) toggleSubmitButton,
    required TResult Function(
            Option<Either<AuthFailures, Unit>> failureOrSuccess)
        errorMessageChanged,
    required TResult Function(AuthFormState state) updateState,
  }) {
    return toggleSubmitButton(isSubmitting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? signUpUserWithEmailAndPasswordPressed,
    TResult? Function()? signInUserWithEmailAndPasswordPressed,
    TResult? Function(bool isSubmitting)? toggleSubmitButton,
    TResult? Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult? Function(AuthFormState state)? updateState,
  }) {
    return toggleSubmitButton?.call(isSubmitting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpUserWithEmailAndPasswordPressed,
    TResult Function()? signInUserWithEmailAndPasswordPressed,
    TResult Function(bool isSubmitting)? toggleSubmitButton,
    TResult Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult Function(AuthFormState state)? updateState,
    required TResult orElse(),
  }) {
    if (toggleSubmitButton != null) {
      return toggleSubmitButton(isSubmitting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpUserWithEmailAndPasswordPressed value)
        signUpUserWithEmailAndPasswordPressed,
    required TResult Function(_SignInUserWithEmailAndPasswordPressed value)
        signInUserWithEmailAndPasswordPressed,
    required TResult Function(_ToggleSubmitButton value) toggleSubmitButton,
    required TResult Function(_ErrorMessageChanged value) errorMessageChanged,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return toggleSubmitButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult? Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult? Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult? Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return toggleSubmitButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (toggleSubmitButton != null) {
      return toggleSubmitButton(this);
    }
    return orElse();
  }
}

abstract class _ToggleSubmitButton implements AuthFormEvent {
  const factory _ToggleSubmitButton(final bool isSubmitting) =
      _$_ToggleSubmitButton;

  bool get isSubmitting;
  @JsonKey(ignore: true)
  _$$_ToggleSubmitButtonCopyWith<_$_ToggleSubmitButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorMessageChangedCopyWith<$Res> {
  factory _$$_ErrorMessageChangedCopyWith(_$_ErrorMessageChanged value,
          $Res Function(_$_ErrorMessageChanged) then) =
      __$$_ErrorMessageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Either<AuthFailures, Unit>> failureOrSuccess});
}

/// @nodoc
class __$$_ErrorMessageChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res, _$_ErrorMessageChanged>
    implements _$$_ErrorMessageChangedCopyWith<$Res> {
  __$$_ErrorMessageChangedCopyWithImpl(_$_ErrorMessageChanged _value,
      $Res Function(_$_ErrorMessageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSuccess = null,
  }) {
    return _then(_$_ErrorMessageChanged(
      null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ErrorMessageChanged implements _ErrorMessageChanged {
  const _$_ErrorMessageChanged(this.failureOrSuccess);

  @override
  final Option<Either<AuthFailures, Unit>> failureOrSuccess;

  @override
  String toString() {
    return 'AuthFormEvent.errorMessageChanged(failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorMessageChanged &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorMessageChangedCopyWith<_$_ErrorMessageChanged> get copyWith =>
      __$$_ErrorMessageChangedCopyWithImpl<_$_ErrorMessageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpUserWithEmailAndPasswordPressed,
    required TResult Function() signInUserWithEmailAndPasswordPressed,
    required TResult Function(bool isSubmitting) toggleSubmitButton,
    required TResult Function(
            Option<Either<AuthFailures, Unit>> failureOrSuccess)
        errorMessageChanged,
    required TResult Function(AuthFormState state) updateState,
  }) {
    return errorMessageChanged(failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? signUpUserWithEmailAndPasswordPressed,
    TResult? Function()? signInUserWithEmailAndPasswordPressed,
    TResult? Function(bool isSubmitting)? toggleSubmitButton,
    TResult? Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult? Function(AuthFormState state)? updateState,
  }) {
    return errorMessageChanged?.call(failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpUserWithEmailAndPasswordPressed,
    TResult Function()? signInUserWithEmailAndPasswordPressed,
    TResult Function(bool isSubmitting)? toggleSubmitButton,
    TResult Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult Function(AuthFormState state)? updateState,
    required TResult orElse(),
  }) {
    if (errorMessageChanged != null) {
      return errorMessageChanged(failureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpUserWithEmailAndPasswordPressed value)
        signUpUserWithEmailAndPasswordPressed,
    required TResult Function(_SignInUserWithEmailAndPasswordPressed value)
        signInUserWithEmailAndPasswordPressed,
    required TResult Function(_ToggleSubmitButton value) toggleSubmitButton,
    required TResult Function(_ErrorMessageChanged value) errorMessageChanged,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return errorMessageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult? Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult? Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult? Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return errorMessageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (errorMessageChanged != null) {
      return errorMessageChanged(this);
    }
    return orElse();
  }
}

abstract class _ErrorMessageChanged implements AuthFormEvent {
  const factory _ErrorMessageChanged(
          final Option<Either<AuthFailures, Unit>> failureOrSuccess) =
      _$_ErrorMessageChanged;

  Option<Either<AuthFailures, Unit>> get failureOrSuccess;
  @JsonKey(ignore: true)
  _$$_ErrorMessageChangedCopyWith<_$_ErrorMessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateStateCopyWith<$Res> {
  factory _$$_UpdateStateCopyWith(
          _$_UpdateState value, $Res Function(_$_UpdateState) then) =
      __$$_UpdateStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFormState state});

  $AuthFormStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_UpdateStateCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res, _$_UpdateState>
    implements _$$_UpdateStateCopyWith<$Res> {
  __$$_UpdateStateCopyWithImpl(
      _$_UpdateState _value, $Res Function(_$_UpdateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_UpdateState(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AuthFormState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFormStateCopyWith<$Res> get state {
    return $AuthFormStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_UpdateState implements _UpdateState {
  const _$_UpdateState(this.state);

  @override
  final AuthFormState state;

  @override
  String toString() {
    return 'AuthFormEvent.updateState(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateState &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateStateCopyWith<_$_UpdateState> get copyWith =>
      __$$_UpdateStateCopyWithImpl<_$_UpdateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpUserWithEmailAndPasswordPressed,
    required TResult Function() signInUserWithEmailAndPasswordPressed,
    required TResult Function(bool isSubmitting) toggleSubmitButton,
    required TResult Function(
            Option<Either<AuthFailures, Unit>> failureOrSuccess)
        errorMessageChanged,
    required TResult Function(AuthFormState state) updateState,
  }) {
    return updateState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? signUpUserWithEmailAndPasswordPressed,
    TResult? Function()? signInUserWithEmailAndPasswordPressed,
    TResult? Function(bool isSubmitting)? toggleSubmitButton,
    TResult? Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult? Function(AuthFormState state)? updateState,
  }) {
    return updateState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpUserWithEmailAndPasswordPressed,
    TResult Function()? signInUserWithEmailAndPasswordPressed,
    TResult Function(bool isSubmitting)? toggleSubmitButton,
    TResult Function(Option<Either<AuthFailures, Unit>> failureOrSuccess)?
        errorMessageChanged,
    TResult Function(AuthFormState state)? updateState,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpUserWithEmailAndPasswordPressed value)
        signUpUserWithEmailAndPasswordPressed,
    required TResult Function(_SignInUserWithEmailAndPasswordPressed value)
        signInUserWithEmailAndPasswordPressed,
    required TResult Function(_ToggleSubmitButton value) toggleSubmitButton,
    required TResult Function(_ErrorMessageChanged value) errorMessageChanged,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return updateState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult? Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult? Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult? Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return updateState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpUserWithEmailAndPasswordPressed value)?
        signUpUserWithEmailAndPasswordPressed,
    TResult Function(_SignInUserWithEmailAndPasswordPressed value)?
        signInUserWithEmailAndPasswordPressed,
    TResult Function(_ToggleSubmitButton value)? toggleSubmitButton,
    TResult Function(_ErrorMessageChanged value)? errorMessageChanged,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState(this);
    }
    return orElse();
  }
}

abstract class _UpdateState implements AuthFormEvent {
  const factory _UpdateState(final AuthFormState state) = _$_UpdateState;

  AuthFormState get state;
  @JsonKey(ignore: true)
  _$$_UpdateStateCopyWith<_$_UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  PasswordVO get passwordVO => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailures, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFormStateCopyWith<AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormStateCopyWith<$Res> {
  factory $AuthFormStateCopyWith(
          AuthFormState value, $Res Function(AuthFormState) then) =
      _$AuthFormStateCopyWithImpl<$Res, AuthFormState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      PasswordVO passwordVO,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$AuthFormStateCopyWithImpl<$Res, $Val extends AuthFormState>
    implements $AuthFormStateCopyWith<$Res> {
  _$AuthFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? passwordVO = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      passwordVO: null == passwordVO
          ? _value.passwordVO
          : passwordVO // ignore: cast_nullable_to_non_nullable
              as PasswordVO,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailures, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInFormStateCopyWith<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  factory _$$_SignInFormStateCopyWith(
          _$_SignInFormState value, $Res Function(_$_SignInFormState) then) =
      __$$_SignInFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      PasswordVO passwordVO,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_SignInFormStateCopyWithImpl<$Res>
    extends _$AuthFormStateCopyWithImpl<$Res, _$_SignInFormState>
    implements _$$_SignInFormStateCopyWith<$Res> {
  __$$_SignInFormStateCopyWithImpl(
      _$_SignInFormState _value, $Res Function(_$_SignInFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? passwordVO = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_SignInFormState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      passwordVO: null == passwordVO
          ? _value.passwordVO
          : passwordVO // ignore: cast_nullable_to_non_nullable
              as PasswordVO,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.emailAddress,
      required this.passwordVO,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final PasswordVO passwordVO;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthFormState(emailAddress: $emailAddress, passwordVO: $passwordVO, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.passwordVO, passwordVO) ||
                other.passwordVO == passwordVO) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, passwordVO,
      isSubmitting, showErrorMessages, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      __$$_SignInFormStateCopyWithImpl<_$_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements AuthFormState {
  const factory _SignInFormState(
      {required final EmailAddress emailAddress,
      required final PasswordVO passwordVO,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final Option<Either<AuthFailures, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  PasswordVO get passwordVO;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailures, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
