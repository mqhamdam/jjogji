// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportDto _$ReportDtoFromJson(Map<String, dynamic> json) {
  return _ReportDto.fromJson(json);
}

/// @nodoc
mixin _$ReportDto {
  String? get uuid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonEnum()
  ReportType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportDtoCopyWith<ReportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportDtoCopyWith<$Res> {
  factory $ReportDtoCopyWith(ReportDto value, $Res Function(ReportDto) then) =
      _$ReportDtoCopyWithImpl<$Res, ReportDto>;
  @useResult
  $Res call(
      {String? uuid,
      String title,
      String description,
      @JsonEnum() ReportType type});
}

/// @nodoc
class _$ReportDtoCopyWithImpl<$Res, $Val extends ReportDto>
    implements $ReportDtoCopyWith<$Res> {
  _$ReportDtoCopyWithImpl(this._value, this._then);

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
              as String?,
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
abstract class _$$_ReportDtoCopyWith<$Res> implements $ReportDtoCopyWith<$Res> {
  factory _$$_ReportDtoCopyWith(
          _$_ReportDto value, $Res Function(_$_ReportDto) then) =
      __$$_ReportDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String title,
      String description,
      @JsonEnum() ReportType type});
}

/// @nodoc
class __$$_ReportDtoCopyWithImpl<$Res>
    extends _$ReportDtoCopyWithImpl<$Res, _$_ReportDto>
    implements _$$_ReportDtoCopyWith<$Res> {
  __$$_ReportDtoCopyWithImpl(
      _$_ReportDto _value, $Res Function(_$_ReportDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? title = null,
    Object? description = null,
    Object? type = null,
  }) {
    return _then(_$_ReportDto(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$_ReportDto implements _ReportDto {
  const _$_ReportDto(
      {required this.uuid,
      required this.title,
      required this.description,
      @JsonEnum() required this.type});

  factory _$_ReportDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReportDtoFromJson(json);

  @override
  final String? uuid;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonEnum()
  final ReportType type;

  @override
  String toString() {
    return 'ReportDto(uuid: $uuid, title: $title, description: $description, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportDto &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, title, description, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportDtoCopyWith<_$_ReportDto> get copyWith =>
      __$$_ReportDtoCopyWithImpl<_$_ReportDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportDtoToJson(
      this,
    );
  }
}

abstract class _ReportDto implements ReportDto {
  const factory _ReportDto(
      {required final String? uuid,
      required final String title,
      required final String description,
      @JsonEnum() required final ReportType type}) = _$_ReportDto;

  factory _ReportDto.fromJson(Map<String, dynamic> json) =
      _$_ReportDto.fromJson;

  @override
  String? get uuid;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonEnum()
  ReportType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ReportDtoCopyWith<_$_ReportDto> get copyWith =>
      throw _privateConstructorUsedError;
}
