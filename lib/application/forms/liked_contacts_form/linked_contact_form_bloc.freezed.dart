// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'linked_contact_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LinkedContactFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LinkedContact? linkedContact) started,
    required TResult Function(String urlStr) changeUrl,
    required TResult Function(LinkedService type) changeType,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LinkedContact? linkedContact)? started,
    TResult? Function(String urlStr)? changeUrl,
    TResult? Function(LinkedService type)? changeType,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LinkedContact? linkedContact)? started,
    TResult Function(String urlStr)? changeUrl,
    TResult Function(LinkedService type)? changeType,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeUrl value) changeUrl,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeUrl value)? changeUrl,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeUrl value)? changeUrl,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedContactFormEventCopyWith<$Res> {
  factory $LinkedContactFormEventCopyWith(LinkedContactFormEvent value,
          $Res Function(LinkedContactFormEvent) then) =
      _$LinkedContactFormEventCopyWithImpl<$Res, LinkedContactFormEvent>;
}

/// @nodoc
class _$LinkedContactFormEventCopyWithImpl<$Res,
        $Val extends LinkedContactFormEvent>
    implements $LinkedContactFormEventCopyWith<$Res> {
  _$LinkedContactFormEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({LinkedContact? linkedContact});

  $LinkedContactCopyWith<$Res>? get linkedContact;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$LinkedContactFormEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkedContact = freezed,
  }) {
    return _then(_$_Started(
      freezed == linkedContact
          ? _value.linkedContact
          : linkedContact // ignore: cast_nullable_to_non_nullable
              as LinkedContact?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LinkedContactCopyWith<$Res>? get linkedContact {
    if (_value.linkedContact == null) {
      return null;
    }

    return $LinkedContactCopyWith<$Res>(_value.linkedContact!, (value) {
      return _then(_value.copyWith(linkedContact: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.linkedContact);

  @override
  final LinkedContact? linkedContact;

  @override
  String toString() {
    return 'LinkedContactFormEvent.started(linkedContact: $linkedContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.linkedContact, linkedContact) ||
                other.linkedContact == linkedContact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, linkedContact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LinkedContact? linkedContact) started,
    required TResult Function(String urlStr) changeUrl,
    required TResult Function(LinkedService type) changeType,
    required TResult Function() submit,
  }) {
    return started(linkedContact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LinkedContact? linkedContact)? started,
    TResult? Function(String urlStr)? changeUrl,
    TResult? Function(LinkedService type)? changeType,
    TResult? Function()? submit,
  }) {
    return started?.call(linkedContact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LinkedContact? linkedContact)? started,
    TResult Function(String urlStr)? changeUrl,
    TResult Function(LinkedService type)? changeType,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(linkedContact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeUrl value) changeUrl,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_Submit value) submit,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeUrl value)? changeUrl,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_Submit value)? submit,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeUrl value)? changeUrl,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LinkedContactFormEvent {
  const factory _Started(final LinkedContact? linkedContact) = _$_Started;

  LinkedContact? get linkedContact;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeUrlCopyWith<$Res> {
  factory _$$_ChangeUrlCopyWith(
          _$_ChangeUrl value, $Res Function(_$_ChangeUrl) then) =
      __$$_ChangeUrlCopyWithImpl<$Res>;
  @useResult
  $Res call({String urlStr});
}

/// @nodoc
class __$$_ChangeUrlCopyWithImpl<$Res>
    extends _$LinkedContactFormEventCopyWithImpl<$Res, _$_ChangeUrl>
    implements _$$_ChangeUrlCopyWith<$Res> {
  __$$_ChangeUrlCopyWithImpl(
      _$_ChangeUrl _value, $Res Function(_$_ChangeUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlStr = null,
  }) {
    return _then(_$_ChangeUrl(
      null == urlStr
          ? _value.urlStr
          : urlStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeUrl implements _ChangeUrl {
  const _$_ChangeUrl(this.urlStr);

  @override
  final String urlStr;

  @override
  String toString() {
    return 'LinkedContactFormEvent.changeUrl(urlStr: $urlStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeUrl &&
            (identical(other.urlStr, urlStr) || other.urlStr == urlStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, urlStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeUrlCopyWith<_$_ChangeUrl> get copyWith =>
      __$$_ChangeUrlCopyWithImpl<_$_ChangeUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LinkedContact? linkedContact) started,
    required TResult Function(String urlStr) changeUrl,
    required TResult Function(LinkedService type) changeType,
    required TResult Function() submit,
  }) {
    return changeUrl(urlStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LinkedContact? linkedContact)? started,
    TResult? Function(String urlStr)? changeUrl,
    TResult? Function(LinkedService type)? changeType,
    TResult? Function()? submit,
  }) {
    return changeUrl?.call(urlStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LinkedContact? linkedContact)? started,
    TResult Function(String urlStr)? changeUrl,
    TResult Function(LinkedService type)? changeType,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeUrl != null) {
      return changeUrl(urlStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeUrl value) changeUrl,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_Submit value) submit,
  }) {
    return changeUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeUrl value)? changeUrl,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_Submit value)? submit,
  }) {
    return changeUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeUrl value)? changeUrl,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeUrl != null) {
      return changeUrl(this);
    }
    return orElse();
  }
}

abstract class _ChangeUrl implements LinkedContactFormEvent {
  const factory _ChangeUrl(final String urlStr) = _$_ChangeUrl;

  String get urlStr;
  @JsonKey(ignore: true)
  _$$_ChangeUrlCopyWith<_$_ChangeUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeTypeCopyWith<$Res> {
  factory _$$_ChangeTypeCopyWith(
          _$_ChangeType value, $Res Function(_$_ChangeType) then) =
      __$$_ChangeTypeCopyWithImpl<$Res>;
  @useResult
  $Res call({LinkedService type});
}

/// @nodoc
class __$$_ChangeTypeCopyWithImpl<$Res>
    extends _$LinkedContactFormEventCopyWithImpl<$Res, _$_ChangeType>
    implements _$$_ChangeTypeCopyWith<$Res> {
  __$$_ChangeTypeCopyWithImpl(
      _$_ChangeType _value, $Res Function(_$_ChangeType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_ChangeType(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LinkedService,
    ));
  }
}

/// @nodoc

class _$_ChangeType implements _ChangeType {
  const _$_ChangeType(this.type);

  @override
  final LinkedService type;

  @override
  String toString() {
    return 'LinkedContactFormEvent.changeType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeType &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTypeCopyWith<_$_ChangeType> get copyWith =>
      __$$_ChangeTypeCopyWithImpl<_$_ChangeType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LinkedContact? linkedContact) started,
    required TResult Function(String urlStr) changeUrl,
    required TResult Function(LinkedService type) changeType,
    required TResult Function() submit,
  }) {
    return changeType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LinkedContact? linkedContact)? started,
    TResult? Function(String urlStr)? changeUrl,
    TResult? Function(LinkedService type)? changeType,
    TResult? Function()? submit,
  }) {
    return changeType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LinkedContact? linkedContact)? started,
    TResult Function(String urlStr)? changeUrl,
    TResult Function(LinkedService type)? changeType,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeType != null) {
      return changeType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeUrl value) changeUrl,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_Submit value) submit,
  }) {
    return changeType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeUrl value)? changeUrl,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_Submit value)? submit,
  }) {
    return changeType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeUrl value)? changeUrl,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeType != null) {
      return changeType(this);
    }
    return orElse();
  }
}

abstract class _ChangeType implements LinkedContactFormEvent {
  const factory _ChangeType(final LinkedService type) = _$_ChangeType;

  LinkedService get type;
  @JsonKey(ignore: true)
  _$$_ChangeTypeCopyWith<_$_ChangeType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$LinkedContactFormEventCopyWithImpl<$Res, _$_Submit>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'LinkedContactFormEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LinkedContact? linkedContact) started,
    required TResult Function(String urlStr) changeUrl,
    required TResult Function(LinkedService type) changeType,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LinkedContact? linkedContact)? started,
    TResult? Function(String urlStr)? changeUrl,
    TResult? Function(LinkedService type)? changeType,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LinkedContact? linkedContact)? started,
    TResult Function(String urlStr)? changeUrl,
    TResult Function(LinkedService type)? changeType,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeUrl value) changeUrl,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeUrl value)? changeUrl,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeUrl value)? changeUrl,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements LinkedContactFormEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
mixin _$LinkedContactFormState {
  LinkedContact get linkedContact => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkedContactFormStateCopyWith<LinkedContactFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedContactFormStateCopyWith<$Res> {
  factory $LinkedContactFormStateCopyWith(LinkedContactFormState value,
          $Res Function(LinkedContactFormState) then) =
      _$LinkedContactFormStateCopyWithImpl<$Res, LinkedContactFormState>;
  @useResult
  $Res call({LinkedContact linkedContact});

  $LinkedContactCopyWith<$Res> get linkedContact;
}

/// @nodoc
class _$LinkedContactFormStateCopyWithImpl<$Res,
        $Val extends LinkedContactFormState>
    implements $LinkedContactFormStateCopyWith<$Res> {
  _$LinkedContactFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkedContact = null,
  }) {
    return _then(_value.copyWith(
      linkedContact: null == linkedContact
          ? _value.linkedContact
          : linkedContact // ignore: cast_nullable_to_non_nullable
              as LinkedContact,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinkedContactCopyWith<$Res> get linkedContact {
    return $LinkedContactCopyWith<$Res>(_value.linkedContact, (value) {
      return _then(_value.copyWith(linkedContact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LinkedContactFormStateCopyWith<$Res>
    implements $LinkedContactFormStateCopyWith<$Res> {
  factory _$$_LinkedContactFormStateCopyWith(_$_LinkedContactFormState value,
          $Res Function(_$_LinkedContactFormState) then) =
      __$$_LinkedContactFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LinkedContact linkedContact});

  @override
  $LinkedContactCopyWith<$Res> get linkedContact;
}

/// @nodoc
class __$$_LinkedContactFormStateCopyWithImpl<$Res>
    extends _$LinkedContactFormStateCopyWithImpl<$Res,
        _$_LinkedContactFormState>
    implements _$$_LinkedContactFormStateCopyWith<$Res> {
  __$$_LinkedContactFormStateCopyWithImpl(_$_LinkedContactFormState _value,
      $Res Function(_$_LinkedContactFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkedContact = null,
  }) {
    return _then(_$_LinkedContactFormState(
      linkedContact: null == linkedContact
          ? _value.linkedContact
          : linkedContact // ignore: cast_nullable_to_non_nullable
              as LinkedContact,
    ));
  }
}

/// @nodoc

class _$_LinkedContactFormState implements _LinkedContactFormState {
  const _$_LinkedContactFormState({required this.linkedContact});

  @override
  final LinkedContact linkedContact;

  @override
  String toString() {
    return 'LinkedContactFormState(linkedContact: $linkedContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinkedContactFormState &&
            (identical(other.linkedContact, linkedContact) ||
                other.linkedContact == linkedContact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, linkedContact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkedContactFormStateCopyWith<_$_LinkedContactFormState> get copyWith =>
      __$$_LinkedContactFormStateCopyWithImpl<_$_LinkedContactFormState>(
          this, _$identity);
}

abstract class _LinkedContactFormState implements LinkedContactFormState {
  const factory _LinkedContactFormState(
      {required final LinkedContact linkedContact}) = _$_LinkedContactFormState;

  @override
  LinkedContact get linkedContact;
  @override
  @JsonKey(ignore: true)
  _$$_LinkedContactFormStateCopyWith<_$_LinkedContactFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
