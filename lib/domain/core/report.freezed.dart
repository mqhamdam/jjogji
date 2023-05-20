// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportEnt {
  UUID? get uuid =>
      throw _privateConstructorUsedError; // reporting uuid is can be post id or userid
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ReportType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportEntCopyWith<ReportEnt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEntCopyWith<$Res> {
  factory $ReportEntCopyWith(ReportEnt value, $Res Function(ReportEnt) then) =
      _$ReportEntCopyWithImpl<$Res, ReportEnt>;
  @useResult
  $Res call({UUID? uuid, String title, String description, ReportType type});
}

/// @nodoc
class _$ReportEntCopyWithImpl<$Res, $Val extends ReportEnt>
    implements $ReportEntCopyWith<$Res> {
  _$ReportEntCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? title = null,
    Object? description = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UUID?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReportType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportEntCopyWith<$Res> implements $ReportEntCopyWith<$Res> {
  factory _$$_ReportEntCopyWith(
          _$_ReportEnt value, $Res Function(_$_ReportEnt) then) =
      __$$_ReportEntCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UUID? uuid, String title, String description, ReportType type});
}

/// @nodoc
class __$$_ReportEntCopyWithImpl<$Res>
    extends _$ReportEntCopyWithImpl<$Res, _$_ReportEnt>
    implements _$$_ReportEntCopyWith<$Res> {
  __$$_ReportEntCopyWithImpl(
      _$_ReportEnt _value, $Res Function(_$_ReportEnt) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? title = null,
    Object? description = null,
    Object? type = null,
  }) {
    return _then(_$_ReportEnt(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UUID?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReportType,
    ));
  }
}

/// @nodoc

class _$_ReportEnt implements _ReportEnt {
  const _$_ReportEnt(
      {required this.uuid,
      required this.title,
      required this.description,
      required this.type});

  @override
  final UUID? uuid;
// reporting uuid is can be post id or userid
  @override
  final String title;
  @override
  final String description;
  @override
  final ReportType type;

  @override
  String toString() {
    return 'ReportEnt(uuid: $uuid, title: $title, description: $description, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportEnt &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, title, description, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportEntCopyWith<_$_ReportEnt> get copyWith =>
      __$$_ReportEntCopyWithImpl<_$_ReportEnt>(this, _$identity);
}

abstract class _ReportEnt implements ReportEnt {
  const factory _ReportEnt(
      {required final UUID? uuid,
      required final String title,
      required final String description,
      required final ReportType type}) = _$_ReportEnt;

  @override
  UUID? get uuid;
  @override // reporting uuid is can be post id or userid
  String get title;
  @override
  String get description;
  @override
  ReportType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ReportEntCopyWith<_$_ReportEnt> get copyWith =>
      throw _privateConstructorUsedError;
}
