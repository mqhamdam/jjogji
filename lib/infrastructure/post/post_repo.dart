import 'package:dartz/dartz.dart';
import 'package:jjogji/domain/comment/comment.dart';
import 'package:jjogji/domain/core/abstract_class.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/post/i_post_repo.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/infrastructure/core/api_handler.dart';

class PostRepo implements IPostRepo {
  final ApiHandler _apiHandler = ApiHandler.instance;

  PostRepo._();
  // get singleton
  static final PostRepo instance = PostRepo._();

  @override
  Future<Either<Error, AppComment>> commentPost(
    AppCommentForm appCommentForm,
    UUID uuid,
  ) async {
    final res = await _apiHandler.commentPost(appCommentForm, uuid);
    
    return res.fold(
      (l) {
        return left(Error());
      },
      (r) {
        return right(r);
      },
    );
  }

  @override
  Future<Either<Error, Unit>> createPost(PostForm postForm) async {
    final res = await _apiHandler.createPost(postForm);
    return res.fold(
      (l) {
        throw UnimplementedError();
      },
      (r) {
        return right(unit);
      },
    );
  }

  @override
  Future<Either<Error, Unit>> deleteComment(UUID uuid, UUID commentuuid) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Error, Unit>> deletePost(UUID uuid) async {
    final res = await _apiHandler.deletePost(uuid);
    return res.fold(
      (l) {
        throw UnimplementedError();
      },
      (r) {
        return right(unit);
      },
    );
  }

  @override
  Future<Either<Error, List<Post>>> getPosts(
    int skip,
    AppFilter postFilter,
  ) async {
    // TODO: implement getPosts
    final res = await _apiHandler.getPosts(skip, postFilter);
    return res.fold(
      (l) {
        throw UnimplementedError();
      },
      (r) {
        return right(r);
      },
    );
  }

  @override
  Future<Either<Error, Unit>> likePost(UUID uuid) async {
    final res = await _apiHandler.likePost(uuid);

    return res.fold(
      (l) {
        throw UnimplementedError();
      },
      (r) {
        return right(unit);
      },
    );
  }

  @override
  Future<Either<Error, Unit>> savePost(UUID uuid) async {
    final res = await _apiHandler.savePost(uuid);

    return res.fold(
      (l) {
        throw UnimplementedError();
      },
      (r) {
        return right(unit);
      },
    );
  }

  @override
  Future<Either<Error, Unit>> updatePost(Post post) async {
    final res = await _apiHandler.updatePost(post);

    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, Post>> getPost(UUID uuid) {
    // TODO: implement getPost
    throw UnimplementedError();
  }

  @override
  Future<Either<Error, PostRelation>> getPostRelation(UUID uuid) async {
    final res = await _apiHandler.getPostRelation(uuid);
    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, List<Post>>> getSavedPosts(int skip) async {
    final res = await _apiHandler.getSavedPosts(skip);
    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, List<Post>>> getSubscriptionPosts(int skip) async {
    final res = await _apiHandler.getSubscriptionPosts(skip);
    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, List<Post>>> getUserPosts(int skip, UUID uuid) async {
    final res = await _apiHandler.getUserPosts(skip, uuid);
    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, List<User>>> getLikes(int skip, UUID uuid) async {
    final res = await _apiHandler.getLikes(skip, uuid);
    return res.fold((l) => throw UnimplementedError(), (r) => right(r));
  }

  @override
  Future<Either<Error, List<AppComment>>> getComments(
    int skip,
    UUID uuid,
  ) async {
    final res = await _apiHandler.getComments(skip, uuid);
    return res.fold((l) => throw UnimplementedError(), (r) => right(r));
  }

  @override
  Future<Either<Error, List<AppComment>>> getRepliedComments(
    int skip,
    AppComment appComment,
  ) async {
    final res = await _apiHandler.getRepliedComments(skip, appComment);
    return res.fold((l) => throw UnimplementedError(), (r) => right(r));
  }

  @override
  Future<Either<Error, Unit>> replyToComment(
    UUID uuid,
    UUID replyTo,
  ) async {
    return _apiHandler.replyToComment(uuid, replyTo).then(
          (either) => either.fold(
            (l) => left(UnimplementedError()),
            (r) => right(r),
          ),
        );
  }

  @override
  Future<Either<Error, List<Post>>> getTrendingPosts(
    int ski,
  ) async {
    final res = await _apiHandler.getTrendingPosts(ski);
    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, List<TrendingTag>>> getTrendingTags() async {
    final res = await _apiHandler.getTrendingTags();
    return res.fold((l) => left(l), (r) => right(r));
  }
}
