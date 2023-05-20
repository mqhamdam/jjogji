// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportDto _$$_ReportDtoFromJson(Map<String, dynamic> json) => _$_ReportDto(
      uuid: json['uuid'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$ReportTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_ReportDtoToJson(_$_ReportDto instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'description': instance.description,
      'type': _$ReportTypeEnumMap[instance.type]!,
    };

const _$ReportTypeEnumMap = {
  ReportType.post: 'post',
  ReportType.comment: 'comment',
  ReportType.user: 'user',
  ReportType.app: 'app',
  ReportType.other: 'other',
};
