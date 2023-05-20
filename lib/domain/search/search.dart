import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/user/user.dart';

part 'search.freezed.dart';

@freezed
class Search with _$Search {
  const factory Search({
    required List<User> users,
    required List<Post> posts,
    required List<TrendingTag> tags,
  }) = _Search;

  factory Search.empty() => const Search(
        users: [],
        posts: [],
        tags: [],
      );
}
