import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/core/report.dart';

part 'report_dto.freezed.dart';
part 'report_dto.g.dart';

@JsonEnum()
enum ReportType { post, comment, user, app, other }

@freezed
class ReportDto with _$ReportDto {
  const factory ReportDto({
    required String? uuid,
    required String title,
    required String description,
    @JsonEnum() required ReportType type,
  }) = _ReportDto;

  factory ReportDto.fromJson(Map<String, dynamic> json) =>
      _$ReportDtoFromJson(json);

  factory ReportDto.fromDomain(ReportEnt reportEnt) => ReportDto(
        uuid: reportEnt.uuid?.getOrCrash(),
        title: reportEnt.title,
        description: reportEnt.description,
        type: reportEnt.type,
      );
  // factory ReportDto.toJson()
}
