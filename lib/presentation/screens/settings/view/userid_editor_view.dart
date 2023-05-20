import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:jjogji/application/forms/userid_form/userid_form_bloc.dart';
import 'package:jjogji/domain/user/value_objects.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class UserIDEditorView extends StatefulWidget {
  const UserIDEditorView(
    this.oldId, {
    super.key,
  });

  final UserID oldId;
  @override
  State<UserIDEditorView> createState() => _UserIDEditorViewState();
}

class _UserIDEditorViewState extends State<UserIDEditorView> {
  late final UseridFormBloc _userIDBloc = UseridFormBloc(widget.oldId);
  late final TextEditingController _textEditingController =
      TextEditingController(text: widget.oldId.getOrElse(''));
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _userIDBloc,
      child: KeyboardVisibilityBuilder(
        builder: (context, kbIsOpen) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(
                bottom: kToolbarHeight +
                    (kbIsOpen ? MediaQuery.of(context).viewInsets.bottom : 0),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: UIText(
                      'Change User ID',
                      style: UITextStyles.headLine,
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),

                  /// new email
                  TextField(
                    controller: _textEditingController,
                    onChanged: (value) {
                      _userIDBloc.add(UseridFormEvent.userIDChanged(value));
                    },
                    style: const TextStyle(color: AppColorScheme.textColor),
                    maxLength: 1000,
                    maxLines: null,
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
                      labelText: 'UserID',
                      helperStyle: const TextStyle(color: Colors.white70),
                      labelStyle: TextStyle(color: Colors.grey[600]),
                      floatingLabelStyle:
                          const TextStyle(color: Colors.tealAccent),
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      fillColor: AppColorScheme.backgroundColor,
                      filled: true,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  /// submit button
                  ElevatedButton(
                    style: UITextButtonStyles.saveButton,
                    onPressed: _userIDBloc.isValid
                        ? () {
                            _userIDBloc
                                .add(const UseridFormEvent.saveButtonPressed());
                          }
                        : null,
                    child: const UIText(
                      'Submit',
                      style: UITextStyles.mainTitle,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
