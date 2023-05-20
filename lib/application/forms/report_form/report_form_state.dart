part of 'report_form_bloc.dart';

@freezed
class ReportFormState with _$ReportFormState {
  const factory ReportFormState({
    required ReportEnt report,
  }) = _ReportFormBloc;
  factory ReportFormState.initial({
    UUID? reportid,
    ReportType? type,
  }) =>
      ReportFormState(
        report: ReportEnt(
          uuid: reportid,
          title: '',
          description: '',
          type: type ?? ReportType.other,
        ),
      );
}
