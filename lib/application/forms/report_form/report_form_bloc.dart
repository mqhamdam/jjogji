import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/core/report.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/infrastructure/core/api_handler.dart';
import 'package:jjogji/infrastructure/core/report_dto.dart';

part 'report_form_event.dart';
part 'report_form_state.dart';
part 'report_form_bloc.freezed.dart';

class ReportFormBloc extends Bloc<ReportFormEvent, ReportFormState> {
  final ApiHandler _apiHandler = ApiHandler.instance;
  ReportFormBloc({
    UUID? reportid,
    ReportType reportType = ReportType.other,
  }) : super(
          ReportFormState.initial(
            reportid: reportid,
            type: reportType,
          ),
        ) {
    on<ReportFormEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          await onStarted(event, emit);
        },
        titleChanged: (event) async {
          await onTitleChanged(event, emit);
        },
        descriptionChanged: (event) async {
          await onDescriptionChanged(event, emit);
        },
        typeChanged: (event) async {
          await onTypeChanged(event, emit);
        },
        submitButtonPressed: (event) async {
          await onSubmitButtonPressed(event, emit);
        },
      );
    });
  }

  Future<void> onStarted(
    _Started event,
    Emitter<ReportFormState> emit,
  ) async {
    emit(
      state.copyWith(
        report: ReportEnt.empty(),
      ),
    );
  }

  Future<void> onTitleChanged(
    _TitleChanged event,
    Emitter<ReportFormState> emit,
  ) async {
    emit(
      state.copyWith(
        report: state.report.copyWith(title: event.titleStr),
      ),
    );
  }

  Future<void> onDescriptionChanged(
      _DescriptionChanged event, Emitter<ReportFormState> emit,) async {
    emit(
      state.copyWith(
        report: state.report.copyWith(description: event.descriptionStr),
      ),
    );
  }

  Future<void> onTypeChanged(
      _TypeChanged event, Emitter<ReportFormState> emit,) async {
    emit(
      state.copyWith(
        report: state.report.copyWith(type: event.type),
      ),
    );
  }

  Future<void> onSubmitButtonPressed(
    _SubmitButtonPressed event,
    Emitter<ReportFormState> emit,
  ) async {
    _apiHandler.submitReport(state.report);
  }
}
