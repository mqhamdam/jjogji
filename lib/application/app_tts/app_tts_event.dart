part of 'app_tts_bloc.dart';

@freezed
class AppTtsEvent with _$AppTtsEvent {
  const factory AppTtsEvent.started() = _Started;
  const factory AppTtsEvent.playButtonPressed() = _PlayButtonPressed;
  const factory AppTtsEvent.completed() = _Completed;
  const factory AppTtsEvent.speak() = _Speak;
  const factory AppTtsEvent.pause() = _Pause;
  const factory AppTtsEvent.resume() = _Resume;
  const factory AppTtsEvent.stop() = _Stop;
  const factory AppTtsEvent.addTextToSpeech(String text) = _AddTextToSpeech;
  const factory AppTtsEvent.nextText() = _NextText;
  const factory AppTtsEvent.previousText() = _PreviousText;
  const factory AppTtsEvent.reset() = _Reset;
  const factory AppTtsEvent.deleteText(int index) = _DeleteText;
}
