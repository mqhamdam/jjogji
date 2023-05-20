
import 'package:bloc/bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translator/translator.dart';

part 'app_tts_event.dart';
part 'app_tts_state.dart';
part 'app_tts_bloc.freezed.dart';

class AppTtsBloc extends Bloc<AppTtsEvent, AppTtsState> {
  FlutterTts flutterTts = FlutterTts();
  String? currentText;
  AppTtsBloc() : super(AppTtsState.initial()) {
    on<AppTtsEvent>((event, emit) async {
      await event.map(started: (event) async {
        await _OnStarted(event, emit);
      }, speak: (event) async {
        await _OnSpeak(event, emit);
      }, pause: (event) async {
        await _OnPause(event, emit);
      }, resume: (event) async {
        await _OnResume(event, emit);
      }, stop: (event) async {
        await _OnStop(event, emit);
      }, addTextToSpeech: (event) async {
        await _OnAddTextToSpeech(event, emit);
      }, nextText: (event) async {
        await _OnNextText(event, emit);
      }, previousText: (event) async {
        await _OnPreviousText(event, emit);
      }, reset: (event) async {
        await _OnReset(event, emit);
      }, deleteText: (event) async {
        await _OnDeleteText(event, emit);
      }, playButtonPressed: (event) async {
        await _OnPlayButtonPressed(event, emit);
      }, completed: (event) async {
        await _OnCompleted(event, emit);
      },);
    });
  }

  Future<void> _OnStarted(
    _Started event,
    Emitter<AppTtsState> emit,
  ) async {

    flutterTts.awaitSpeakCompletion(true);

    flutterTts.setProgressHandler(
      (String text, int startOffset, int endOffset, String word) {
        ///////
        currentText = text[startOffset];
      },
    );
    //
    flutterTts.setCompletionHandler(
      () {
        currentText = null;
        add(const AppTtsEvent.completed());
      },
    );

    flutterTts.setPauseHandler(() {
      emit(state.copyWith(ttsPlayState: TTSPlayState.pause));
    });

    flutterTts.setCancelHandler(() {
      emit(state.copyWith(ttsPlayState: TTSPlayState.stop));
    });

    flutterTts.setContinueHandler(() {
      emit(state.copyWith(ttsPlayState: TTSPlayState.play));
    });
  }

  Future<void> _OnSpeak(
    _Speak event,
    Emitter<AppTtsState> emit,
  ) async {
    emit(state.copyWith(ttsPlayState: TTSPlayState.play));
    if (currentText?.isNotEmpty != null) {
      await flutterTts.speak(currentText!);
      currentText = null;
      emit(state.copyWith(ttsPlayState: TTSPlayState.stop));
    } else {
      await flutterTts.speak(state.textsToSpeech[state.currentTextIndex]);
    }
    emit(state.copyWith(ttsPlayState: TTSPlayState.stop));
  }

  Future<void> _OnPause(
    _Pause event,
    Emitter<AppTtsState> emit,
  ) async {
    await flutterTts.pause();

    emit(state.copyWith(ttsPlayState: TTSPlayState.pause));
  }

  Future<void> _OnResume(
    _Resume event,
    Emitter<AppTtsState> emit,
  ) async {
    emit(state.copyWith(ttsPlayState: TTSPlayState.play));
  }

  Future<void> _OnStop(
    _Stop event,
    Emitter<AppTtsState> emit,
  ) async {
    // if (state.ttsPlayState == TTSPlayState.play ||
    //     state.ttsPlayState == TTSPlayState.pause) await flutterTts.stop();

    emit(state.copyWith(ttsPlayState: TTSPlayState.none));
  }

  Future<void> _OnAddTextToSpeech(
    _AddTextToSpeech event,
    Emitter<AppTtsState> emit,
  ) async {
    emit(
      state.copyWith(
        ttsPlayState: TTSPlayState.play,
        textsToSpeech: List.of(state.textsToSpeech)..add(event.text),
        currentTextIndex: state.textsToSpeech.length,
      ),
    );

    final ss = await event.text.translate();
    final lang = ss.sourceLanguage.code;

    flutterTts.setLanguage(lang == 'auto' ? 'en-US' : lang);
    await flutterTts.speak(event.text);
    add(const AppTtsEvent.completed());
  }

  Future<void> _OnNextText(
    _NextText event,
    Emitter<AppTtsState> emit,
  ) async {
    emit(
      state.copyWith(
        currentTextIndex: state.currentTextIndex + 1,
      ),
    );
  }

  Future<void> _OnPreviousText(
    _PreviousText event,
    Emitter<AppTtsState> emit,
  ) async {
    emit(
      state.copyWith(
        currentTextIndex: state.currentTextIndex - 1,
      ),
    );
  }

  Future<void> _OnReset(
    _Reset event,
    Emitter<AppTtsState> emit,
  ) async {}

  Future<void> _OnDeleteText(
    _DeleteText event,
    Emitter<AppTtsState> emit,
  ) async {
    final newTtsList = List.of(state.textsToSpeech)..removeAt(event.index);
    emit(
      state.copyWith(textsToSpeech: newTtsList),
    );
  }

  Future<void> _OnPlayButtonPressed(
      _PlayButtonPressed event, Emitter<AppTtsState> emit,) async {
    if (state.ttsPlayState == TTSPlayState.play) {
      await flutterTts.pause();
      emit(state.copyWith(ttsPlayState: TTSPlayState.pause));
    } else {
      add(const AppTtsEvent.speak());
      emit(state.copyWith(ttsPlayState: TTSPlayState.play));
    }
  }

  Future<void> _OnCompleted(_Completed event, Emitter<AppTtsState> emit) async {
    emit(state.copyWith(ttsPlayState: TTSPlayState.stop));
  }

}
