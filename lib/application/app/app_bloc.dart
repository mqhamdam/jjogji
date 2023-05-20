import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/infrastructure/core/local_db_handler.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final LocalDB localDB = LocalDB.instance;

  String get currentTranslateLang => state.currentTranslateLang;
  List<String> get availableTranslateCountryCode => localDB.getCountryCodes();

  AppBloc() : super(AppState.empty()) {
    on<AppEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          await _OnStarted(e, emit);
        },
        changeTranslateLang: (event) async {
          await _OnChangeTranslateLang(event, emit);
        },
      );
    });
  }

  Future<void> _OnStarted(_Started event, Emitter<AppState> emit) async {
    final currentLang = await localDB.currentTranslatedLanguage();
    emit(state.copyWith(currentTranslateLang: currentLang));
  }

  Future<void> _OnChangeTranslateLang(
      _ChangeTranslateLang event, Emitter<AppState> emit,) async {
    localDB.setCurrentTranslatedLanguage(event.langCode);
    emit(state.copyWith(currentTranslateLang: event.langCode));
  }
}
