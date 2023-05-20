part of 'report_form_bloc.dart';

@freezed
class ReportFormEvent with _$ReportFormEvent {
  const factory ReportFormEvent.started() = _Started;
  const factory ReportFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory ReportFormEvent.descriptionChanged(String descriptionStr) =
      _DescriptionChanged;
  const factory ReportFormEvent.typeChanged(ReportType type) = _TypeChanged;
  const factory ReportFormEvent.submitButtonPressed() = _SubmitButtonPressed;
}
