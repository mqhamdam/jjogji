// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSigned,
    required TResult Function() userSignedOut,
    required TResult Function() getSignedUserCredentials,
    required TResult Function() listenToAuthChanges,
    required TResult Function() signOutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSigned,
    TResult? Function()? userSignedOut,
    TResult? Function()? getSignedUserCredentials,
    TResult? Function()? listenToAuthChanges,
    TResult? Function()? signOutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSigned,
    TResult Function()? userSignedOut,
    TResult Function()? getSignedUserCredentials,
    TResult Function()? listenToAuthChanges,
    TResult Function()? signOutButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSignedEvent value) userSigned,
    required TResult Function(_UserSignedOutEvent value) userSignedOut,
    required TResult Function(_GetSignedUserCredentialsEvent value)
        getSignedUserCredentials,
    required TResult Function(_ListenToAuthChangesEvent value)
        listenToAuthChanges,
    required TResult Function(_SignOutButtonPressedEvent value)
        signOutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserSignedEvent value)? userSigned,
    TResult? Function(_UserSignedOutEvent value)? userSignedOut,
    TResult? Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult? Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult? Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSignedEvent value)? userSigned,
    TResult Function(_UserSignedOutEvent value)? userSignedOut,
    TResult Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserSignedEventCopyWith<$Res> {
  factory _$$_UserSignedEventCopyWith(
          _$_UserSignedEvent value, $Res Function(_$_UserSignedEvent) then) =
      __$$_UserSignedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserSignedEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UserSignedEvent>
    implements _$$_UserSignedEventCopyWith<$Res> {
  __$$_UserSignedEventCopyWithImpl(
      _$_UserSignedEvent _value, $Res Function(_$_UserSignedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserSignedEvent implements _UserSignedEvent {
  const _$_UserSignedEvent();

  @override
  String toString() {
    return 'AuthEvent.userSigned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserSignedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSigned,
    required TResult Function() userSignedOut,
    required TResult Function() getSignedUserCredentials,
    required TResult Function() listenToAuthChanges,
    required TResult Function() signOutButtonPressed,
  }) {
    return userSigned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSigned,
    TResult? Function()? userSignedOut,
    TResult? Function()? getSignedUserCredentials,
    TResult? Function()? listenToAuthChanges,
    TResult? Function()? signOutButtonPressed,
  }) {
    return userSigned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSigned,
    TResult Function()? userSignedOut,
    TResult Function()? getSignedUserCredentials,
    TResult Function()? listenToAuthChanges,
    TResult Function()? signOutButtonPressed,
    required TResult orElse(),
  }) {
    if (userSigned != null) {
      return userSigned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSignedEvent value) userSigned,
    required TResult Function(_UserSignedOutEvent value) userSignedOut,
    required TResult Function(_GetSignedUserCredentialsEvent value)
        getSignedUserCredentials,
    required TResult Function(_ListenToAuthChangesEvent value)
        listenToAuthChanges,
    required TResult Function(_SignOutButtonPressedEvent value)
        signOutButtonPressed,
  }) {
    return userSigned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserSignedEvent value)? userSigned,
    TResult? Function(_UserSignedOutEvent value)? userSignedOut,
    TResult? Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult? Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult? Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
  }) {
    return userSigned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSignedEvent value)? userSigned,
    TResult Function(_UserSignedOutEvent value)? userSignedOut,
    TResult Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
    required TResult orElse(),
  }) {
    if (userSigned != null) {
      return userSigned(this);
    }
    return orElse();
  }
}

abstract class _UserSignedEvent implements AuthEvent {
  const factory _UserSignedEvent() = _$_UserSignedEvent;
}

/// @nodoc
abstract class _$$_UserSignedOutEventCopyWith<$Res> {
  factory _$$_UserSignedOutEventCopyWith(_$_UserSignedOutEvent value,
          $Res Function(_$_UserSignedOutEvent) then) =
      __$$_UserSignedOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserSignedOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UserSignedOutEvent>
    implements _$$_UserSignedOutEventCopyWith<$Res> {
  __$$_UserSignedOutEventCopyWithImpl(
      _$_UserSignedOutEvent _value, $Res Function(_$_UserSignedOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserSignedOutEvent implements _UserSignedOutEvent {
  const _$_UserSignedOutEvent();

  @override
  String toString() {
    return 'AuthEvent.userSignedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserSignedOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSigned,
    required TResult Function() userSignedOut,
    required TResult Function() getSignedUserCredentials,
    required TResult Function() listenToAuthChanges,
    required TResult Function() signOutButtonPressed,
  }) {
    return userSignedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSigned,
    TResult? Function()? userSignedOut,
    TResult? Function()? getSignedUserCredentials,
    TResult? Function()? listenToAuthChanges,
    TResult? Function()? signOutButtonPressed,
  }) {
    return userSignedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSigned,
    TResult Function()? userSignedOut,
    TResult Function()? getSignedUserCredentials,
    TResult Function()? listenToAuthChanges,
    TResult Function()? signOutButtonPressed,
    required TResult orElse(),
  }) {
    if (userSignedOut != null) {
      return userSignedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSignedEvent value) userSigned,
    required TResult Function(_UserSignedOutEvent value) userSignedOut,
    required TResult Function(_GetSignedUserCredentialsEvent value)
        getSignedUserCredentials,
    required TResult Function(_ListenToAuthChangesEvent value)
        listenToAuthChanges,
    required TResult Function(_SignOutButtonPressedEvent value)
        signOutButtonPressed,
  }) {
    return userSignedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserSignedEvent value)? userSigned,
    TResult? Function(_UserSignedOutEvent value)? userSignedOut,
    TResult? Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult? Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult? Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
  }) {
    return userSignedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSignedEvent value)? userSigned,
    TResult Function(_UserSignedOutEvent value)? userSignedOut,
    TResult Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
    required TResult orElse(),
  }) {
    if (userSignedOut != null) {
      return userSignedOut(this);
    }
    return orElse();
  }
}

abstract class _UserSignedOutEvent implements AuthEvent {
  const factory _UserSignedOutEvent() = _$_UserSignedOutEvent;
}

/// @nodoc
abstract class _$$_GetSignedUserCredentialsEventCopyWith<$Res> {
  factory _$$_GetSignedUserCredentialsEventCopyWith(
          _$_GetSignedUserCredentialsEvent value,
          $Res Function(_$_GetSignedUserCredentialsEvent) then) =
      __$$_GetSignedUserCredentialsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetSignedUserCredentialsEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_GetSignedUserCredentialsEvent>
    implements _$$_GetSignedUserCredentialsEventCopyWith<$Res> {
  __$$_GetSignedUserCredentialsEventCopyWithImpl(
      _$_GetSignedUserCredentialsEvent _value,
      $Res Function(_$_GetSignedUserCredentialsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSignedUserCredentialsEvent
    implements _GetSignedUserCredentialsEvent {
  const _$_GetSignedUserCredentialsEvent();

  @override
  String toString() {
    return 'AuthEvent.getSignedUserCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSignedUserCredentialsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSigned,
    required TResult Function() userSignedOut,
    required TResult Function() getSignedUserCredentials,
    required TResult Function() listenToAuthChanges,
    required TResult Function() signOutButtonPressed,
  }) {
    return getSignedUserCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSigned,
    TResult? Function()? userSignedOut,
    TResult? Function()? getSignedUserCredentials,
    TResult? Function()? listenToAuthChanges,
    TResult? Function()? signOutButtonPressed,
  }) {
    return getSignedUserCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSigned,
    TResult Function()? userSignedOut,
    TResult Function()? getSignedUserCredentials,
    TResult Function()? listenToAuthChanges,
    TResult Function()? signOutButtonPressed,
    required TResult orElse(),
  }) {
    if (getSignedUserCredentials != null) {
      return getSignedUserCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSignedEvent value) userSigned,
    required TResult Function(_UserSignedOutEvent value) userSignedOut,
    required TResult Function(_GetSignedUserCredentialsEvent value)
        getSignedUserCredentials,
    required TResult Function(_ListenToAuthChangesEvent value)
        listenToAuthChanges,
    required TResult Function(_SignOutButtonPressedEvent value)
        signOutButtonPressed,
  }) {
    return getSignedUserCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserSignedEvent value)? userSigned,
    TResult? Function(_UserSignedOutEvent value)? userSignedOut,
    TResult? Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult? Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult? Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
  }) {
    return getSignedUserCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSignedEvent value)? userSigned,
    TResult Function(_UserSignedOutEvent value)? userSignedOut,
    TResult Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
    required TResult orElse(),
  }) {
    if (getSignedUserCredentials != null) {
      return getSignedUserCredentials(this);
    }
    return orElse();
  }
}

abstract class _GetSignedUserCredentialsEvent implements AuthEvent {
  const factory _GetSignedUserCredentialsEvent() =
      _$_GetSignedUserCredentialsEvent;
}

/// @nodoc
abstract class _$$_ListenToAuthChangesEventCopyWith<$Res> {
  factory _$$_ListenToAuthChangesEventCopyWith(
          _$_ListenToAuthChangesEvent value,
          $Res Function(_$_ListenToAuthChangesEvent) then) =
      __$$_ListenToAuthChangesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ListenToAuthChangesEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ListenToAuthChangesEvent>
    implements _$$_ListenToAuthChangesEventCopyWith<$Res> {
  __$$_ListenToAuthChangesEventCopyWithImpl(_$_ListenToAuthChangesEvent _value,
      $Res Function(_$_ListenToAuthChangesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ListenToAuthChangesEvent implements _ListenToAuthChangesEvent {
  const _$_ListenToAuthChangesEvent();

  @override
  String toString() {
    return 'AuthEvent.listenToAuthChanges()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListenToAuthChangesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSigned,
    required TResult Function() userSignedOut,
    required TResult Function() getSignedUserCredentials,
    required TResult Function() listenToAuthChanges,
    required TResult Function() signOutButtonPressed,
  }) {
    return listenToAuthChanges();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSigned,
    TResult? Function()? userSignedOut,
    TResult? Function()? getSignedUserCredentials,
    TResult? Function()? listenToAuthChanges,
    TResult? Function()? signOutButtonPressed,
  }) {
    return listenToAuthChanges?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSigned,
    TResult Function()? userSignedOut,
    TResult Function()? getSignedUserCredentials,
    TResult Function()? listenToAuthChanges,
    TResult Function()? signOutButtonPressed,
    required TResult orElse(),
  }) {
    if (listenToAuthChanges != null) {
      return listenToAuthChanges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSignedEvent value) userSigned,
    required TResult Function(_UserSignedOutEvent value) userSignedOut,
    required TResult Function(_GetSignedUserCredentialsEvent value)
        getSignedUserCredentials,
    required TResult Function(_ListenToAuthChangesEvent value)
        listenToAuthChanges,
    required TResult Function(_SignOutButtonPressedEvent value)
        signOutButtonPressed,
  }) {
    return listenToAuthChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserSignedEvent value)? userSigned,
    TResult? Function(_UserSignedOutEvent value)? userSignedOut,
    TResult? Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult? Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult? Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
  }) {
    return listenToAuthChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSignedEvent value)? userSigned,
    TResult Function(_UserSignedOutEvent value)? userSignedOut,
    TResult Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
    required TResult orElse(),
  }) {
    if (listenToAuthChanges != null) {
      return listenToAuthChanges(this);
    }
    return orElse();
  }
}

abstract class _ListenToAuthChangesEvent implements AuthEvent {
  const factory _ListenToAuthChangesEvent() = _$_ListenToAuthChangesEvent;
}

/// @nodoc
abstract class _$$_SignOutButtonPressedEventCopyWith<$Res> {
  factory _$$_SignOutButtonPressedEventCopyWith(
          _$_SignOutButtonPressedEvent value,
          $Res Function(_$_SignOutButtonPressedEvent) then) =
      __$$_SignOutButtonPressedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutButtonPressedEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignOutButtonPressedEvent>
    implements _$$_SignOutButtonPressedEventCopyWith<$Res> {
  __$$_SignOutButtonPressedEventCopyWithImpl(
      _$_SignOutButtonPressedEvent _value,
      $Res Function(_$_SignOutButtonPressedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOutButtonPressedEvent implements _SignOutButtonPressedEvent {
  const _$_SignOutButtonPressedEvent();

  @override
  String toString() {
    return 'AuthEvent.signOutButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignOutButtonPressedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSigned,
    required TResult Function() userSignedOut,
    required TResult Function() getSignedUserCredentials,
    required TResult Function() listenToAuthChanges,
    required TResult Function() signOutButtonPressed,
  }) {
    return signOutButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSigned,
    TResult? Function()? userSignedOut,
    TResult? Function()? getSignedUserCredentials,
    TResult? Function()? listenToAuthChanges,
    TResult? Function()? signOutButtonPressed,
  }) {
    return signOutButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSigned,
    TResult Function()? userSignedOut,
    TResult Function()? getSignedUserCredentials,
    TResult Function()? listenToAuthChanges,
    TResult Function()? signOutButtonPressed,
    required TResult orElse(),
  }) {
    if (signOutButtonPressed != null) {
      return signOutButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSignedEvent value) userSigned,
    required TResult Function(_UserSignedOutEvent value) userSignedOut,
    required TResult Function(_GetSignedUserCredentialsEvent value)
        getSignedUserCredentials,
    required TResult Function(_ListenToAuthChangesEvent value)
        listenToAuthChanges,
    required TResult Function(_SignOutButtonPressedEvent value)
        signOutButtonPressed,
  }) {
    return signOutButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserSignedEvent value)? userSigned,
    TResult? Function(_UserSignedOutEvent value)? userSignedOut,
    TResult? Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult? Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult? Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
  }) {
    return signOutButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSignedEvent value)? userSigned,
    TResult Function(_UserSignedOutEvent value)? userSignedOut,
    TResult Function(_GetSignedUserCredentialsEvent value)?
        getSignedUserCredentials,
    TResult Function(_ListenToAuthChangesEvent value)? listenToAuthChanges,
    TResult Function(_SignOutButtonPressedEvent value)? signOutButtonPressed,
    required TResult orElse(),
  }) {
    if (signOutButtonPressed != null) {
      return signOutButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SignOutButtonPressedEvent implements AuthEvent {
  const factory _SignOutButtonPressedEvent() = _$_SignOutButtonPressedEvent;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthLoadingCopyWith<$Res> {
  factory _$$_AuthLoadingCopyWith(
          _$_AuthLoading value, $Res Function(_$_AuthLoading) then) =
      __$$_AuthLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthLoading>
    implements _$$_AuthLoadingCopyWith<$Res> {
  __$$_AuthLoadingCopyWithImpl(
      _$_AuthLoading _value, $Res Function(_$_AuthLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthLoading implements _AuthLoading {
  const _$_AuthLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthLoading implements AuthState {
  const factory _AuthLoading() = _$_AuthLoading;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthState {
  const factory _UnAuthenticated() = _$_UnAuthenticated;
}
