import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/application/app_tts/app_tts_bloc.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/post/value_objects.dart';
import 'package:jjogji/infrastructure/auth/auth_facade.dart';
import 'package:jjogji/infrastructure/core/local_db_handler.dart';
import 'package:jjogji/infrastructure/post/post_repo.dart';
import 'package:jjogji/main.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:translator/translator.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final Either<Post, UUID> eitherPostOrUUID;
  final PostRepo _postRepo = PostRepo.instance;
  final GoogleTranslator translator = GoogleTranslator();

  final AppTtsBloc _appTtsBloc =
      BlocProvider.of<AppTtsBloc>(Global.navigatorKey.currentContext!);

  LocalDB localDB = LocalDB.instance;
  Future<String> get currentTranslateLang =>
      localDB.currentTranslatedLanguage();

  late final UserBloc? userBloc;

  String get getPostlink => state.post.uuid.getOrCrash();

  UUID get _uuid => eitherPostOrUUID.fold(
        (post) {
          return post.uuid;
        },
        (uuid) {
          return uuid;
        },
      );

  PostBloc(this.eitherPostOrUUID)
      : super(
          PostState.dflt(),
        ) {
    on<PostEvent>((event, emit) async {
      await event.map(
        init: (e) async {
          await eitherPostOrUUID.fold(
            (post) async {
              add(const PostEvent.getPostRelation());
              final useruuid = await AuthFacade.instance
                  .getSignedInUser()
                  .then((value) => value.uid);
              userBloc = UserBloc(
                right(post.authorData),
                useruuid == post.authoruuid.getOrCrash(),
              )..add(const UserEvent.started());
              emit(state.copyWith(post: post, isFetching: false));
            },
            (uuid) async {
              add(const PostEvent.getPostData());
            },
          );
        },
        getPostData: (e) async {
          final postData = await _postRepo.getPost(_uuid);

          await postData.fold(
            (l) async {
              add(const PostEvent.getPostRelation());
              emit(state.copyWith(isFetching: false));
            },
            (post) async {
              add(const PostEvent.getPostRelation());
              final useruuid = await AuthFacade.instance
                  .getSignedInUser()
                  .then((value) => value.uid);
              userBloc = UserBloc(
                right(post.authorData),
                useruuid == post.authoruuid.getOrCrash(),
              )..add(const UserEvent.started());

              emit(state.copyWith(post: post, isFetching: false));
            },
          );
        },
        getPostAuthorData: (e) async {},
        getPostRelation: (e) async {
          final res = await _postRepo.getPostRelation(_uuid);
          res.fold(
            (l) {},
            (r) {
              emit(state.copyWith(postRelation: r));
            },
          );
        },
        likeButtonPressed: (e) {
          if (state.postRelation.like) {
            add(const PostEvent.unlikePost());
          } else {
            add(const PostEvent.likePost());
          }
          _postRepo.likePost(_uuid);
        },
        saveButtonPressed: (e) {
          if (state.postRelation.save) {
            add(const PostEvent.unsavePost());
          } else {
            add(const PostEvent.savePost());
          }
          _postRepo.savePost(_uuid);
        },
        likePost: (e) async {
          emit(
            state.copyWith(
              post: state.post.copyWith(likeCount: state.post.likeCount + 1),
              postRelation: state.postRelation.copyWith(like: true),
            ),
          );
        },
        unlikePost: (e) async {
          emit(
            state.copyWith(
              post: state.post.copyWith(likeCount: state.post.likeCount - 1),
              postRelation: state.postRelation.copyWith(like: false),
            ),
          );
        },
        savePost: (e) async {
          
          emit(
            state.copyWith(
              postRelation:
                  state.postRelation.copyWith(save: !state.postRelation.save),
            ),
          );
        },
        unsavePost: (e) async {},
        translatePost: (e) async {
          await _OnTranslatePost(e, emit);
        },
        speechPost: (e) async {
          await _OnSpeechPost(e, emit);
        },
        deleteButtonPressed: (_DeleteButtonPressed event) {},
      );
    });
  }

  Future<void> onDeleteButtonPressed() async {
    final useruuid =
        await AuthFacade.instance.getSignedInUser().then((value) => value.uid);
    if (useruuid == state.post.authoruuid.getOrCrash()) {
      toast('Deleting Post');
      await _postRepo.deletePost(state.post.uuid);

      toast("Post Deleted");
    } else {
      toast("You can't delete this post");
    }
  }

  Future<void> _OnTranslatePost(_TranslatePost e, Emitter emit) async {
    emit(state.copyWith(isTranslating: true));
    if (state.translatedPostBody.isValid()) {
      emit(
        state.copyWith(
          translatedPostBody: PostBody(""),
          isTranslating: false,
        ),
      );
    } else {
      final tr = await translateString(state.post.postBody.getOrCrash());

      emit(
        state.copyWith(
          translatedPostBody: PostBody(tr.text),
          isTranslating: false,
        ),
      );
    }
  }

  Future<void> _OnSpeechPost(_SpeechPost e, Emitter emit) async {
    final textToSpeech =
        state.translatedPostBody.getOrElse(state.post.postBody.getOrCrash());
    _appTtsBloc.add(AppTtsEvent.addTextToSpeech(textToSpeech));
  }

  Future<Translation> translateString(String text) async {
    final getLangCode = await currentTranslateLang;
    final translatedText = await translator.translate(text, to: getLangCode);
    return translatedText;
  }

  /// Close User Bloc Event Stream
  ///
  ///
  ///

  @override
  Future<void> close() {
    userBloc?.close();
    // _appTtsBloc.close();
    return super.close();
  }
}
