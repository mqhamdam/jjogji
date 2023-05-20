// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchDto _$$_SearchDtoFromJson(Map<String, dynamic> json) => _$_SearchDto(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      posts: (json['posts'] as List<dynamic>)
          .map((e) => PostDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => TrendingTagDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchDtoToJson(_$_SearchDto instance) =>
    <String, dynamic>{
      'users': instance.users,
      'posts': instance.posts,
      'tags': instance.tags,
    };
