import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:jjogji/domain/auth/value_objects.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class DeleteAccountView extends StatefulWidget {
  const DeleteAccountView({super.key});

  @override
  State<DeleteAccountView> createState() => _DeleteAccountViewState();
}

class _DeleteAccountViewState extends State<DeleteAccountView> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  PasswordVO passwordVO = PasswordVO('');
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, kbIsOpen) {
        return AnimatedPadding(
          duration: const Duration(milliseconds: 50),
          padding: EdgeInsets.only(
            bottom: kToolbarHeight +
                (kbIsOpen ? MediaQuery.of(context).viewInsets.bottom : 0),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: UIText(
                    'Enter Password',
                    style: UITextStyles.headLine,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextField(
                    controller: _textEditingController,
                    onChanged: (value) {
                      passwordVO = PasswordVO(value);
                    },
                    focusNode: _focusNode,
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
                      labelText: 'Password',
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
                ),

                const SizedBox(
                  height: 30,
                ),
                CheckboxListTile.adaptive(
                  title: const AutoSizeText(
                    'I acknowledge that by deleting my account:',
                    style: UITextStyles.mainTitle,
                  ),
                  value: checked,
                  onChanged: (v) async {
                    setState(() {
                      checked = v!;
                    });
                  },
                ),

                /// submit button
                ElevatedButton(
                  style: UITextButtonStyles.saveButton,
                  onPressed: !passwordVO.isValid() || (checked == false)
                      ? null
                      : () {
                          Navigator.of(context)
                              .pop(_textEditingController.text);
                        },
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
    );
  }
}
