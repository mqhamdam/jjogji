part of 'trends_bloc.dart';

@freezed
class TrendsEvent with _$TrendsEvent {
  const factory TrendsEvent.started() = _Started;
  const factory TrendsEvent.refreshState() = _RefreshState;
  const factory TrendsEvent.fetchTrendingPosts(int skip) = _FetchTrendingPosts;
  const factory TrendsEvent.fetchTrendingUsers() = _FetchTrendingUsers;
  const factory TrendsEvent.fetchTrendingTags() = _FetchTrendingTags;
  const factory TrendsEvent.changeFetchingStatus(bool isFetching) =
      _ChangeFetchingStatus;
  const factory TrendsEvent.fetchNextPosts() = _FetchNextPosts;
  const factory TrendsEvent.stateChanged(TrendsState state) = _StateChanged;
}
