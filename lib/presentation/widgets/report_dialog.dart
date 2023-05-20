import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/forms/report_form/report_form_bloc.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/infrastructure/core/report_dto.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:overlay_support/overlay_support.dart';

Future<void> showReportDialog(
    BuildContext context, UUID? uuid, ReportType? type,) async {
  await showDialog(
    context: context,
    builder: (_) {
      return BlocProvider(
        create: (context) => ReportFormBloc(
          reportType: type ?? ReportType.other,
          reportid: uuid,
        ),
        child: BlocBuilder<ReportFormBloc, ReportFormState>(
          builder: (context, state) {
            return Dialog(
              backgroundColor: AppColorScheme.cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 25,
                      ),
                      child: UIText(
                        'Report',
                        style: UITextStyles.headLine.copyWith(fontSize: 35),
                      ),
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: TextField(
                            onChanged: (value) {
                              BlocProvider.of<ReportFormBloc>(context).add(
                                ReportFormEvent.titleChanged(value),
                              );
                            },
                            style: const TextStyle(
                                color: AppColorScheme.textColor,),
                            maxLength: 1000,
                            textInputAction: TextInputAction.newline,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(33),
                              ),
                              counterText: '',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide: const BorderSide(
                                  color: AppColorScheme.primaryColor,
                                ),
                              ),
                              labelText: 'Title',
                              labelStyle: TextStyle(color: Colors.grey[600]),
                              floatingLabelStyle: const TextStyle(
                                color: AppColorScheme.primaryColor,
                              ),
                              fillColor: AppColorScheme.backgroundColor,
                              filled: true,
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Flexible(
                          child: TextField(
                            onChanged: (value) {
                              BlocProvider.of<ReportFormBloc>(context).add(
                                ReportFormEvent.descriptionChanged(value),
                              );
                            },
                            style: const TextStyle(
                                color: AppColorScheme.textColor,),
                            maxLength: 1000,
                            maxLines: 10,
                            textInputAction: TextInputAction.newline,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(33),
                              ),
                              counterText: '',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide: const BorderSide(
                                  color: AppColorScheme.primaryColor,
                                ),
                              ),
                              labelText: 'Description',
                              labelStyle: TextStyle(color: Colors.grey[600]),
                              floatingLabelStyle: const TextStyle(
                                color: AppColorScheme.primaryColor,
                              ),
                              fillColor: AppColorScheme.backgroundColor,
                              filled: true,
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: UITextButtonStyles.saveButton,
                      onPressed: () {
                        BlocProvider.of<ReportFormBloc>(context).add(
                          const ReportFormEvent.submitButtonPressed(),
                        );
                        toast('Report sent, Thank you!');
                        Navigator.of(context).pop();
                      },
                      child: const UIText('Submit Report',
                          style: UITextStyles.mainTitle,),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
