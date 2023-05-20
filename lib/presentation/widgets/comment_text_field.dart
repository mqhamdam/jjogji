import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:jjogji/application/Views/comments_list_view/comments_list_view_bloc.dart';
import 'package:jjogji/application/forms/comments_form/comments_form_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:overlay_support/overlay_support.dart';

class CommentTextField extends StatelessWidget {
  CommentTextField(this.onAddComment, {super.key});

  final CommentsFormBloc _formBloc = CommentsFormBloc();
  final TextEditingController _commentController = TextEditingController();
  final VoidCallback onAddComment;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _formBloc,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(23),
          ),
        ),
        child: Card(
          margin:
              const EdgeInsets.only(bottom: 18, left: 10, right: 10, top: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
            side: const BorderSide(),
          ),
          color: AppColorScheme.cardColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    controller: _commentController,
                    onChanged: (value) {
                      _formBloc
                          .add(CommentsFormEvent.commentBodyChanged(value));
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
                      hintText: 'Add comment',
                      hintStyle: TextStyle(color: Colors.grey[600]),
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
                GestureDetector(
                  onTap: () {
                    if (_commentController.text.isEmpty) {
                      toast('Text field should not be empty');
                      return;
                    }
                    onAddComment();
                    BlocProvider.of<CommentsListViewBloc>(context).add(
                      CommentsListViewEvent.addComment(
                        _formBloc.state.commentBody,
                      ),
                    );
                    _commentController.clear();
                  },
                  child: BlocBuilder<CommentsFormBloc, CommentsFormState>(
                    builder: (context, state) {
                      return Card(
                        color: AppColorScheme.backgroundColor,
                        shape: const CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesome5.arrow_up,
                            color: _commentController.text.isEmpty
                                ? Colors.grey
                                : AppColorScheme.primaryColor,
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
