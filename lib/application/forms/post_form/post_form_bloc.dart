import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/post/post_failures.dart';
import 'package:jjogji/domain/post/value_objects.dart';
import 'package:jjogji/infrastructure/post/post_repo.dart';

part 'post_form_event.dart';
part 'post_form_state.dart';
part 'post_form_bloc.freezed.dart';

class PostFormBloc extends Bloc<PostFormEvent, PostFormState> {
  final PostRepo _postRepo = PostRepo.instance;

  void _findTags(String str) {
    final List<Tag> tags = [];
    final RegExp exp = RegExp(r"#(\w+)");
    final Iterable<RegExpMatch> matches = exp.allMatches(str);
    for (final match in matches) {
      tags.add(Tag(match.group(0)!));
    }
    add(PostFormEvent.tagsChanged(tags));
  }

  PostFormBloc() : super(PostFormState.dflt()) {
    on<PostFormEvent>((event, emit) {
      if (!isClosed) {
        event.map(
          stateChanged: (e) {
            emit(e.postFormState);
          },
          postBodyChanged: (e) {
            _findTags(e.str);
            emit(
              state.copyWith(
                postForm: state.postForm.copyWith(
                  postBody: PostBody(e.str),
                ),
              ),
            );
          },
          commentEnableButtonSwitched: (value) {
            emit(
              state.copyWith(
                postForm: state.postForm.copyWith(
                  commentEnabled: value.value,
                ),
              ),
            );
          },
          tagsChanged: (e) {
            emit(
              state.copyWith(
                postForm: state.postForm.copyWith(
                  tags: e.tags,
                ),
              ),
            );
          },
          postVisibilityTypeChanged: (e) {
            final PostVisibilityType postVisibilityType = e.i == 0
                ? PostVisibilityType.public
                : e.i == 1
                    ? PostVisibilityType.private
                    : PostVisibilityType.besties;
            emit(
              state.copyWith(
                postForm: state.postForm.copyWith(
                  postVisibilityType: postVisibilityType,
                ),
              ),
            );
          },
          postButtonPressed: (e) async {
            add(
              PostFormEvent.stateChanged(
                state.copyWith(isSaving: true),
              ),
            );

            await _postRepo.createPost(state.postForm);
          },
        );
      }
    });
  }
}
