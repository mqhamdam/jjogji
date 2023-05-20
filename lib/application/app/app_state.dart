part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required User? user,
    required int notificationsCount,
    required String currentTranslateLang,
  }) = _AppState;

  factory AppState.empty() => const AppState(
        user: null,
        notificationsCount: 0,
        currentTranslateLang: "en",
      );
}
