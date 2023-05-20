import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/comment/value_objects.dart';

part 'comments_form_event.dart';
part 'comments_form_state.dart';
part 'comments_form_bloc.freezed.dart';

class CommentsFormBloc extends Bloc<CommentsFormEvent, CommentsFormState> {
  CommentsFormBloc() : super(CommentsFormState.dflt()) {
    on<CommentsFormEvent>((event, emit) async {
      await event.map(
        started: (e) {},
        commentBodyChanged: (e) async {
          emit(
            state.copyWith(
              
                commentBody: CommentBody(e.str),
              
            ),
          );
        },
      );
    });
  }
}
