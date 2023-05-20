part of 'trends_bloc.dart';

@freezed
class TrendsState with _$TrendsState {
  const factory TrendsState({
    required List<Post> trendingPosts,
    required List<User> trendingUsers,
    required List<TrendingTag> trendingTags,
    required bool isFetching,
    required bool isFetchingNewPosts,
    required bool hasReachedMax,
  }) = _TrendsStateData;
  factory TrendsState.initial() => const TrendsState(
        trendingPosts: <Post>[],
        trendingUsers: <User>[],
        trendingTags: <TrendingTag>[],
        isFetching: true,
        isFetchingNewPosts: true,
        hasReachedMax: false,
      );
}
