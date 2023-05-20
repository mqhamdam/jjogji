// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSearchEventCopyWith<$Res> {
  factory $AppSearchEventCopyWith(
          AppSearchEvent value, $Res Function(AppSearchEvent) then) =
      _$AppSearchEventCopyWithImpl<$Res, AppSearchEvent>;
}

/// @nodoc
class _$AppSearchEventCopyWithImpl<$Res, $Val extends AppSearchEvent>
    implements $AppSearchEventCopyWith<$Res> {
  _$AppSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppSearchEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppSearchEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SearchAllCopyWith<$Res> {
  factory _$$_SearchAllCopyWith(
          _$_SearchAll value, $Res Function(_$_SearchAll) then) =
      __$$_SearchAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchAllCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_SearchAll>
    implements _$$_SearchAllCopyWith<$Res> {
  __$$_SearchAllCopyWithImpl(
      _$_SearchAll _value, $Res Function(_$_SearchAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchAll implements _SearchAll {
  const _$_SearchAll();

  @override
  String toString() {
    return 'AppSearchEvent.searchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return searchAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return searchAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (searchAll != null) {
      return searchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return searchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return searchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (searchAll != null) {
      return searchAll(this);
    }
    return orElse();
  }
}

abstract class _SearchAll implements AppSearchEvent {
  const factory _SearchAll() = _$_SearchAll;
}

/// @nodoc
abstract class _$$_ChangeSearchStateCopyWith<$Res> {
  factory _$$_ChangeSearchStateCopyWith(_$_ChangeSearchState value,
          $Res Function(_$_ChangeSearchState) then) =
      __$$_ChangeSearchStateCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchState searchState});
}

/// @nodoc
class __$$_ChangeSearchStateCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_ChangeSearchState>
    implements _$$_ChangeSearchStateCopyWith<$Res> {
  __$$_ChangeSearchStateCopyWithImpl(
      _$_ChangeSearchState _value, $Res Function(_$_ChangeSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchState = null,
  }) {
    return _then(_$_ChangeSearchState(
      null == searchState
          ? _value.searchState
          : searchState // ignore: cast_nullable_to_non_nullable
              as SearchState,
    ));
  }
}

/// @nodoc

class _$_ChangeSearchState implements _ChangeSearchState {
  const _$_ChangeSearchState(this.searchState);

  @override
  final SearchState searchState;

  @override
  String toString() {
    return 'AppSearchEvent.changeSearchState(searchState: $searchState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSearchState &&
            (identical(other.searchState, searchState) ||
                other.searchState == searchState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSearchStateCopyWith<_$_ChangeSearchState> get copyWith =>
      __$$_ChangeSearchStateCopyWithImpl<_$_ChangeSearchState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return changeSearchState(searchState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return changeSearchState?.call(searchState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (changeSearchState != null) {
      return changeSearchState(searchState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return changeSearchState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return changeSearchState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (changeSearchState != null) {
      return changeSearchState(this);
    }
    return orElse();
  }
}

abstract class _ChangeSearchState implements AppSearchEvent {
  const factory _ChangeSearchState(final SearchState searchState) =
      _$_ChangeSearchState;

  SearchState get searchState;
  @JsonKey(ignore: true)
  _$$_ChangeSearchStateCopyWith<_$_ChangeSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeUserFilterCopyWith<$Res> {
  factory _$$_ChangeUserFilterCopyWith(
          _$_ChangeUserFilter value, $Res Function(_$_ChangeUserFilter) then) =
      __$$_ChangeUserFilterCopyWithImpl<$Res>;
  @useResult
  $Res call({UserFilter userFilter});

  $UserFilterCopyWith<$Res> get userFilter;
}

/// @nodoc
class __$$_ChangeUserFilterCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_ChangeUserFilter>
    implements _$$_ChangeUserFilterCopyWith<$Res> {
  __$$_ChangeUserFilterCopyWithImpl(
      _$_ChangeUserFilter _value, $Res Function(_$_ChangeUserFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userFilter = null,
  }) {
    return _then(_$_ChangeUserFilter(
      null == userFilter
          ? _value.userFilter
          : userFilter // ignore: cast_nullable_to_non_nullable
              as UserFilter,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFilterCopyWith<$Res> get userFilter {
    return $UserFilterCopyWith<$Res>(_value.userFilter, (value) {
      return _then(_value.copyWith(userFilter: value));
    });
  }
}

/// @nodoc

class _$_ChangeUserFilter implements _ChangeUserFilter {
  const _$_ChangeUserFilter(this.userFilter);

  @override
  final UserFilter userFilter;

  @override
  String toString() {
    return 'AppSearchEvent.changeUserFilter(userFilter: $userFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeUserFilter &&
            (identical(other.userFilter, userFilter) ||
                other.userFilter == userFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeUserFilterCopyWith<_$_ChangeUserFilter> get copyWith =>
      __$$_ChangeUserFilterCopyWithImpl<_$_ChangeUserFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return changeUserFilter(userFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return changeUserFilter?.call(userFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (changeUserFilter != null) {
      return changeUserFilter(userFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return changeUserFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return changeUserFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (changeUserFilter != null) {
      return changeUserFilter(this);
    }
    return orElse();
  }
}

abstract class _ChangeUserFilter implements AppSearchEvent {
  const factory _ChangeUserFilter(final UserFilter userFilter) =
      _$_ChangeUserFilter;

  UserFilter get userFilter;
  @JsonKey(ignore: true)
  _$$_ChangeUserFilterCopyWith<_$_ChangeUserFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeCPostFilterCopyWith<$Res> {
  factory _$$_ChangeCPostFilterCopyWith(_$_ChangeCPostFilter value,
          $Res Function(_$_ChangeCPostFilter) then) =
      __$$_ChangeCPostFilterCopyWithImpl<$Res>;
  @useResult
  $Res call({CPostFilter cPostFilter});

  $CPostFilterCopyWith<$Res> get cPostFilter;
}

/// @nodoc
class __$$_ChangeCPostFilterCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_ChangeCPostFilter>
    implements _$$_ChangeCPostFilterCopyWith<$Res> {
  __$$_ChangeCPostFilterCopyWithImpl(
      _$_ChangeCPostFilter _value, $Res Function(_$_ChangeCPostFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cPostFilter = null,
  }) {
    return _then(_$_ChangeCPostFilter(
      null == cPostFilter
          ? _value.cPostFilter
          : cPostFilter // ignore: cast_nullable_to_non_nullable
              as CPostFilter,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CPostFilterCopyWith<$Res> get cPostFilter {
    return $CPostFilterCopyWith<$Res>(_value.cPostFilter, (value) {
      return _then(_value.copyWith(cPostFilter: value));
    });
  }
}

/// @nodoc

class _$_ChangeCPostFilter implements _ChangeCPostFilter {
  const _$_ChangeCPostFilter(this.cPostFilter);

  @override
  final CPostFilter cPostFilter;

  @override
  String toString() {
    return 'AppSearchEvent.changeCPostFilter(cPostFilter: $cPostFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeCPostFilter &&
            (identical(other.cPostFilter, cPostFilter) ||
                other.cPostFilter == cPostFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cPostFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeCPostFilterCopyWith<_$_ChangeCPostFilter> get copyWith =>
      __$$_ChangeCPostFilterCopyWithImpl<_$_ChangeCPostFilter>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return changeCPostFilter(cPostFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return changeCPostFilter?.call(cPostFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (changeCPostFilter != null) {
      return changeCPostFilter(cPostFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return changeCPostFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return changeCPostFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (changeCPostFilter != null) {
      return changeCPostFilter(this);
    }
    return orElse();
  }
}

abstract class _ChangeCPostFilter implements AppSearchEvent {
  const factory _ChangeCPostFilter(final CPostFilter cPostFilter) =
      _$_ChangeCPostFilter;

  CPostFilter get cPostFilter;
  @JsonKey(ignore: true)
  _$$_ChangeCPostFilterCopyWith<_$_ChangeCPostFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeQueryCopyWith<$Res> {
  factory _$$_ChangeQueryCopyWith(
          _$_ChangeQuery value, $Res Function(_$_ChangeQuery) then) =
      __$$_ChangeQueryCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_ChangeQueryCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_ChangeQuery>
    implements _$$_ChangeQueryCopyWith<$Res> {
  __$$_ChangeQueryCopyWithImpl(
      _$_ChangeQuery _value, $Res Function(_$_ChangeQuery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_ChangeQuery(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeQuery implements _ChangeQuery {
  const _$_ChangeQuery(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'AppSearchEvent.changeQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeQuery &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeQueryCopyWith<_$_ChangeQuery> get copyWith =>
      __$$_ChangeQueryCopyWithImpl<_$_ChangeQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return changeQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return changeQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (changeQuery != null) {
      return changeQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return changeQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return changeQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (changeQuery != null) {
      return changeQuery(this);
    }
    return orElse();
  }
}

abstract class _ChangeQuery implements AppSearchEvent {
  const factory _ChangeQuery(final String query) = _$_ChangeQuery;

  String get query;
  @JsonKey(ignore: true)
  _$$_ChangeQueryCopyWith<_$_ChangeQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchUsersCopyWith<$Res> {
  factory _$$_SearchUsersCopyWith(
          _$_SearchUsers value, $Res Function(_$_SearchUsers) then) =
      __$$_SearchUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchUsersCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_SearchUsers>
    implements _$$_SearchUsersCopyWith<$Res> {
  __$$_SearchUsersCopyWithImpl(
      _$_SearchUsers _value, $Res Function(_$_SearchUsers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchUsers implements _SearchUsers {
  const _$_SearchUsers();

  @override
  String toString() {
    return 'AppSearchEvent.searchUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return searchUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return searchUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return searchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return searchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(this);
    }
    return orElse();
  }
}

abstract class _SearchUsers implements AppSearchEvent {
  const factory _SearchUsers() = _$_SearchUsers;
}

/// @nodoc
abstract class _$$_SearchPostsCopyWith<$Res> {
  factory _$$_SearchPostsCopyWith(
          _$_SearchPosts value, $Res Function(_$_SearchPosts) then) =
      __$$_SearchPostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchPostsCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_SearchPosts>
    implements _$$_SearchPostsCopyWith<$Res> {
  __$$_SearchPostsCopyWithImpl(
      _$_SearchPosts _value, $Res Function(_$_SearchPosts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchPosts implements _SearchPosts {
  const _$_SearchPosts();

  @override
  String toString() {
    return 'AppSearchEvent.searchPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return searchPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return searchPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (searchPosts != null) {
      return searchPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return searchPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return searchPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (searchPosts != null) {
      return searchPosts(this);
    }
    return orElse();
  }
}

abstract class _SearchPosts implements AppSearchEvent {
  const factory _SearchPosts() = _$_SearchPosts;
}

/// @nodoc
abstract class _$$_SearchTagsCopyWith<$Res> {
  factory _$$_SearchTagsCopyWith(
          _$_SearchTags value, $Res Function(_$_SearchTags) then) =
      __$$_SearchTagsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchTagsCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_SearchTags>
    implements _$$_SearchTagsCopyWith<$Res> {
  __$$_SearchTagsCopyWithImpl(
      _$_SearchTags _value, $Res Function(_$_SearchTags) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchTags implements _SearchTags {
  const _$_SearchTags();

  @override
  String toString() {
    return 'AppSearchEvent.searchTags()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchTags);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return searchTags();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return searchTags?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (searchTags != null) {
      return searchTags();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return searchTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return searchTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (searchTags != null) {
      return searchTags(this);
    }
    return orElse();
  }
}

abstract class _SearchTags implements AppSearchEvent {
  const factory _SearchTags() = _$_SearchTags;
}

/// @nodoc
abstract class _$$_LoadMoreUsersCopyWith<$Res> {
  factory _$$_LoadMoreUsersCopyWith(
          _$_LoadMoreUsers value, $Res Function(_$_LoadMoreUsers) then) =
      __$$_LoadMoreUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMoreUsersCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_LoadMoreUsers>
    implements _$$_LoadMoreUsersCopyWith<$Res> {
  __$$_LoadMoreUsersCopyWithImpl(
      _$_LoadMoreUsers _value, $Res Function(_$_LoadMoreUsers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMoreUsers implements _LoadMoreUsers {
  const _$_LoadMoreUsers();

  @override
  String toString() {
    return 'AppSearchEvent.loadMoreUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMoreUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return loadMoreUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return loadMoreUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (loadMoreUsers != null) {
      return loadMoreUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return loadMoreUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return loadMoreUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (loadMoreUsers != null) {
      return loadMoreUsers(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreUsers implements AppSearchEvent {
  const factory _LoadMoreUsers() = _$_LoadMoreUsers;
}

/// @nodoc
abstract class _$$_LoadMorePostsCopyWith<$Res> {
  factory _$$_LoadMorePostsCopyWith(
          _$_LoadMorePosts value, $Res Function(_$_LoadMorePosts) then) =
      __$$_LoadMorePostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMorePostsCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_LoadMorePosts>
    implements _$$_LoadMorePostsCopyWith<$Res> {
  __$$_LoadMorePostsCopyWithImpl(
      _$_LoadMorePosts _value, $Res Function(_$_LoadMorePosts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMorePosts implements _LoadMorePosts {
  const _$_LoadMorePosts();

  @override
  String toString() {
    return 'AppSearchEvent.loadMorePosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMorePosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return loadMorePosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return loadMorePosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (loadMorePosts != null) {
      return loadMorePosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return loadMorePosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return loadMorePosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (loadMorePosts != null) {
      return loadMorePosts(this);
    }
    return orElse();
  }
}

abstract class _LoadMorePosts implements AppSearchEvent {
  const factory _LoadMorePosts() = _$_LoadMorePosts;
}

/// @nodoc
abstract class _$$_LoadMoreTagsCopyWith<$Res> {
  factory _$$_LoadMoreTagsCopyWith(
          _$_LoadMoreTags value, $Res Function(_$_LoadMoreTags) then) =
      __$$_LoadMoreTagsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMoreTagsCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_LoadMoreTags>
    implements _$$_LoadMoreTagsCopyWith<$Res> {
  __$$_LoadMoreTagsCopyWithImpl(
      _$_LoadMoreTags _value, $Res Function(_$_LoadMoreTags) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMoreTags implements _LoadMoreTags {
  const _$_LoadMoreTags();

  @override
  String toString() {
    return 'AppSearchEvent.loadMoreTags()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMoreTags);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return loadMoreTags();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return loadMoreTags?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (loadMoreTags != null) {
      return loadMoreTags();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return loadMoreTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return loadMoreTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (loadMoreTags != null) {
      return loadMoreTags(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreTags implements AppSearchEvent {
  const factory _LoadMoreTags() = _$_LoadMoreTags;
}

/// @nodoc
abstract class _$$_ClearQueryCopyWith<$Res> {
  factory _$$_ClearQueryCopyWith(
          _$_ClearQuery value, $Res Function(_$_ClearQuery) then) =
      __$$_ClearQueryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearQueryCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_ClearQuery>
    implements _$$_ClearQueryCopyWith<$Res> {
  __$$_ClearQueryCopyWithImpl(
      _$_ClearQuery _value, $Res Function(_$_ClearQuery) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearQuery implements _ClearQuery {
  const _$_ClearQuery();

  @override
  String toString() {
    return 'AppSearchEvent.clearQuery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearQuery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return clearQuery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return clearQuery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (clearQuery != null) {
      return clearQuery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return clearQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return clearQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (clearQuery != null) {
      return clearQuery(this);
    }
    return orElse();
  }
}

abstract class _ClearQuery implements AppSearchEvent {
  const factory _ClearQuery() = _$_ClearQuery;
}

/// @nodoc
abstract class _$$_ClearAllCopyWith<$Res> {
  factory _$$_ClearAllCopyWith(
          _$_ClearAll value, $Res Function(_$_ClearAll) then) =
      __$$_ClearAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearAllCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_ClearAll>
    implements _$$_ClearAllCopyWith<$Res> {
  __$$_ClearAllCopyWithImpl(
      _$_ClearAll _value, $Res Function(_$_ClearAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearAll implements _ClearAll {
  const _$_ClearAll();

  @override
  String toString() {
    return 'AppSearchEvent.clearAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return clearAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return clearAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (clearAll != null) {
      return clearAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return clearAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return clearAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (clearAll != null) {
      return clearAll(this);
    }
    return orElse();
  }
}

abstract class _ClearAll implements AppSearchEvent {
  const factory _ClearAll() = _$_ClearAll;
}

/// @nodoc
abstract class _$$_ClearRecentSearchesCopyWith<$Res> {
  factory _$$_ClearRecentSearchesCopyWith(_$_ClearRecentSearches value,
          $Res Function(_$_ClearRecentSearches) then) =
      __$$_ClearRecentSearchesCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ClearRecentSearchesCopyWithImpl<$Res>
    extends _$AppSearchEventCopyWithImpl<$Res, _$_ClearRecentSearches>
    implements _$$_ClearRecentSearchesCopyWith<$Res> {
  __$$_ClearRecentSearchesCopyWithImpl(_$_ClearRecentSearches _value,
      $Res Function(_$_ClearRecentSearches) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ClearRecentSearches(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClearRecentSearches implements _ClearRecentSearches {
  const _$_ClearRecentSearches(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AppSearchEvent.clearRecentSearches(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearRecentSearches &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClearRecentSearchesCopyWith<_$_ClearRecentSearches> get copyWith =>
      __$$_ClearRecentSearchesCopyWithImpl<_$_ClearRecentSearches>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() searchAll,
    required TResult Function(SearchState searchState) changeSearchState,
    required TResult Function(UserFilter userFilter) changeUserFilter,
    required TResult Function(CPostFilter cPostFilter) changeCPostFilter,
    required TResult Function(String query) changeQuery,
    required TResult Function() searchUsers,
    required TResult Function() searchPosts,
    required TResult Function() searchTags,
    required TResult Function() loadMoreUsers,
    required TResult Function() loadMorePosts,
    required TResult Function() loadMoreTags,
    required TResult Function() clearQuery,
    required TResult Function() clearAll,
    required TResult Function(String value) clearRecentSearches,
  }) {
    return clearRecentSearches(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? searchAll,
    TResult? Function(SearchState searchState)? changeSearchState,
    TResult? Function(UserFilter userFilter)? changeUserFilter,
    TResult? Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult? Function(String query)? changeQuery,
    TResult? Function()? searchUsers,
    TResult? Function()? searchPosts,
    TResult? Function()? searchTags,
    TResult? Function()? loadMoreUsers,
    TResult? Function()? loadMorePosts,
    TResult? Function()? loadMoreTags,
    TResult? Function()? clearQuery,
    TResult? Function()? clearAll,
    TResult? Function(String value)? clearRecentSearches,
  }) {
    return clearRecentSearches?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? searchAll,
    TResult Function(SearchState searchState)? changeSearchState,
    TResult Function(UserFilter userFilter)? changeUserFilter,
    TResult Function(CPostFilter cPostFilter)? changeCPostFilter,
    TResult Function(String query)? changeQuery,
    TResult Function()? searchUsers,
    TResult Function()? searchPosts,
    TResult Function()? searchTags,
    TResult Function()? loadMoreUsers,
    TResult Function()? loadMorePosts,
    TResult Function()? loadMoreTags,
    TResult Function()? clearQuery,
    TResult Function()? clearAll,
    TResult Function(String value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (clearRecentSearches != null) {
      return clearRecentSearches(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchAll value) searchAll,
    required TResult Function(_ChangeSearchState value) changeSearchState,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_ChangeCPostFilter value) changeCPostFilter,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_SearchPosts value) searchPosts,
    required TResult Function(_SearchTags value) searchTags,
    required TResult Function(_LoadMoreUsers value) loadMoreUsers,
    required TResult Function(_LoadMorePosts value) loadMorePosts,
    required TResult Function(_LoadMoreTags value) loadMoreTags,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_ClearRecentSearches value) clearRecentSearches,
  }) {
    return clearRecentSearches(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchAll value)? searchAll,
    TResult? Function(_ChangeSearchState value)? changeSearchState,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_SearchPosts value)? searchPosts,
    TResult? Function(_SearchTags value)? searchTags,
    TResult? Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult? Function(_LoadMorePosts value)? loadMorePosts,
    TResult? Function(_LoadMoreTags value)? loadMoreTags,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_ClearRecentSearches value)? clearRecentSearches,
  }) {
    return clearRecentSearches?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchAll value)? searchAll,
    TResult Function(_ChangeSearchState value)? changeSearchState,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_ChangeCPostFilter value)? changeCPostFilter,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_SearchPosts value)? searchPosts,
    TResult Function(_SearchTags value)? searchTags,
    TResult Function(_LoadMoreUsers value)? loadMoreUsers,
    TResult Function(_LoadMorePosts value)? loadMorePosts,
    TResult Function(_LoadMoreTags value)? loadMoreTags,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (clearRecentSearches != null) {
      return clearRecentSearches(this);
    }
    return orElse();
  }
}

abstract class _ClearRecentSearches implements AppSearchEvent {
  const factory _ClearRecentSearches(final String value) =
      _$_ClearRecentSearches;

  String get value;
  @JsonKey(ignore: true)
  _$$_ClearRecentSearchesCopyWith<_$_ClearRecentSearches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppSearchState {
  Search get search => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get isSearchingPosts => throw _privateConstructorUsedError;
  bool get isSearchingUsers => throw _privateConstructorUsedError;
  bool get isSearchingTags => throw _privateConstructorUsedError;
  bool get userReachedMax => throw _privateConstructorUsedError;
  bool get postReachedMax => throw _privateConstructorUsedError;
  bool get tagReachedMax => throw _privateConstructorUsedError;
  UserFilter get userFilter => throw _privateConstructorUsedError;
  CPostFilter get cPostFilter => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<String> get recentSearches => throw _privateConstructorUsedError;
  SearchState get searchState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSearchStateCopyWith<AppSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSearchStateCopyWith<$Res> {
  factory $AppSearchStateCopyWith(
          AppSearchState value, $Res Function(AppSearchState) then) =
      _$AppSearchStateCopyWithImpl<$Res, AppSearchState>;
  @useResult
  $Res call(
      {Search search,
      bool isSearching,
      bool isSearchingPosts,
      bool isSearchingUsers,
      bool isSearchingTags,
      bool userReachedMax,
      bool postReachedMax,
      bool tagReachedMax,
      UserFilter userFilter,
      CPostFilter cPostFilter,
      String query,
      List<String> recentSearches,
      SearchState searchState});

  $SearchCopyWith<$Res> get search;
  $UserFilterCopyWith<$Res> get userFilter;
  $CPostFilterCopyWith<$Res> get cPostFilter;
}

/// @nodoc
class _$AppSearchStateCopyWithImpl<$Res, $Val extends AppSearchState>
    implements $AppSearchStateCopyWith<$Res> {
  _$AppSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? isSearching = null,
    Object? isSearchingPosts = null,
    Object? isSearchingUsers = null,
    Object? isSearchingTags = null,
    Object? userReachedMax = null,
    Object? postReachedMax = null,
    Object? tagReachedMax = null,
    Object? userFilter = null,
    Object? cPostFilter = null,
    Object? query = null,
    Object? recentSearches = null,
    Object? searchState = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as Search,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingPosts: null == isSearchingPosts
          ? _value.isSearchingPosts
          : isSearchingPosts // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingUsers: null == isSearchingUsers
          ? _value.isSearchingUsers
          : isSearchingUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingTags: null == isSearchingTags
          ? _value.isSearchingTags
          : isSearchingTags // ignore: cast_nullable_to_non_nullable
              as bool,
      userReachedMax: null == userReachedMax
          ? _value.userReachedMax
          : userReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      postReachedMax: null == postReachedMax
          ? _value.postReachedMax
          : postReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      tagReachedMax: null == tagReachedMax
          ? _value.tagReachedMax
          : tagReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      userFilter: null == userFilter
          ? _value.userFilter
          : userFilter // ignore: cast_nullable_to_non_nullable
              as UserFilter,
      cPostFilter: null == cPostFilter
          ? _value.cPostFilter
          : cPostFilter // ignore: cast_nullable_to_non_nullable
              as CPostFilter,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      recentSearches: null == recentSearches
          ? _value.recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchState: null == searchState
          ? _value.searchState
          : searchState // ignore: cast_nullable_to_non_nullable
              as SearchState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchCopyWith<$Res> get search {
    return $SearchCopyWith<$Res>(_value.search, (value) {
      return _then(_value.copyWith(search: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFilterCopyWith<$Res> get userFilter {
    return $UserFilterCopyWith<$Res>(_value.userFilter, (value) {
      return _then(_value.copyWith(userFilter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CPostFilterCopyWith<$Res> get cPostFilter {
    return $CPostFilterCopyWith<$Res>(_value.cPostFilter, (value) {
      return _then(_value.copyWith(cPostFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppSearchStateCopyWith<$Res>
    implements $AppSearchStateCopyWith<$Res> {
  factory _$$_AppSearchStateCopyWith(
          _$_AppSearchState value, $Res Function(_$_AppSearchState) then) =
      __$$_AppSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Search search,
      bool isSearching,
      bool isSearchingPosts,
      bool isSearchingUsers,
      bool isSearchingTags,
      bool userReachedMax,
      bool postReachedMax,
      bool tagReachedMax,
      UserFilter userFilter,
      CPostFilter cPostFilter,
      String query,
      List<String> recentSearches,
      SearchState searchState});

  @override
  $SearchCopyWith<$Res> get search;
  @override
  $UserFilterCopyWith<$Res> get userFilter;
  @override
  $CPostFilterCopyWith<$Res> get cPostFilter;
}

/// @nodoc
class __$$_AppSearchStateCopyWithImpl<$Res>
    extends _$AppSearchStateCopyWithImpl<$Res, _$_AppSearchState>
    implements _$$_AppSearchStateCopyWith<$Res> {
  __$$_AppSearchStateCopyWithImpl(
      _$_AppSearchState _value, $Res Function(_$_AppSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? isSearching = null,
    Object? isSearchingPosts = null,
    Object? isSearchingUsers = null,
    Object? isSearchingTags = null,
    Object? userReachedMax = null,
    Object? postReachedMax = null,
    Object? tagReachedMax = null,
    Object? userFilter = null,
    Object? cPostFilter = null,
    Object? query = null,
    Object? recentSearches = null,
    Object? searchState = null,
  }) {
    return _then(_$_AppSearchState(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as Search,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingPosts: null == isSearchingPosts
          ? _value.isSearchingPosts
          : isSearchingPosts // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingUsers: null == isSearchingUsers
          ? _value.isSearchingUsers
          : isSearchingUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingTags: null == isSearchingTags
          ? _value.isSearchingTags
          : isSearchingTags // ignore: cast_nullable_to_non_nullable
              as bool,
      userReachedMax: null == userReachedMax
          ? _value.userReachedMax
          : userReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      postReachedMax: null == postReachedMax
          ? _value.postReachedMax
          : postReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      tagReachedMax: null == tagReachedMax
          ? _value.tagReachedMax
          : tagReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      userFilter: null == userFilter
          ? _value.userFilter
          : userFilter // ignore: cast_nullable_to_non_nullable
              as UserFilter,
      cPostFilter: null == cPostFilter
          ? _value.cPostFilter
          : cPostFilter // ignore: cast_nullable_to_non_nullable
              as CPostFilter,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      recentSearches: null == recentSearches
          ? _value._recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchState: null == searchState
          ? _value.searchState
          : searchState // ignore: cast_nullable_to_non_nullable
              as SearchState,
    ));
  }
}

/// @nodoc

class _$_AppSearchState implements _AppSearchState {
  const _$_AppSearchState(
      {required this.search,
      required this.isSearching,
      required this.isSearchingPosts,
      required this.isSearchingUsers,
      required this.isSearchingTags,
      required this.userReachedMax,
      required this.postReachedMax,
      required this.tagReachedMax,
      required this.userFilter,
      required this.cPostFilter,
      required this.query,
      required final List<String> recentSearches,
      required this.searchState})
      : _recentSearches = recentSearches;

  @override
  final Search search;
  @override
  final bool isSearching;
  @override
  final bool isSearchingPosts;
  @override
  final bool isSearchingUsers;
  @override
  final bool isSearchingTags;
  @override
  final bool userReachedMax;
  @override
  final bool postReachedMax;
  @override
  final bool tagReachedMax;
  @override
  final UserFilter userFilter;
  @override
  final CPostFilter cPostFilter;
  @override
  final String query;
  final List<String> _recentSearches;
  @override
  List<String> get recentSearches {
    if (_recentSearches is EqualUnmodifiableListView) return _recentSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentSearches);
  }

  @override
  final SearchState searchState;

  @override
  String toString() {
    return 'AppSearchState(search: $search, isSearching: $isSearching, isSearchingPosts: $isSearchingPosts, isSearchingUsers: $isSearchingUsers, isSearchingTags: $isSearchingTags, userReachedMax: $userReachedMax, postReachedMax: $postReachedMax, tagReachedMax: $tagReachedMax, userFilter: $userFilter, cPostFilter: $cPostFilter, query: $query, recentSearches: $recentSearches, searchState: $searchState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSearchState &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.isSearchingPosts, isSearchingPosts) ||
                other.isSearchingPosts == isSearchingPosts) &&
            (identical(other.isSearchingUsers, isSearchingUsers) ||
                other.isSearchingUsers == isSearchingUsers) &&
            (identical(other.isSearchingTags, isSearchingTags) ||
                other.isSearchingTags == isSearchingTags) &&
            (identical(other.userReachedMax, userReachedMax) ||
                other.userReachedMax == userReachedMax) &&
            (identical(other.postReachedMax, postReachedMax) ||
                other.postReachedMax == postReachedMax) &&
            (identical(other.tagReachedMax, tagReachedMax) ||
                other.tagReachedMax == tagReachedMax) &&
            (identical(other.userFilter, userFilter) ||
                other.userFilter == userFilter) &&
            (identical(other.cPostFilter, cPostFilter) ||
                other.cPostFilter == cPostFilter) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._recentSearches, _recentSearches) &&
            (identical(other.searchState, searchState) ||
                other.searchState == searchState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      search,
      isSearching,
      isSearchingPosts,
      isSearchingUsers,
      isSearchingTags,
      userReachedMax,
      postReachedMax,
      tagReachedMax,
      userFilter,
      cPostFilter,
      query,
      const DeepCollectionEquality().hash(_recentSearches),
      searchState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSearchStateCopyWith<_$_AppSearchState> get copyWith =>
      __$$_AppSearchStateCopyWithImpl<_$_AppSearchState>(this, _$identity);
}

abstract class _AppSearchState implements AppSearchState {
  const factory _AppSearchState(
      {required final Search search,
      required final bool isSearching,
      required final bool isSearchingPosts,
      required final bool isSearchingUsers,
      required final bool isSearchingTags,
      required final bool userReachedMax,
      required final bool postReachedMax,
      required final bool tagReachedMax,
      required final UserFilter userFilter,
      required final CPostFilter cPostFilter,
      required final String query,
      required final List<String> recentSearches,
      required final SearchState searchState}) = _$_AppSearchState;

  @override
  Search get search;
  @override
  bool get isSearching;
  @override
  bool get isSearchingPosts;
  @override
  bool get isSearchingUsers;
  @override
  bool get isSearchingTags;
  @override
  bool get userReachedMax;
  @override
  bool get postReachedMax;
  @override
  bool get tagReachedMax;
  @override
  UserFilter get userFilter;
  @override
  CPostFilter get cPostFilter;
  @override
  String get query;
  @override
  List<String> get recentSearches;
  @override
  SearchState get searchState;
  @override
  @JsonKey(ignore: true)
  _$$_AppSearchStateCopyWith<_$_AppSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
