// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchDto _$SearchDtoFromJson(Map<String, dynamic> json) {
  return _SearchDto.fromJson(json);
}

/// @nodoc
mixin _$SearchDto {
  List<UserDto> get users => throw _privateConstructorUsedError;
  List<PostDto> get posts => throw _privateConstructorUsedError;
  List<TrendingTagDto> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDtoCopyWith<SearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDtoCopyWith<$Res> {
  factory $SearchDtoCopyWith(SearchDto value, $Res Function(SearchDto) then) =
      _$SearchDtoCopyWithImpl<$Res, SearchDto>;
  @useResult
  $Res call(
      {List<UserDto> users, List<PostDto> posts, List<TrendingTagDto> tags});
}

/// @nodoc
class _$SearchDtoCopyWithImpl<$Res, $Val extends SearchDto>
    implements $SearchDtoCopyWith<$Res> {
  _$SearchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? posts = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDto>,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TrendingTagDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchDtoCopyWith<$Res> implements $SearchDtoCopyWith<$Res> {
  factory _$$_SearchDtoCopyWith(
          _$_SearchDto value, $Res Function(_$_SearchDto) then) =
      __$$_SearchDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserDto> users, List<PostDto> posts, List<TrendingTagDto> tags});
}

/// @nodoc
class __$$_SearchDtoCopyWithImpl<$Res>
    extends _$SearchDtoCopyWithImpl<$Res, _$_SearchDto>
    implements _$$_SearchDtoCopyWith<$Res> {
  __$$_SearchDtoCopyWithImpl(
      _$_SearchDto _value, $Res Function(_$_SearchDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? posts = null,
    Object? tags = null,
  }) {
    return _then(_$_SearchDto(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDto>,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TrendingTagDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchDto implements _SearchDto {
  _$_SearchDto(
      {required final List<UserDto> users,
      required final List<PostDto> posts,
      required final List<TrendingTagDto> tags})
      : _users = users,
        _posts = posts,
        _tags = tags;

  factory _$_SearchDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchDtoFromJson(json);

  final List<UserDto> _users;
  @override
  List<UserDto> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<PostDto> _posts;
  @override
  List<PostDto> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  final List<TrendingTagDto> _tags;
  @override
  List<TrendingTagDto> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'SearchDto(users: $users, posts: $posts, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDto &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchDtoCopyWith<_$_SearchDto> get copyWith =>
      __$$_SearchDtoCopyWithImpl<_$_SearchDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchDtoToJson(
      this,
    );
  }
}

abstract class _SearchDto implements SearchDto {
  factory _SearchDto(
      {required final List<UserDto> users,
      required final List<PostDto> posts,
      required final List<TrendingTagDto> tags}) = _$_SearchDto;

  factory _SearchDto.fromJson(Map<String, dynamic> json) =
      _$_SearchDto.fromJson;

  @override
  List<UserDto> get users;
  @override
  List<PostDto> get posts;
  @override
  List<TrendingTagDto> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDtoCopyWith<_$_SearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}
