// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppNotificationPrefs {
  bool get info => throw _privateConstructorUsedError;
  bool get like => throw _privateConstructorUsedError;
  bool get follow => throw _privateConstructorUsedError;
  bool get comments => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppNotificationPrefsCopyWith<AppNotificationPrefs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationPrefsCopyWith<$Res> {
  factory $AppNotificationPrefsCopyWith(AppNotificationPrefs value,
          $Res Function(AppNotificationPrefs) then) =
      _$AppNotificationPrefsCopyWithImpl<$Res, AppNotificationPrefs>;
  @useResult
  $Res call({bool info, bool like, bool follow, bool comments, bool isEnabled});
}

/// @nodoc
class _$AppNotificationPrefsCopyWithImpl<$Res,
        $Val extends AppNotificationPrefs>
    implements $AppNotificationPrefsCopyWith<$Res> {
  _$AppNotificationPrefsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? like = null,
    Object? follow = null,
    Object? comments = null,
    Object? isEnabled = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as bool,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppNotificationPrefsCopyWith<$Res>
    implements $AppNotificationPrefsCopyWith<$Res> {
  factory _$$_AppNotificationPrefsCopyWith(_$_AppNotificationPrefs value,
          $Res Function(_$_AppNotificationPrefs) then) =
      __$$_AppNotificationPrefsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool info, bool like, bool follow, bool comments, bool isEnabled});
}

/// @nodoc
class __$$_AppNotificationPrefsCopyWithImpl<$Res>
    extends _$AppNotificationPrefsCopyWithImpl<$Res, _$_AppNotificationPrefs>
    implements _$$_AppNotificationPrefsCopyWith<$Res> {
  __$$_AppNotificationPrefsCopyWithImpl(_$_AppNotificationPrefs _value,
      $Res Function(_$_AppNotificationPrefs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? like = null,
    Object? follow = null,
    Object? comments = null,
    Object? isEnabled = null,
  }) {
    return _then(_$_AppNotificationPrefs(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as bool,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppNotificationPrefs implements _AppNotificationPrefs {
  const _$_AppNotificationPrefs(
      {required this.info,
      required this.like,
      required this.follow,
      required this.comments,
      required this.isEnabled});

  @override
  final bool info;
  @override
  final bool like;
  @override
  final bool follow;
  @override
  final bool comments;
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'AppNotificationPrefs(info: $info, like: $like, follow: $follow, comments: $comments, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppNotificationPrefs &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, info, like, follow, comments, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppNotificationPrefsCopyWith<_$_AppNotificationPrefs> get copyWith =>
      __$$_AppNotificationPrefsCopyWithImpl<_$_AppNotificationPrefs>(
          this, _$identity);
}

abstract class _AppNotificationPrefs implements AppNotificationPrefs {
  const factory _AppNotificationPrefs(
      {required final bool info,
      required final bool like,
      required final bool follow,
      required final bool comments,
      required final bool isEnabled}) = _$_AppNotificationPrefs;

  @override
  bool get info;
  @override
  bool get like;
  @override
  bool get follow;
  @override
  bool get comments;
  @override
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_AppNotificationPrefsCopyWith<_$_AppNotificationPrefs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppNotification {
  UUID get recieveruuid =>
      throw _privateConstructorUsedError; // required NotificationType notificationType,
  bool get hasRead => throw _privateConstructorUsedError;
  UUID? get produceruuid => throw _privateConstructorUsedError;
  Payload get payload => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
          AppNotification value, $Res Function(AppNotification) then) =
      _$AppNotificationCopyWithImpl<$Res, AppNotification>;
  @useResult
  $Res call(
      {UUID recieveruuid, bool hasRead, UUID? produceruuid, Payload payload});
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res, $Val extends AppNotification>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recieveruuid = null,
    Object? hasRead = null,
    Object? produceruuid = freezed,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      recieveruuid: null == recieveruuid
          ? _value.recieveruuid
          : recieveruuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      hasRead: null == hasRead
          ? _value.hasRead
          : hasRead // ignore: cast_nullable_to_non_nullable
              as bool,
      produceruuid: freezed == produceruuid
          ? _value.produceruuid
          : produceruuid // ignore: cast_nullable_to_non_nullable
              as UUID?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppNotificationCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$_AppNotificationCopyWith(
          _$_AppNotification value, $Res Function(_$_AppNotification) then) =
      __$$_AppNotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UUID recieveruuid, bool hasRead, UUID? produceruuid, Payload payload});
}

/// @nodoc
class __$$_AppNotificationCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res, _$_AppNotification>
    implements _$$_AppNotificationCopyWith<$Res> {
  __$$_AppNotificationCopyWithImpl(
      _$_AppNotification _value, $Res Function(_$_AppNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recieveruuid = null,
    Object? hasRead = null,
    Object? produceruuid = freezed,
    Object? payload = null,
  }) {
    return _then(_$_AppNotification(
      recieveruuid: null == recieveruuid
          ? _value.recieveruuid
          : recieveruuid // ignore: cast_nullable_to_non_nullable
              as UUID,
      hasRead: null == hasRead
          ? _value.hasRead
          : hasRead // ignore: cast_nullable_to_non_nullable
              as bool,
      produceruuid: freezed == produceruuid
          ? _value.produceruuid
          : produceruuid // ignore: cast_nullable_to_non_nullable
              as UUID?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload,
    ));
  }
}

/// @nodoc

class _$_AppNotification implements _AppNotification {
  const _$_AppNotification(
      {required this.recieveruuid,
      required this.hasRead,
      this.produceruuid,
      required this.payload});

  @override
  final UUID recieveruuid;
// required NotificationType notificationType,
  @override
  final bool hasRead;
  @override
  final UUID? produceruuid;
  @override
  final Payload payload;

  @override
  String toString() {
    return 'AppNotification(recieveruuid: $recieveruuid, hasRead: $hasRead, produceruuid: $produceruuid, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppNotification &&
            (identical(other.recieveruuid, recieveruuid) ||
                other.recieveruuid == recieveruuid) &&
            (identical(other.hasRead, hasRead) || other.hasRead == hasRead) &&
            (identical(other.produceruuid, produceruuid) ||
                other.produceruuid == produceruuid) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, recieveruuid, hasRead, produceruuid, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppNotificationCopyWith<_$_AppNotification> get copyWith =>
      __$$_AppNotificationCopyWithImpl<_$_AppNotification>(this, _$identity);
}

abstract class _AppNotification implements AppNotification {
  const factory _AppNotification(
      {required final UUID recieveruuid,
      required final bool hasRead,
      final UUID? produceruuid,
      required final Payload payload}) = _$_AppNotification;

  @override
  UUID get recieveruuid;
  @override // required NotificationType notificationType,
  bool get hasRead;
  @override
  UUID? get produceruuid;
  @override
  Payload get payload;
  @override
  @JsonKey(ignore: true)
  _$$_AppNotificationCopyWith<_$_AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentPayload {
  Post get post => throw _privateConstructorUsedError;
  AppComment get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentPayloadCopyWith<CommentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPayloadCopyWith<$Res> {
  factory $CommentPayloadCopyWith(
          CommentPayload value, $Res Function(CommentPayload) then) =
      _$CommentPayloadCopyWithImpl<$Res, CommentPayload>;
  @useResult
  $Res call({Post post, AppComment comment});

  $PostCopyWith<$Res> get post;
  $AppCommentCopyWith<$Res> get comment;
}

/// @nodoc
class _$CommentPayloadCopyWithImpl<$Res, $Val extends CommentPayload>
    implements $CommentPayloadCopyWith<$Res> {
  _$CommentPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as AppComment,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppCommentCopyWith<$Res> get comment {
    return $AppCommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommentPayloadCopyWith<$Res>
    implements $CommentPayloadCopyWith<$Res> {
  factory _$$_CommentPayloadCopyWith(
          _$_CommentPayload value, $Res Function(_$_CommentPayload) then) =
      __$$_CommentPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Post post, AppComment comment});

  @override
  $PostCopyWith<$Res> get post;
  @override
  $AppCommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$$_CommentPayloadCopyWithImpl<$Res>
    extends _$CommentPayloadCopyWithImpl<$Res, _$_CommentPayload>
    implements _$$_CommentPayloadCopyWith<$Res> {
  __$$_CommentPayloadCopyWithImpl(
      _$_CommentPayload _value, $Res Function(_$_CommentPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? comment = null,
  }) {
    return _then(_$_CommentPayload(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as AppComment,
    ));
  }
}

/// @nodoc

class _$_CommentPayload extends _CommentPayload {
  _$_CommentPayload({required this.post, required this.comment}) : super._();

  @override
  final Post post;
  @override
  final AppComment comment;

  @override
  String toString() {
    return 'CommentPayload(post: $post, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentPayload &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentPayloadCopyWith<_$_CommentPayload> get copyWith =>
      __$$_CommentPayloadCopyWithImpl<_$_CommentPayload>(this, _$identity);
}

abstract class _CommentPayload extends CommentPayload {
  factory _CommentPayload(
      {required final Post post,
      required final AppComment comment}) = _$_CommentPayload;
  _CommentPayload._() : super._();

  @override
  Post get post;
  @override
  AppComment get comment;
  @override
  @JsonKey(ignore: true)
  _$$_CommentPayloadCopyWith<_$_CommentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentReplyPayload {
  Post get post => throw _privateConstructorUsedError;
  AppComment get appComment => throw _privateConstructorUsedError;
  AppComment get replyComment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentReplyPayloadCopyWith<CommentReplyPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentReplyPayloadCopyWith<$Res> {
  factory $CommentReplyPayloadCopyWith(
          CommentReplyPayload value, $Res Function(CommentReplyPayload) then) =
      _$CommentReplyPayloadCopyWithImpl<$Res, CommentReplyPayload>;
  @useResult
  $Res call({Post post, AppComment appComment, AppComment replyComment});

  $PostCopyWith<$Res> get post;
  $AppCommentCopyWith<$Res> get appComment;
  $AppCommentCopyWith<$Res> get replyComment;
}

/// @nodoc
class _$CommentReplyPayloadCopyWithImpl<$Res, $Val extends CommentReplyPayload>
    implements $CommentReplyPayloadCopyWith<$Res> {
  _$CommentReplyPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? appComment = null,
    Object? replyComment = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      appComment: null == appComment
          ? _value.appComment
          : appComment // ignore: cast_nullable_to_non_nullable
              as AppComment,
      replyComment: null == replyComment
          ? _value.replyComment
          : replyComment // ignore: cast_nullable_to_non_nullable
              as AppComment,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppCommentCopyWith<$Res> get appComment {
    return $AppCommentCopyWith<$Res>(_value.appComment, (value) {
      return _then(_value.copyWith(appComment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppCommentCopyWith<$Res> get replyComment {
    return $AppCommentCopyWith<$Res>(_value.replyComment, (value) {
      return _then(_value.copyWith(replyComment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommentReplyPayloadCopyWith<$Res>
    implements $CommentReplyPayloadCopyWith<$Res> {
  factory _$$_CommentReplyPayloadCopyWith(_$_CommentReplyPayload value,
          $Res Function(_$_CommentReplyPayload) then) =
      __$$_CommentReplyPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Post post, AppComment appComment, AppComment replyComment});

  @override
  $PostCopyWith<$Res> get post;
  @override
  $AppCommentCopyWith<$Res> get appComment;
  @override
  $AppCommentCopyWith<$Res> get replyComment;
}

/// @nodoc
class __$$_CommentReplyPayloadCopyWithImpl<$Res>
    extends _$CommentReplyPayloadCopyWithImpl<$Res, _$_CommentReplyPayload>
    implements _$$_CommentReplyPayloadCopyWith<$Res> {
  __$$_CommentReplyPayloadCopyWithImpl(_$_CommentReplyPayload _value,
      $Res Function(_$_CommentReplyPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? appComment = null,
    Object? replyComment = null,
  }) {
    return _then(_$_CommentReplyPayload(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      appComment: null == appComment
          ? _value.appComment
          : appComment // ignore: cast_nullable_to_non_nullable
              as AppComment,
      replyComment: null == replyComment
          ? _value.replyComment
          : replyComment // ignore: cast_nullable_to_non_nullable
              as AppComment,
    ));
  }
}

/// @nodoc

class _$_CommentReplyPayload extends _CommentReplyPayload {
  _$_CommentReplyPayload(
      {required this.post,
      required this.appComment,
      required this.replyComment})
      : super._();

  @override
  final Post post;
  @override
  final AppComment appComment;
  @override
  final AppComment replyComment;

  @override
  String toString() {
    return 'CommentReplyPayload(post: $post, appComment: $appComment, replyComment: $replyComment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentReplyPayload &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.appComment, appComment) ||
                other.appComment == appComment) &&
            (identical(other.replyComment, replyComment) ||
                other.replyComment == replyComment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post, appComment, replyComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentReplyPayloadCopyWith<_$_CommentReplyPayload> get copyWith =>
      __$$_CommentReplyPayloadCopyWithImpl<_$_CommentReplyPayload>(
          this, _$identity);
}

abstract class _CommentReplyPayload extends CommentReplyPayload {
  factory _CommentReplyPayload(
      {required final Post post,
      required final AppComment appComment,
      required final AppComment replyComment}) = _$_CommentReplyPayload;
  _CommentReplyPayload._() : super._();

  @override
  Post get post;
  @override
  AppComment get appComment;
  @override
  AppComment get replyComment;
  @override
  @JsonKey(ignore: true)
  _$$_CommentReplyPayloadCopyWith<_$_CommentReplyPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InfoPayload {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoPayloadCopyWith<InfoPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoPayloadCopyWith<$Res> {
  factory $InfoPayloadCopyWith(
          InfoPayload value, $Res Function(InfoPayload) then) =
      _$InfoPayloadCopyWithImpl<$Res, InfoPayload>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$InfoPayloadCopyWithImpl<$Res, $Val extends InfoPayload>
    implements $InfoPayloadCopyWith<$Res> {
  _$InfoPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoPayloadCopyWith<$Res>
    implements $InfoPayloadCopyWith<$Res> {
  factory _$$_InfoPayloadCopyWith(
          _$_InfoPayload value, $Res Function(_$_InfoPayload) then) =
      __$$_InfoPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_InfoPayloadCopyWithImpl<$Res>
    extends _$InfoPayloadCopyWithImpl<$Res, _$_InfoPayload>
    implements _$$_InfoPayloadCopyWith<$Res> {
  __$$_InfoPayloadCopyWithImpl(
      _$_InfoPayload _value, $Res Function(_$_InfoPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_InfoPayload(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InfoPayload extends _InfoPayload {
  _$_InfoPayload({required this.title, required this.description}) : super._();

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'InfoPayload(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoPayload &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoPayloadCopyWith<_$_InfoPayload> get copyWith =>
      __$$_InfoPayloadCopyWithImpl<_$_InfoPayload>(this, _$identity);
}

abstract class _InfoPayload extends InfoPayload {
  factory _InfoPayload(
      {required final String title,
      required final String description}) = _$_InfoPayload;
  _InfoPayload._() : super._();

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_InfoPayloadCopyWith<_$_InfoPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LikePayload {
  User get user => throw _privateConstructorUsedError;
  Post get post => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikePayloadCopyWith<LikePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikePayloadCopyWith<$Res> {
  factory $LikePayloadCopyWith(
          LikePayload value, $Res Function(LikePayload) then) =
      _$LikePayloadCopyWithImpl<$Res, LikePayload>;
  @useResult
  $Res call({User user, Post post});

  $UserCopyWith<$Res> get user;
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$LikePayloadCopyWithImpl<$Res, $Val extends LikePayload>
    implements $LikePayloadCopyWith<$Res> {
  _$LikePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? post = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LikePayloadCopyWith<$Res>
    implements $LikePayloadCopyWith<$Res> {
  factory _$$_LikePayloadCopyWith(
          _$_LikePayload value, $Res Function(_$_LikePayload) then) =
      __$$_LikePayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Post post});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$_LikePayloadCopyWithImpl<$Res>
    extends _$LikePayloadCopyWithImpl<$Res, _$_LikePayload>
    implements _$$_LikePayloadCopyWith<$Res> {
  __$$_LikePayloadCopyWithImpl(
      _$_LikePayload _value, $Res Function(_$_LikePayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? post = null,
  }) {
    return _then(_$_LikePayload(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$_LikePayload extends _LikePayload {
  _$_LikePayload({required this.user, required this.post}) : super._();

  @override
  final User user;
  @override
  final Post post;

  @override
  String toString() {
    return 'LikePayload(user: $user, post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikePayload &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikePayloadCopyWith<_$_LikePayload> get copyWith =>
      __$$_LikePayloadCopyWithImpl<_$_LikePayload>(this, _$identity);
}

abstract class _LikePayload extends LikePayload {
  factory _LikePayload({required final User user, required final Post post}) =
      _$_LikePayload;
  _LikePayload._() : super._();

  @override
  User get user;
  @override
  Post get post;
  @override
  @JsonKey(ignore: true)
  _$$_LikePayloadCopyWith<_$_LikePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FollowPayload {
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowPayloadCopyWith<FollowPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowPayloadCopyWith<$Res> {
  factory $FollowPayloadCopyWith(
          FollowPayload value, $Res Function(FollowPayload) then) =
      _$FollowPayloadCopyWithImpl<$Res, FollowPayload>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$FollowPayloadCopyWithImpl<$Res, $Val extends FollowPayload>
    implements $FollowPayloadCopyWith<$Res> {
  _$FollowPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FollowPayloadCopyWith<$Res>
    implements $FollowPayloadCopyWith<$Res> {
  factory _$$_FollowPayloadCopyWith(
          _$_FollowPayload value, $Res Function(_$_FollowPayload) then) =
      __$$_FollowPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_FollowPayloadCopyWithImpl<$Res>
    extends _$FollowPayloadCopyWithImpl<$Res, _$_FollowPayload>
    implements _$$_FollowPayloadCopyWith<$Res> {
  __$$_FollowPayloadCopyWithImpl(
      _$_FollowPayload _value, $Res Function(_$_FollowPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_FollowPayload(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_FollowPayload extends _FollowPayload {
  _$_FollowPayload({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'FollowPayload(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowPayload &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FollowPayloadCopyWith<_$_FollowPayload> get copyWith =>
      __$$_FollowPayloadCopyWithImpl<_$_FollowPayload>(this, _$identity);
}

abstract class _FollowPayload extends FollowPayload {
  factory _FollowPayload({required final User user}) = _$_FollowPayload;
  _FollowPayload._() : super._();

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_FollowPayloadCopyWith<_$_FollowPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AlertPayload {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlertPayloadCopyWith<AlertPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertPayloadCopyWith<$Res> {
  factory $AlertPayloadCopyWith(
          AlertPayload value, $Res Function(AlertPayload) then) =
      _$AlertPayloadCopyWithImpl<$Res, AlertPayload>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$AlertPayloadCopyWithImpl<$Res, $Val extends AlertPayload>
    implements $AlertPayloadCopyWith<$Res> {
  _$AlertPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlertPayloadCopyWith<$Res>
    implements $AlertPayloadCopyWith<$Res> {
  factory _$$_AlertPayloadCopyWith(
          _$_AlertPayload value, $Res Function(_$_AlertPayload) then) =
      __$$_AlertPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_AlertPayloadCopyWithImpl<$Res>
    extends _$AlertPayloadCopyWithImpl<$Res, _$_AlertPayload>
    implements _$$_AlertPayloadCopyWith<$Res> {
  __$$_AlertPayloadCopyWithImpl(
      _$_AlertPayload _value, $Res Function(_$_AlertPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_AlertPayload(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AlertPayload extends _AlertPayload {
  _$_AlertPayload({required this.title, required this.description}) : super._();

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'AlertPayload(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlertPayload &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlertPayloadCopyWith<_$_AlertPayload> get copyWith =>
      __$$_AlertPayloadCopyWithImpl<_$_AlertPayload>(this, _$identity);
}

abstract class _AlertPayload extends AlertPayload {
  factory _AlertPayload(
      {required final String title,
      required final String description}) = _$_AlertPayload;
  _AlertPayload._() : super._();

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_AlertPayloadCopyWith<_$_AlertPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
