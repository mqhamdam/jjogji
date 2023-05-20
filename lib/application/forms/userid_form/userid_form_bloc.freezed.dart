// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'userid_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UseridFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userIDStr) userIDChanged,
    required TResult Function() saveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userIDStr)? userIDChanged,
    TResult? Function()? saveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userIDStr)? userIDChanged,
    TResult Function()? saveButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserIDChanged value) userIDChanged,
    required TResult Function(_SaveButtonPressed value) saveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserIDChanged value)? userIDChanged,
    TResult? Function(_SaveButtonPressed value)? saveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserIDChanged value)? userIDChanged,
    TResult Function(_SaveButtonPressed value)? saveButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UseridFormEventCopyWith<$Res> {
  factory $UseridFormEventCopyWith(
          UseridFormEvent value, $Res Function(UseridFormEvent) then) =
      _$UseridFormEventCopyWithImpl<$Res, UseridFormEvent>;
}

/// @nodoc
class _$UseridFormEventCopyWithImpl<$Res, $Val extends UseridFormEvent>
    implements $UseridFormEventCopyWith<$Res> {
  _$UseridFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$UseridFormEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'UseridFormEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userIDStr) userIDChanged,
    required TResult Function() saveButtonPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userIDStr)? userIDChanged,
    TResult? Function()? saveButtonPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userIDStr)? userIDChanged,
    TResult Function()? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserIDChanged value) userIDChanged,
    required TResult Function(_SaveButtonPressed value) saveButtonPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserIDChanged value)? userIDChanged,
    TResult? Function(_SaveButtonPressed value)? saveButtonPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserIDChanged value)? userIDChanged,
    TResult Function(_SaveButtonPressed value)? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UseridFormEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_UserIDChangedCopyWith<$Res> {
  factory _$$_UserIDChangedCopyWith(
          _$_UserIDChanged value, $Res Function(_$_UserIDChanged) then) =
      __$$_UserIDChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String userIDStr});
}

/// @nodoc
class __$$_UserIDChangedCopyWithImpl<$Res>
    extends _$UseridFormEventCopyWithImpl<$Res, _$_UserIDChanged>
    implements _$$_UserIDChangedCopyWith<$Res> {
  __$$_UserIDChangedCopyWithImpl(
      _$_UserIDChanged _value, $Res Function(_$_UserIDChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIDStr = null,
  }) {
    return _then(_$_UserIDChanged(
      null == userIDStr
          ? _value.userIDStr
          : userIDStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserIDChanged implements _UserIDChanged {
  const _$_UserIDChanged(this.userIDStr);

  @override
  final String userIDStr;

  @override
  String toString() {
    return 'UseridFormEvent.userIDChanged(userIDStr: $userIDStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserIDChanged &&
            (identical(other.userIDStr, userIDStr) ||
                other.userIDStr == userIDStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userIDStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserIDChangedCopyWith<_$_UserIDChanged> get copyWith =>
      __$$_UserIDChangedCopyWithImpl<_$_UserIDChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userIDStr) userIDChanged,
    required TResult Function() saveButtonPressed,
  }) {
    return userIDChanged(userIDStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userIDStr)? userIDChanged,
    TResult? Function()? saveButtonPressed,
  }) {
    return userIDChanged?.call(userIDStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userIDStr)? userIDChanged,
    TResult Function()? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (userIDChanged != null) {
      return userIDChanged(userIDStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserIDChanged value) userIDChanged,
    required TResult Function(_SaveButtonPressed value) saveButtonPressed,
  }) {
    return userIDChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserIDChanged value)? userIDChanged,
    TResult? Function(_SaveButtonPressed value)? saveButtonPressed,
  }) {
    return userIDChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserIDChanged value)? userIDChanged,
    TResult Function(_SaveButtonPressed value)? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (userIDChanged != null) {
      return userIDChanged(this);
    }
    return orElse();
  }
}

abstract class _UserIDChanged implements UseridFormEvent {
  const factory _UserIDChanged(final String userIDStr) = _$_UserIDChanged;

  String get userIDStr;
  @JsonKey(ignore: true)
  _$$_UserIDChangedCopyWith<_$_UserIDChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveButtonPressedCopyWith<$Res> {
  factory _$$_SaveButtonPressedCopyWith(_$_SaveButtonPressed value,
          $Res Function(_$_SaveButtonPressed) then) =
      __$$_SaveButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveButtonPressedCopyWithImpl<$Res>
    extends _$UseridFormEventCopyWithImpl<$Res, _$_SaveButtonPressed>
    implements _$$_SaveButtonPressedCopyWith<$Res> {
  __$$_SaveButtonPressedCopyWithImpl(
      _$_SaveButtonPressed _value, $Res Function(_$_SaveButtonPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveButtonPressed implements _SaveButtonPressed {
  const _$_SaveButtonPressed();

  @override
  String toString() {
    return 'UseridFormEvent.saveButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userIDStr) userIDChanged,
    required TResult Function() saveButtonPressed,
  }) {
    return saveButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userIDStr)? userIDChanged,
    TResult? Function()? saveButtonPressed,
  }) {
    return saveButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userIDStr)? userIDChanged,
    TResult Function()? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (saveButtonPressed != null) {
      return saveButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserIDChanged value) userIDChanged,
    required TResult Function(_SaveButtonPressed value) saveButtonPressed,
  }) {
    return saveButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserIDChanged value)? userIDChanged,
    TResult? Function(_SaveButtonPressed value)? saveButtonPressed,
  }) {
    return saveButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserIDChanged value)? userIDChanged,
    TResult Function(_SaveButtonPressed value)? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (saveButtonPressed != null) {
      return saveButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SaveButtonPressed implements UseridFormEvent {
  const factory _SaveButtonPressed() = _$_SaveButtonPressed;
}

/// @nodoc
mixin _$UseridFormState {
  UserID get userID => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UseridFormStateCopyWith<UseridFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UseridFormStateCopyWith<$Res> {
  factory $UseridFormStateCopyWith(
          UseridFormState value, $Res Function(UseridFormState) then) =
      _$UseridFormStateCopyWithImpl<$Res, UseridFormState>;
  @useResult
  $Res call({UserID userID, bool isSuccess, bool isFetching});
}

/// @nodoc
class _$UseridFormStateCopyWithImpl<$Res, $Val extends UseridFormState>
    implements $UseridFormStateCopyWith<$Res> {
  _$UseridFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? isSuccess = null,
    Object? isFetching = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UseridFormStateCopyWith<$Res>
    implements $UseridFormStateCopyWith<$Res> {
  factory _$$_UseridFormStateCopyWith(
          _$_UseridFormState value, $Res Function(_$_UseridFormState) then) =
      __$$_UseridFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserID userID, bool isSuccess, bool isFetching});
}

/// @nodoc
class __$$_UseridFormStateCopyWithImpl<$Res>
    extends _$UseridFormStateCopyWithImpl<$Res, _$_UseridFormState>
    implements _$$_UseridFormStateCopyWith<$Res> {
  __$$_UseridFormStateCopyWithImpl(
      _$_UseridFormState _value, $Res Function(_$_UseridFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? isSuccess = null,
    Object? isFetching = null,
  }) {
    return _then(_$_UseridFormState(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UseridFormState implements _UseridFormState {
  _$_UseridFormState(
      {required this.userID,
      required this.isSuccess,
      required this.isFetching});

  @override
  final UserID userID;
  @override
  final bool isSuccess;
  @override
  final bool isFetching;

  @override
  String toString() {
    return 'UseridFormState(userID: $userID, isSuccess: $isSuccess, isFetching: $isFetching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UseridFormState &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, isSuccess, isFetching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UseridFormStateCopyWith<_$_UseridFormState> get copyWith =>
      __$$_UseridFormStateCopyWithImpl<_$_UseridFormState>(this, _$identity);
}

abstract class _UseridFormState implements UseridFormState {
  factory _UseridFormState(
      {required final UserID userID,
      required final bool isSuccess,
      required final bool isFetching}) = _$_UseridFormState;

  @override
  UserID get userID;
  @override
  bool get isSuccess;
  @override
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$$_UseridFormStateCopyWith<_$_UseridFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
