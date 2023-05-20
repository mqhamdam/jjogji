part of 'app_tts_bloc.dart';

enum TTSRepeat { all, one, none }

enum TTSPlayState { play, pause, stop, none }

@freezed
class AppTtsState with _$AppTtsState {
  const factory AppTtsState({
    required List<String> textsToSpeech,
    required TTSPlayState ttsPlayState,
    required int currentTextIndex,
    required bool speechAll,
    required TTSRepeat repeatMode,
    required bool speechCompleted,
  }) = _AppTtsState;
  factory AppTtsState.initial() => const AppTtsState(
        textsToSpeech: [],
        ttsPlayState: TTSPlayState.none,
        currentTextIndex: 0,
        repeatMode: TTSRepeat.none,
        speechAll: false,
        speechCompleted: false,
      );
}
