import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/infrastructure/core/report_dto.dart';

part 'report.freezed.dart';

@freezed
class ReportEnt with _$ReportEnt  {
  

  const factory ReportEnt({
    
    required UUID? uuid, // reporting uuid is can be post id or userid
    required String title,
    required String description,
    required ReportType type,
  }) = _ReportEnt;

  factory ReportEnt.empty() => ReportEnt(
        uuid: UUID.empty(),
        title: '',
        description: '',
        type: ReportType.post,
      );

  factory ReportEnt.post(String title, String description) => ReportEnt(
        uuid: UUID.empty(),
        title: title,
        description: description,
        type: ReportType.post,
      );

  factory ReportEnt.comment(String title, String description) => ReportEnt(
        uuid: UUID.empty(),
        title: title,
        description: description,
        type: ReportType.comment,
      );

  factory ReportEnt.user(String title, String description) => ReportEnt(
        uuid: UUID.empty(),
        title: title,
        description: description,
        type: ReportType.user,
      );

  factory ReportEnt.app(String title, String description) => ReportEnt(
        uuid: UUID.empty(),
        title: title,
        description: description,
        type: ReportType.app,
      );

  factory ReportEnt.other(String title, String description) => ReportEnt(
        uuid: UUID.empty(),
        title: title,
        description: description,
        type: ReportType.other,
      );
}
