import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/search/search.dart';
import 'package:jjogji/infrastructure/post/post_dto.dart';
import 'package:jjogji/infrastructure/user/user_dto.dart';

part 'search_dto.freezed.dart';
part 'search_dto.g.dart';

@freezed
class SearchDto with _$SearchDto {
  factory SearchDto({
    required List<UserDto> users,
    required List<PostDto> posts,
    required List<TrendingTagDto> tags,
  }) = _SearchDto;

  factory SearchDto.fromDomain(Search search) => SearchDto(
        users: search.users.map((e) => UserDto.fromDomain(e)).toList(),
        posts: search.posts.map((e) => PostDto.fromDomain(e)).toList(),
        tags: search.tags.map((e) => TrendingTagDto.fromDomain(e)).toList(),
      );

  factory SearchDto.fromJson(Map<String, dynamic> json) =>
      _$SearchDtoFromJson(json);
}

extension SearchDtoX on SearchDto {
  Search toDomain() => Search(
        users: users.map((e) => e.toDomain()).toList(),
        posts: posts.map((e) => e.toDomain()).toList(),
        tags: tags.map((e) => e.toDomain()).toList(),
      );
}
