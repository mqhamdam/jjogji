// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String langCode) changeTranslateLang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String langCode)? changeTranslateLang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String langCode)? changeTranslateLang,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTranslateLang value) changeTranslateLang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTranslateLang value)? changeTranslateLang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTranslateLang value)? changeTranslateLang,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

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
    extends _$AppEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppEvent.started()';
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
    required TResult Function(String langCode) changeTranslateLang,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String langCode)? changeTranslateLang,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String langCode)? changeTranslateLang,
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
    required TResult Function(_ChangeTranslateLang value) changeTranslateLang,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTranslateLang value)? changeTranslateLang,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTranslateLang value)? changeTranslateLang,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangeTranslateLangCopyWith<$Res> {
  factory _$$_ChangeTranslateLangCopyWith(_$_ChangeTranslateLang value,
          $Res Function(_$_ChangeTranslateLang) then) =
      __$$_ChangeTranslateLangCopyWithImpl<$Res>;
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class __$$_ChangeTranslateLangCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_ChangeTranslateLang>
    implements _$$_ChangeTranslateLangCopyWith<$Res> {
  __$$_ChangeTranslateLangCopyWithImpl(_$_ChangeTranslateLang _value,
      $Res Function(_$_ChangeTranslateLang) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langCode = null,
  }) {
    return _then(_$_ChangeTranslateLang(
      null == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeTranslateLang implements _ChangeTranslateLang {
  const _$_ChangeTranslateLang(this.langCode);

  @override
  final String langCode;

  @override
  String toString() {
    return 'AppEvent.changeTranslateLang(langCode: $langCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTranslateLang &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, langCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTranslateLangCopyWith<_$_ChangeTranslateLang> get copyWith =>
      __$$_ChangeTranslateLangCopyWithImpl<_$_ChangeTranslateLang>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String langCode) changeTranslateLang,
  }) {
    return changeTranslateLang(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String langCode)? changeTranslateLang,
  }) {
    return changeTranslateLang?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String langCode)? changeTranslateLang,
    required TResult orElse(),
  }) {
    if (changeTranslateLang != null) {
      return changeTranslateLang(langCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTranslateLang value) changeTranslateLang,
  }) {
    return changeTranslateLang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTranslateLang value)? changeTranslateLang,
  }) {
    return changeTranslateLang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTranslateLang value)? changeTranslateLang,
    required TResult orElse(),
  }) {
    if (changeTranslateLang != null) {
      return changeTranslateLang(this);
    }
    return orElse();
  }
}

abstract class _ChangeTranslateLang implements AppEvent {
  const factory _ChangeTranslateLang(final String langCode) =
      _$_ChangeTranslateLang;

  String get langCode;
  @JsonKey(ignore: true)
  _$$_ChangeTranslateLangCopyWith<_$_ChangeTranslateLang> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  User? get user => throw _privateConstructorUsedError;
  int get notificationsCount => throw _privateConstructorUsedError;
  String get currentTranslateLang => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({User? user, int notificationsCount, String currentTranslateLang});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? notificationsCount = null,
    Object? currentTranslateLang = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      notificationsCount: null == notificationsCount
          ? _value.notificationsCount
          : notificationsCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentTranslateLang: null == currentTranslateLang
          ? _value.currentTranslateLang
          : currentTranslateLang // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, int notificationsCount, String currentTranslateLang});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? notificationsCount = null,
    Object? currentTranslateLang = null,
  }) {
    return _then(_$_AppState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      notificationsCount: null == notificationsCount
          ? _value.notificationsCount
          : notificationsCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentTranslateLang: null == currentTranslateLang
          ? _value.currentTranslateLang
          : currentTranslateLang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {required this.user,
      required this.notificationsCount,
      required this.currentTranslateLang});

  @override
  final User? user;
  @override
  final int notificationsCount;
  @override
  final String currentTranslateLang;

  @override
  String toString() {
    return 'AppState(user: $user, notificationsCount: $notificationsCount, currentTranslateLang: $currentTranslateLang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.notificationsCount, notificationsCount) ||
                other.notificationsCount == notificationsCount) &&
            (identical(other.currentTranslateLang, currentTranslateLang) ||
                other.currentTranslateLang == currentTranslateLang));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, notificationsCount, currentTranslateLang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final User? user,
      required final int notificationsCount,
      required final String currentTranslateLang}) = _$_AppState;

  @override
  User? get user;
  @override
  int get notificationsCount;
  @override
  String get currentTranslateLang;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
