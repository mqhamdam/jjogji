// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppNotificationPrefsDto _$AppNotificationPrefsDtoFromJson(
    Map<String, dynamic> json) {
  return _AppNotificationPrefsDto.fromJson(json);
}

/// @nodoc
mixin _$AppNotificationPrefsDto {
  bool get info => throw _privateConstructorUsedError;
  bool get like => throw _privateConstructorUsedError;
  bool get follow => throw _privateConstructorUsedError;
  bool get comments => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppNotificationPrefsDtoCopyWith<AppNotificationPrefsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationPrefsDtoCopyWith<$Res> {
  factory $AppNotificationPrefsDtoCopyWith(AppNotificationPrefsDto value,
          $Res Function(AppNotificationPrefsDto) then) =
      _$AppNotificationPrefsDtoCopyWithImpl<$Res, AppNotificationPrefsDto>;
  @useResult
  $Res call({bool info, bool like, bool follow, bool comments, bool isEnabled});
}

/// @nodoc
class _$AppNotificationPrefsDtoCopyWithImpl<$Res,
        $Val extends AppNotificationPrefsDto>
    implements $AppNotificationPrefsDtoCopyWith<$Res> {
  _$AppNotificationPrefsDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_AppNotificationPrefsDtoCopyWith<$Res>
    implements $AppNotificationPrefsDtoCopyWith<$Res> {
  factory _$$_AppNotificationPrefsDtoCopyWith(_$_AppNotificationPrefsDto value,
          $Res Function(_$_AppNotificationPrefsDto) then) =
      __$$_AppNotificationPrefsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool info, bool like, bool follow, bool comments, bool isEnabled});
}

/// @nodoc
class __$$_AppNotificationPrefsDtoCopyWithImpl<$Res>
    extends _$AppNotificationPrefsDtoCopyWithImpl<$Res,
        _$_AppNotificationPrefsDto>
    implements _$$_AppNotificationPrefsDtoCopyWith<$Res> {
  __$$_AppNotificationPrefsDtoCopyWithImpl(_$_AppNotificationPrefsDto _value,
      $Res Function(_$_AppNotificationPrefsDto) _then)
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
    return _then(_$_AppNotificationPrefsDto(
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
@JsonSerializable()
class _$_AppNotificationPrefsDto implements _AppNotificationPrefsDto {
  const _$_AppNotificationPrefsDto(
      {required this.info,
      required this.like,
      required this.follow,
      required this.comments,
      required this.isEnabled});

  factory _$_AppNotificationPrefsDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppNotificationPrefsDtoFromJson(json);

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
    return 'AppNotificationPrefsDto(info: $info, like: $like, follow: $follow, comments: $comments, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppNotificationPrefsDto &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, info, like, follow, comments, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppNotificationPrefsDtoCopyWith<_$_AppNotificationPrefsDto>
      get copyWith =>
          __$$_AppNotificationPrefsDtoCopyWithImpl<_$_AppNotificationPrefsDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppNotificationPrefsDtoToJson(
      this,
    );
  }
}

abstract class _AppNotificationPrefsDto implements AppNotificationPrefsDto {
  const factory _AppNotificationPrefsDto(
      {required final bool info,
      required final bool like,
      required final bool follow,
      required final bool comments,
      required final bool isEnabled}) = _$_AppNotificationPrefsDto;

  factory _AppNotificationPrefsDto.fromJson(Map<String, dynamic> json) =
      _$_AppNotificationPrefsDto.fromJson;

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
  _$$_AppNotificationPrefsDtoCopyWith<_$_AppNotificationPrefsDto>
      get copyWith => throw _privateConstructorUsedError;
}

AppNotificationDto _$AppNotificationDtoFromJson(Map<String, dynamic> json) {
  return _AppNotificationDto.fromJson(json);
}

/// @nodoc
mixin _$AppNotificationDto {
  bool get hasRead => throw _privateConstructorUsedError;
  PayloadDto get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppNotificationDtoCopyWith<AppNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationDtoCopyWith<$Res> {
  factory $AppNotificationDtoCopyWith(
          AppNotificationDto value, $Res Function(AppNotificationDto) then) =
      _$AppNotificationDtoCopyWithImpl<$Res, AppNotificationDto>;
  @useResult
  $Res call({bool hasRead, PayloadDto payload});

  $PayloadDtoCopyWith<$Res> get payload;
}

/// @nodoc
class _$AppNotificationDtoCopyWithImpl<$Res, $Val extends AppNotificationDto>
    implements $AppNotificationDtoCopyWith<$Res> {
  _$AppNotificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasRead = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      hasRead: null == hasRead
          ? _value.hasRead
          : hasRead // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PayloadDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadDtoCopyWith<$Res> get payload {
    return $PayloadDtoCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppNotificationDtoCopyWith<$Res>
    implements $AppNotificationDtoCopyWith<$Res> {
  factory _$$_AppNotificationDtoCopyWith(_$_AppNotificationDto value,
          $Res Function(_$_AppNotificationDto) then) =
      __$$_AppNotificationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasRead, PayloadDto payload});

  @override
  $PayloadDtoCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_AppNotificationDtoCopyWithImpl<$Res>
    extends _$AppNotificationDtoCopyWithImpl<$Res, _$_AppNotificationDto>
    implements _$$_AppNotificationDtoCopyWith<$Res> {
  __$$_AppNotificationDtoCopyWithImpl(
      _$_AppNotificationDto _value, $Res Function(_$_AppNotificationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasRead = null,
    Object? payload = null,
  }) {
    return _then(_$_AppNotificationDto(
      hasRead: null == hasRead
          ? _value.hasRead
          : hasRead // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PayloadDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppNotificationDto implements _AppNotificationDto {
  const _$_AppNotificationDto({required this.hasRead, required this.payload});

  factory _$_AppNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppNotificationDtoFromJson(json);

  @override
  final bool hasRead;
  @override
  final PayloadDto payload;

  @override
  String toString() {
    return 'AppNotificationDto(hasRead: $hasRead, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppNotificationDto &&
            (identical(other.hasRead, hasRead) || other.hasRead == hasRead) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hasRead, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppNotificationDtoCopyWith<_$_AppNotificationDto> get copyWith =>
      __$$_AppNotificationDtoCopyWithImpl<_$_AppNotificationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppNotificationDtoToJson(
      this,
    );
  }
}

abstract class _AppNotificationDto implements AppNotificationDto {
  const factory _AppNotificationDto(
      {required final bool hasRead,
      required final PayloadDto payload}) = _$_AppNotificationDto;

  factory _AppNotificationDto.fromJson(Map<String, dynamic> json) =
      _$_AppNotificationDto.fromJson;

  @override
  bool get hasRead;
  @override
  PayloadDto get payload;
  @override
  @JsonKey(ignore: true)
  _$$_AppNotificationDtoCopyWith<_$_AppNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PayloadDto _$PayloadDtoFromJson(Map<String, dynamic> json) {
  return _PayloadDto.fromJson(json);
}

/// @nodoc
mixin _$PayloadDto {
  NotificationType get type => throw _privateConstructorUsedError;
  UserDto? get user => throw _privateConstructorUsedError;
  PostDto? get post => throw _privateConstructorUsedError;
  AppCommentDto? get comment => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadDtoCopyWith<PayloadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadDtoCopyWith<$Res> {
  factory $PayloadDtoCopyWith(
          PayloadDto value, $Res Function(PayloadDto) then) =
      _$PayloadDtoCopyWithImpl<$Res, PayloadDto>;
  @useResult
  $Res call(
      {NotificationType type,
      UserDto? user,
      PostDto? post,
      AppCommentDto? comment,
      String? title,
      String? description});

  $UserDtoCopyWith<$Res>? get user;
  $PostDtoCopyWith<$Res>? get post;
  $AppCommentDtoCopyWith<$Res>? get comment;
}

/// @nodoc
class _$PayloadDtoCopyWithImpl<$Res, $Val extends PayloadDto>
    implements $PayloadDtoCopyWith<$Res> {
  _$PayloadDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? user = freezed,
    Object? post = freezed,
    Object? comment = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostDto?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as AppCommentDto?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostDtoCopyWith<$Res>? get post {
    if (_value.post == null) {
      return null;
    }

    return $PostDtoCopyWith<$Res>(_value.post!, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppCommentDtoCopyWith<$Res>? get comment {
    if (_value.comment == null) {
      return null;
    }

    return $AppCommentDtoCopyWith<$Res>(_value.comment!, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PayloadDtoCopyWith<$Res>
    implements $PayloadDtoCopyWith<$Res> {
  factory _$$_PayloadDtoCopyWith(
          _$_PayloadDto value, $Res Function(_$_PayloadDto) then) =
      __$$_PayloadDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotificationType type,
      UserDto? user,
      PostDto? post,
      AppCommentDto? comment,
      String? title,
      String? description});

  @override
  $UserDtoCopyWith<$Res>? get user;
  @override
  $PostDtoCopyWith<$Res>? get post;
  @override
  $AppCommentDtoCopyWith<$Res>? get comment;
}

/// @nodoc
class __$$_PayloadDtoCopyWithImpl<$Res>
    extends _$PayloadDtoCopyWithImpl<$Res, _$_PayloadDto>
    implements _$$_PayloadDtoCopyWith<$Res> {
  __$$_PayloadDtoCopyWithImpl(
      _$_PayloadDto _value, $Res Function(_$_PayloadDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? user = freezed,
    Object? post = freezed,
    Object? comment = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_PayloadDto(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostDto?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as AppCommentDto?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PayloadDto implements _PayloadDto {
  const _$_PayloadDto(
      {required this.type,
      required this.user,
      required this.post,
      required this.comment,
      required this.title,
      required this.description});

  factory _$_PayloadDto.fromJson(Map<String, dynamic> json) =>
      _$$_PayloadDtoFromJson(json);

  @override
  final NotificationType type;
  @override
  final UserDto? user;
  @override
  final PostDto? post;
  @override
  final AppCommentDto? comment;
  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'PayloadDto(type: $type, user: $user, post: $post, comment: $comment, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayloadDto &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, user, post, comment, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayloadDtoCopyWith<_$_PayloadDto> get copyWith =>
      __$$_PayloadDtoCopyWithImpl<_$_PayloadDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayloadDtoToJson(
      this,
    );
  }
}

abstract class _PayloadDto implements PayloadDto {
  const factory _PayloadDto(
      {required final NotificationType type,
      required final UserDto? user,
      required final PostDto? post,
      required final AppCommentDto? comment,
      required final String? title,
      required final String? description}) = _$_PayloadDto;

  factory _PayloadDto.fromJson(Map<String, dynamic> json) =
      _$_PayloadDto.fromJson;

  @override
  NotificationType get type;
  @override
  UserDto? get user;
  @override
  PostDto? get post;
  @override
  AppCommentDto? get comment;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_PayloadDtoCopyWith<_$_PayloadDto> get copyWith =>
      throw _privateConstructorUsedError;
}
