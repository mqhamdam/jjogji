import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/enums.dart';
import 'package:jjogji/application/forms/liked_contacts_form/linked_contact_form_bloc.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/presentation/screens/settings/widgets/linked_contact_type.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class AddLinkedAccount extends StatefulWidget {
  const AddLinkedAccount(this.linkedContact, {super.key});
  final LinkedContact? linkedContact;
  @override
  State<AddLinkedAccount> createState() => _AddLinkedAccountState();
}

class _AddLinkedAccountState extends State<AddLinkedAccount> {
  final LinkedContactFormBloc _linkedContactFormBloc = LinkedContactFormBloc();

  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    _linkedContactFormBloc.add(
      LinkedContactFormEvent.started(
        widget.linkedContact,
      ),
    );
    _textEditingController.text =
        widget.linkedContact?.url.getOrCrash().split('/').last ?? '';
    super.initState();
  }

  @override
  void dispose() {
    _linkedContactFormBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (c, keyBoard) => BlocProvider.value(
        value: _linkedContactFormBloc,
        child: BlocBuilder<LinkedContactFormBloc, LinkedContactFormState>(
          builder: (context, state) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(43)),
                color: Colors.black54,
              ),
              padding: EdgeInsets.only(
                top: 15,
                bottom: keyBoard
                    ? MediaQuery.of(context).viewInsets.bottom + 10
                    : 0,
              ),
              child: Card(
                // margin: const EdgeInsets.only(
                //     bottom: 18, left: 10, right: 10, top: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23),
                  side: const BorderSide(),
                ),
                color: AppColorScheme.cardColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8,
                    top: 15,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PopupMenuButton<LinkedService>(
                        color: Colors.black26,
                        icon: Transform.scale(
                          scale: 1.4,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: LinkedContactType(
                              state.linkedContact.type,
                            ),
                          ),
                        ),
                        onSelected: (e) {
                          _linkedContactFormBloc
                              .add(LinkedContactFormEvent.changeType(e));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33),
                        ),
                        itemBuilder: (context) {
                          return <PopupMenuEntry<LinkedService>>[
                            ...generatePopMenuItem
                          ];
                        },
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: TextField(
                            autofocus: true,
                            controller: _textEditingController,
                            onChanged: (value) {
                              final link =
                                  '${getBaseUri(state.linkedContact.type)}$value';
                              _linkedContactFormBloc
                                  .add(LinkedContactFormEvent.changeUrl(link));
                            },
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.url,
                            decoration: InputDecoration(
                              floatingLabelStyle:
                                  const TextStyle(color: Colors.tealAccent),
                              labelStyle: const TextStyle(color: Colors.grey),
                              labelText: getBaseUri(state.linkedContact.type),
                              helperText: state.linkedContact.url.getOrElse(''),
                              helperStyle: const TextStyle(color: Colors.white),
                              //hintText: 'https://medium/',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),
                                borderSide: const BorderSide(
                                  color: Colors.tealAccent,
                                ),
                              ),
                              fillColor: const Color.fromARGB(255, 40, 40, 45),
                              filled: true,
                              isDense: true,
                              helperMaxLines: 3,
                              contentPadding: const EdgeInsets.only(
                                left: 10,
                                right: 20,
                                top: 10,
                                bottom: 10,
                              ),
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(
                                RegExp(r"\s\b|\b\s"),
                              )
                            ],
                          ),
                        ),
                      ),
                      AnimatedCrossFade(
                        alignment: Alignment.center,
                        duration: const Duration(milliseconds: 300),
                        crossFadeState:
                            _textEditingController.value.text.isEmpty
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                        secondChild: const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        firstChild: Card(
                          color: Colors.tealAccent,
                          shape: const CircleBorder(),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop(state.linkedContact);
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                FontAwesomeIcons.check,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // ListTile(
                      //   trailing:
                      // ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<PopupMenuEntry<LinkedService>> generatePopMenuItem = List.generate(
  LinkedService.values.length,
  (index) => PopupMenuItem<LinkedService>(
    value: LinkedService.values[index],
    child: LinkedContactType(
      LinkedService.values[index],
    ),
  ),
);
