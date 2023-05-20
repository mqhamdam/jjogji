import 'package:dartz/dartz.dart';
import 'package:jjogji/domain/comment/comment.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/user/user.dart';

/// uuid == postuuid
abstract class IPostRepo {
  Future<Either<Error, List<Post>>> getPosts(
      int skip, PostFilter filter,);
  Future<Either<Error, Post>> getPost(UUID uuid);
  Future<Either<Error, Unit>> createPost(PostForm post);
  Future<Either<Error, Unit>> deletePost(UUID uuid);
  Future<Either<Error, Unit>> updatePost(Post post);
  Future<Either<Error, Unit>> likePost(UUID uuid);
  Future<Either<Error, Unit>> savePost(UUID uuid);

  Future<Either<Error, AppComment>> commentPost(
    AppCommentForm appCommentForm,
    UUID uuid,
  );
  
  Future<Either<Error, Unit>> replyToComment(UUID uuid, UUID replyTo);
  Future<Either<Error, Unit>> deleteComment(UUID uuid, UUID commentuuid);
  Future<Either<Error, PostRelation>> getPostRelation(UUID uuid);
  Future<Either<Error, List<Post>>> getSubscriptionPosts(int skip);
  Future<Either<Error, List<Post>>> getSavedPosts(int skip);
  Future<Either<Error, List<Post>>> getUserPosts(int skip, UUID uuid);
  Future<Either<Error, List<User>>> getLikes(int skip, UUID uuid);
  Future<Either<Error, List<AppComment>>> getComments(
      int skip, UUID uuid,);
  Future<Either<Error, List<AppComment>>> getRepliedComments(
      int skip, AppComment appComment,);
  Future<Either<Error, List<Post>>> getTrendingPosts(int skip);
  Future<Either<Error, List<TrendingTag> >> getTrendingTags();
  
}
