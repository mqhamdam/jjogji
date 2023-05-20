// ignore_for_file: argument_type_not_assignable, parameter_assignments, unused_local_variable

import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:jjogji/application/extensions/extensions.dart';
import 'package:jjogji/domain/comment/comment.dart';
import 'package:jjogji/domain/core/abstract_class.dart';
import 'package:jjogji/domain/core/report.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/domain/post/i_post_repo.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/post/value_objects.dart';
import 'package:jjogji/domain/search/search.dart';
import 'package:jjogji/domain/user/i_user_repo.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/domain/user/value_objects.dart';
import 'package:jjogji/infrastructure/auth/auth_facade.dart';
import 'package:jjogji/infrastructure/comments/app_comment_dto.dart';
import 'package:jjogji/infrastructure/core/report_dto.dart';
import 'package:jjogji/infrastructure/notifications/app_notification_dto.dart';
import 'package:jjogji/infrastructure/post/post_dto.dart';
import 'package:jjogji/infrastructure/search/search_dto.dart';
import 'package:jjogji/infrastructure/user/user_dto.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:overlay_support/overlay_support.dart';

class ApiHandler implements IUserRepo, IPostRepo {
  final _authFacade = AuthFacade.instance;

  final String baseApi = "https://us-central1-jjogji.cloudfunctions.net/api";

  ApiHandler._();
  static final instance = ApiHandler._();

  Future<Map<String, String>> _setHeaders() async {
    final currentUser = await _authFacade.getSignedInUser();
    final idToken = await currentUser.getIdToken();
    final headers = {
      'Authorization': 'Bearer $idToken',
      'Content-Type': 'application/json'
    };
    return headers;
  }

  Future<dynamic> _handlePatchRequest(Uri uri, dynamic body) async {
    final header = await _setHeaders();
    final res = http.patch(
      uri,
      body: jsonEncode(body),
      headers: header,
    );
    final json = await res;
    return jsonDecode(json.body);
  }

  Future<dynamic> _handleGetRequest(Uri uri) async {
    final headers = await _setHeaders();
    final res = await http.get(uri, headers: headers);
    if (res.statusCode != 200) throw HttpException;

    return jsonDecode(res.body);
  }

  Future<dynamic> _handlePostRequest(Uri uri, Map<String, dynamic> body) async {
    final headers = await _setHeaders();
    final res = await http.post(
      uri,
      body: jsonEncode(body),
      headers: headers,
    );
    if (res.statusCode != 200) throw HttpException;
    return res.body;
  }

  Future<dynamic> _handleDeleteRequest(Uri uri) async {
    final headers = await _setHeaders();
    final res = await http.delete(uri, headers: headers);
    if (res.statusCode != 200) throw HttpException;
    if (res is bool) {
      return res;
    }
    return true;
  }

  @override
  Future<Either<Error, Unit>> addToBesties(UUID uuid) async {
    toast('Adding to besties...');

    final useruuid = uuid.getOrCrash();
    final Uri apiUri = Uri.parse("$baseApi/users/$useruuid/besties");
    try {
      final res = await _handlePatchRequest(apiUri, {});
      toast('Added to besties');
      return right(unit);
    } catch (e) {
      toast('Failed to add to besties');
      throw UnimplementedError();
    }
  }

  @override
  Future<Either<Error, Unit>> blockUser(UUID uuid) async {
    toast('Blocking user...');

    final useruuid = uuid.getOrCrash();
    final Uri apiUri = Uri.parse("$baseApi/users/$useruuid/block");
    try {
      final res = await _handlePostRequest(apiUri, {});
      toast('Blocked user');
      return right(unit);
    } catch (e) {
      toast('Failed to block user');
      throw UnimplementedError();
    }
  }

  @override
  Future<Either<Error, User>> getUserData(UUID uuid) async {
    // toast('Getting user data...');

    final useruuid = uuid.getOrCrash();
    final Uri apiUri = Uri.parse("$baseApi/users/$useruuid");

    return _handleGetRequest(apiUri).then((json) {
      return right(
        UserDto.fromJson(json).toDomain(),
      );
    });
  }

  @override
  Future<Either<Error, Unit>> subscribeToUser(UUID uuid) async {
    toast('Subscribing to user...');

    final useruuid = uuid.getOrCrash();
    final Uri apiUri = Uri.parse("$baseApi/users/$useruuid/followers");
    final res = await _handlePatchRequest(apiUri, {});
    toast('Subscribed to user');
    return right(unit);
  }

  @override
  Future<Either<Error, Unit>> updateUserData(
    UserForm user, {
    XFile? avatar,
    XFile? background,
  }) async {
    toast('Updating user data...');
    final apiUri = Uri.parse("$baseApi/users");
    if (avatar != null) {
      final String imageUrl = await _uploadAvatarImageToStorage(avatar);
      user = user.copyWith(avatarImageUrl: NetworkImageURL(imageUrl));
    }

    if (background != null) {
      final String imageUrl = await _uploadBackgroundImageToStorage(background);
      user = user.copyWith(backgroundImageUrl: NetworkImageURL(imageUrl));
    }

    final jsonBody = UserFormDto.fromDomain(user).toJson();
    try {
      final res = await _handlePostRequest(apiUri, jsonBody);
      toast('Updated user data');
      return right(unit);
    } catch (e) {
      toast('Failed to update user data');
      throw UnimplementedError();
    }
  }

  @override
  Future<Either<Error, UserRelation>> checkUserRelationType(UUID uuid) async {
    final String useruuid = uuid.getOrCrash();

    try {
      final res = await _handleGetRequest(
        Uri.parse("$baseApi/users/$useruuid/relation"),
      );
      return right(UserRelationDto.fromJson(res).toDomain());
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Future<Either<Error, AppComment>> commentPost(
    AppCommentForm appCommentForm,
    UUID uuid,
  ) async {
    final postuuid = uuid.getOrCrash();
    final uri = Uri.parse("$baseApi/posts/$postuuid/comments");
    final body = AppCommentFormDto.fromDomain(appCommentForm).toJson();
    final res = await _handlePostRequest(uri, body);
    final enc = jsonDecode(res);
    final appComment = AppCommentDto.fromJson(enc).toDomain();
    //AppCommentDto()
    return right(appComment);
  }

  @override
  Future<Either<Error, Unit>> createPost(PostForm postForm) async {
    toast('Creating post...');
    final uri = Uri.parse("$baseApi/posts");
    final body = PostFormDto.fromDomain(postForm).toJson();
    final res = await _handlePostRequest(uri, body);
    toast('Created post');
    return right(unit);
  }

  @override
  Future<Either<Error, Unit>> deleteComment(
    UUID uuid,
    UUID commentuuid,
  ) async {
    toast('Deleting comment...');

    final postuuid = uuid.getOrCrash();
    final commentuuidStr = commentuuid.getOrCrash();
    final uri = Uri.parse("$baseApi/posts/$postuuid/comments/$commentuuidStr");
    final res = await _handleDeleteRequest(uri);
    toast('Deleted comment');
    return right(unit);
  }

  @override
  Future<Either<Error, Unit>> deletePost(
    UUID uuid,
  ) async {
    toast('Deleting post...');
    final postuuid = uuid.getOrCrash();
    final uri = Uri.parse("$baseApi/posts/$postuuid");
    final res = await _handleDeleteRequest(uri);
    toast('Deleted post');
    return right(unit);
  }

  @override
  Future<Either<Error, Unit>> likePost(UUID uuid) async {
    final postuuid = uuid.getOrCrash();
    final uri = Uri.parse("$baseApi/posts/$postuuid/likes");
    final res = await _handlePatchRequest(uri, {});
    return right(unit);
  }

  @override
  Future<Either<Error, Unit>> savePost(UUID uuid) async {
    final postuuid = uuid.getOrCrash();
    final uri = Uri.parse("$baseApi/posts/$postuuid/saves");
    final res = _handlePatchRequest(uri, {});
    return right(unit);
  }

  @override
  Future<Either<Error, Unit>> updatePost(
    Post post,
  ) async {
    final uri = Uri.parse("$baseApi/posts");
    final body = PostDto.fromDomain(post).toJson();
    final res = await _handlePostRequest(uri, body);
    return right(unit);
  }

  @override
  Future<Either<Error, List<Post>>> getPosts(
    int skip,
    AppFilter postFilter,
  ) async {
    postFilter = postFilter as PostFilter;
    Uri uri;
    if (postFilter.authoruuid != null) {
      uri = Uri.parse(
        "$baseApi/posts?authoruuid=${postFilter.authoruuid!.getOrCrash()}&skip=$skip",
      );
    } else if (postFilter.onlyFollowing == true) {
      uri = Uri.parse("$baseApi/posts/subscriptions?skip=$skip");
    } else if (postFilter.onlySaved == true) {
      uri = Uri.parse('$baseApi/posts/?onlySaved=${true}&skip=$skip');
    } else {
      uri = Uri.parse("$baseApi/posts?skip=$skip");
    }

    final res = await _handleGetRequest(uri);
    final posts = (res as List).map((e) {
      return PostDto.fromJson(e).toDomain();
    }).toList();
    return right(posts);
  }

  @override
  Future<Either<Error, List<User>>> getBesties(
    int skip,
    UUID uuid,
  ) async {
    final useruuid = uuid.getOrCrash();
    final uri = Uri.parse("$baseApi/users/$useruuid/besties?skip=$skip");
    final res = await _handleGetRequest(uri);
    final besties = (res as List).map((e) {
      return UserDto.fromJson(e).toDomain();
    }).toList();
    return right(besties);
  }

  @override
  Future<Either<Error, List<User>>> getBlockedUsers(
    int skip,
    UUID uuid,
  ) async {
    final useruuid = uuid.getOrCrash();
    final uri = Uri.parse("$baseApi/users/$useruuid/blocked?skip=$skip");
    final res = await _handleGetRequest(uri);
    final blockedUsers = (res as List).map((e) {
      return UserDto.fromJson(e).toDomain();
    }).toList();
    return right(blockedUsers);
  }

  @override
  Future<Either<Error, List<User>>> getSubscribers(int skip, UUID uuid) async {
    final useruuid = uuid.getOrCrash();
    final uri = Uri.parse("$baseApi/users/$useruuid/followers?skip=$skip");
    final res = await _handleGetRequest(uri);
    final subscribers = (res as List).map((e) {
      return UserDto.fromJson(e).toDomain();
    }).toList();
    return right(subscribers);
  }

  @override
  Future<Either<Error, List<User>>> getSubscriptions(
    int skip,
    UUID uuid,
  ) async {
    final useruuid = uuid.getOrCrash();
    final uri = Uri.parse("$baseApi/users/$useruuid/followings?skip=$skip");
    final res = await _handleGetRequest(uri);
    final subscriptions = (res as List).map((e) {
      return UserDto.fromJson(e).toDomain();
    }).toList();
    return right(subscriptions);
  }

  @override
  Future<Either<Error, List<User>>> getUsers(int skip) async {
    final uri = Uri.parse("$baseApi/users?skip=$skip");
    final res = await _handleGetRequest(uri);

    final users = (res as List).map((e) {
      return UserDto.fromJson(e).toDomain();
    }).toList();

    return right(users);
  }

  @override
  Future<Either<Error, Post>> getPost(
    UUID uuid,
  ) async {
    final postuuid = uuid.getOrCrash();
    final uri = Uri.parse("$baseApi/posts/$postuuid");
    final res = await _handleGetRequest(uri);
    return right(PostDto.fromJson(res).toDomain());
  }

  @override
  Future<Either<Error, PostRelation>> getPostRelation(UUID uuid) async {
    final String postuuid = uuid.getOrCrash();
    final uri = Uri.parse("$baseApi/posts/$postuuid/relation");
    final res = await _handleGetRequest(uri);
    return right(PostRelationDto.fromJson(res).toDomain());
  }

  @override
  Future<Either<Error, List<Post>>> getSavedPosts(int skip) async {
    final apiUri = Uri.parse("$baseApi/posts/saved?skip=$skip");
    final res = await _handleGetRequest(apiUri);
    final posts = (res as List).map((e) {
      return PostDto.fromJson(e).toDomain();
    }).toList();
    return right(posts);
  }

  @override
  Future<Either<Error, List<Post>>> getSubscriptionPosts(int skip) async {
    final apiUri = Uri.parse("$baseApi/posts/subscriptions?skip=$skip");
    final res = await _handleGetRequest(apiUri);
    final posts = (res as List).map((e) {
      return PostDto.fromJson(e).toDomain();
    }).toList();
    return right(posts);
  }

  @override
  Future<Either<Error, List<Post>>> getUserPosts(int skip, UUID uuid) async {
    final useruuid = uuid.getOrCrash();
    final apiUri = Uri.parse("$baseApi/posts/user/$useruuid?skip=$skip");
    final res = await _handleGetRequest(apiUri);
    final posts = (res as List).map((e) {
      return PostDto.fromJson(e).toDomain();
    }).toList();
    return right(posts);
  }

  @override
  Future<Either<Error, List<User>>> getLikes(int skip, UUID uuid) async {
    final postuuid = uuid.getOrCrash();
    final uri = Uri.parse('$baseApi/posts/$postuuid/likes?skip=$skip');
    final res = await _handleGetRequest(uri);

    final List<User> users =
        (res as List).map((e) => UserDto.fromJson(e).toDomain()).toList();
    return right(users);
  }

  @override
  Future<Either<Error, List<AppComment>>> getComments(
    int skip,
    UUID uuid,
  ) async {
    final postuuid = uuid.getOrCrash();
    final uri = Uri.parse('$baseApi/posts/$postuuid/comments?skip=$skip');
    final res = await _handleGetRequest(uri);

    final List<AppComment> comments =
        (res as List).map((e) => AppCommentDto.fromJson(e).toDomain()).toList();
    return right(comments);
  }

  @override
  Future<Either<Error, List<AppComment>>> getRepliedComments(
    int skip,
    AppComment appComment,
  ) async {
    final commentuuid = appComment.uuid.getOrCrash();
    final postuuid = appComment.postuuid.getOrCrash();
    final uri =
        Uri.parse('$baseApi/posts/$postuuid/comments/$commentuuid/?skip=$skip');
    final res = await _handleGetRequest(uri);

    final List<AppComment> comments =
        (res as List).map((e) => AppCommentDto.fromJson(e).toDomain()).toList();
    return right(comments);
  }

  @override
  Future<Either<Error, Unit>> replyToComment(
    UUID uuid,
    UUID replyTo,
  ) async {
    final postuuid = uuid.getOrCrash();
    final replyTouuid = replyTo.getOrCrash();
    final uri = Uri.parse('$baseApi/posts/$postuuid/comments/$replyTouuid');
    final res = await _handlePostRequest(uri, {});
    return right(unit);
  }

  Future<Either<Error, Unit>> updateUserToken(
    String token,
    String deviceId,
  ) async {
    final apiUri = Uri.parse("$baseApi/notifications");
    final res = await _handlePatchRequest(apiUri, {
      'fcm_token': token,
      'fcm_id': deviceId,
    });

    return right(unit);
  }

  @override
  Future<Either<Error, List<User>>> getTopUsers() async {
    final apiUri = Uri.parse("$baseApi/trendings/users");
    final res = await _handleGetRequest(apiUri);
    final users = (res as List).map((e) {
      return UserDto.fromJson(e).toDomain();
    }).toList();
    return right(users);
  }

  @override
  Future<Either<Error, List<Post>>> getTrendingPosts(int skip) async {
    final apiUri = Uri.parse("$baseApi/trendings/posts?skip=$skip");
    final res = await _handleGetRequest(apiUri);
    final posts = (res as List).map((e) {
      return PostDto.fromJson(e).toDomain();
    }).toList();
    return right(posts);
  }

  @override
  Future<Either<Error, List<TrendingTag>>> getTrendingTags() async {
    final apiUri = Uri.parse("$baseApi/trendings/tags");
    final res = await _handleGetRequest(apiUri);
    final tags = (res as List).map((e) {
      return TrendingTagDto.fromJson(e).toDomain();
    }).toList();
    return right(tags);
  }

  Future<Either<Error, List<AppNotification>>> getNotifications(
    int skip,
  ) async {
    final apiUri = Uri.parse("$baseApi/notifications?skip=$skip");
    final res = await _handleGetRequest(apiUri);
    final notifications = (res as List).map((e) {
      return AppNotificationDto.fromJson(e).toDomain();
    }).toList();
    return right(notifications);
  }

  @override
  Future<Either<Error, Unit>> updateProfilePicStyleAndLinkedContacts(
    Tuple2<ProfilePic, List<LinkedContact>> tuple,
  ) async {
    final apiUri = Uri.parse("$baseApi/users/update");

    final profilePic = ProfilePicDto.fromDomain(tuple.value1).toJson();
    final linkedContacts = tuple.value2
        .map(
          (e) => LinkedContactDto.fromDomain(e).toJson(),
        )
        .toList();
    final res = await _handlePatchRequest(
      apiUri,
      {'profilePic': profilePic, 'linkedContacts': linkedContacts},
    );
    return right(unit);
  }

  Future<Either<Error, List<User>>> searchUsers(
    UserFilter userFilter, {
    int skip = 0,
  }) async {
    final query = userFilter.toQueryStrings();
    final apiUri = Uri.parse("$baseApi/search/users?$query&skip=$skip");
    final res = await _handleGetRequest(apiUri);
    final users = (res as List).map((e) {
      return UserDto.fromJson(e).toDomain();
    }).toList();
    return right(users);
  }

  Future<Either<Error, List<Post>>> searchPost(
    CPostFilter cPostFilter, {
    int skip = 0,
  }) async {
    final query = CPostFilterDto.fromDomain(cPostFilter).toQueryString();
    final apiUri = Uri.parse("$baseApi/search/posts?$query&skip=$skip");
    final res = await _handleGetRequest(apiUri);
    final posts = (res as List).map((e) {
      return PostDto.fromJson(e).toDomain();
    }).toList();
    return right(posts);
  }

  Future<Either<Error, List<TrendingTag>>> searchTags(
    Tag tag, {
    int skip = 0,
  }) async {
    final query = tag.getOrCrash();

    final apiUri = Uri.parse("$baseApi/search/tags?tag=$query&skip=$skip");

    final res = await _handleGetRequest(apiUri);

    final posts = (res as List).map((e) {
      return TrendingTagDto.fromJson(e).toDomain();
    }).toList();
    return right(posts);
  }

  Future<Either<Error, Search>> searchAll(
    String query, {
    int skip = 0,
    UserFilter? userFilter,
    CPostFilter? cPostFilter,
  }) {
    final apiUri = Uri.parse("$baseApi/search/?query=$query");
    return _handleGetRequest(apiUri).then((res) {
      return right(SearchDto.fromJson(res).toDomain());
    });
  }

  Future<String> _uploadAvatarImageToStorage(XFile imageFile) async {
    final File f = imageFile.toFile();
    final String userUUID =
        await _authFacade.getSignedInUser().then((value) => value.uid);
    final avatarRef =
        FirebaseStorage.instance.ref().child('avatar').child(userUUID);

    final OverlaySupportEntry o = showSimpleNotification(
      const Text(
        "Uploading avatar...",
        style: UITextStyles.mainTitle,
      ),
      subtitle: const LinearProgressIndicator(),
      autoDismiss: false,
      background: Colors.transparent,
    );

    avatarRef.putFile(f).snapshotEvents.listen((event) {
      if (event.state == TaskState.success) {
        o.dismiss();
      }
    });

    final String avatarUrl = await avatarRef.getDownloadURL();
    return avatarUrl;
  }

  Future<String> _uploadBackgroundImageToStorage(XFile imageFile) async {
    final File f = imageFile.toFile();

    final String userUUID =
        await _authFacade.getSignedInUser().then((value) => value.uid);
    final Reference backgroundRef =
        FirebaseStorage.instance.ref().child('background').child(
              userUUID,
            );
    final OverlaySupportEntry o = showSimpleNotification(
      const Text(
        'Uploading background...',
        style: UITextStyles.mainTitle,
      ),
      subtitle: const LinearProgressIndicator(),
      autoDismiss: false,
      background: Colors.transparent,
    );

    backgroundRef.putFile(f).snapshotEvents.listen((taskSnapshot) {
      if (taskSnapshot.state == TaskState.success) {
        o.dismiss();
      }
    });
    final String backgroundUrl = await backgroundRef.getDownloadURL();
    return backgroundUrl;
  }

  // submit report
  void submitReport(ReportEnt reportEnt) {
    final Uri apiUri = Uri.parse("$baseApi/report");
    final Map<String, dynamic> reportJson =
        ReportDto.fromDomain(reportEnt).toJson();
    _handlePostRequest(apiUri, reportJson);
  }

  @override
  Future<bool> updateUserID(UserID userID) async {
    final Uri apiUri = Uri.parse("$baseApi/users/userid");
    final String id = userID.getOrCrash();
    final Map<String, dynamic> userIDJson = {'userid': id};
    final res = await _handlePatchRequest(apiUri, userIDJson);
    return res as bool;
  }

  @override
  Future<void> requestForVerification() {
    final Uri apiUri = Uri.parse("$baseApi/users/verify");
    _handlePostRequest(apiUri, {});
    return Future.value();
  }
}
