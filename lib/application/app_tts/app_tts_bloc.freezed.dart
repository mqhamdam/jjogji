// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_tts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppTtsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTtsEventCopyWith<$Res> {
  factory $AppTtsEventCopyWith(
          AppTtsEvent value, $Res Function(AppTtsEvent) then) =
      _$AppTtsEventCopyWithImpl<$Res, AppTtsEvent>;
}

/// @nodoc
class _$AppTtsEventCopyWithImpl<$Res, $Val extends AppTtsEvent>
    implements $AppTtsEventCopyWith<$Res> {
  _$AppTtsEventCopyWithImpl(this._value, this._then);

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
    extends _$AppTtsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppTtsEvent.started()';
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
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
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
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppTtsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_PlayButtonPressedCopyWith<$Res> {
  factory _$$_PlayButtonPressedCopyWith(_$_PlayButtonPressed value,
          $Res Function(_$_PlayButtonPressed) then) =
      __$$_PlayButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayButtonPressedCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_PlayButtonPressed>
    implements _$$_PlayButtonPressedCopyWith<$Res> {
  __$$_PlayButtonPressedCopyWithImpl(
      _$_PlayButtonPressed _value, $Res Function(_$_PlayButtonPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayButtonPressed implements _PlayButtonPressed {
  const _$_PlayButtonPressed();

  @override
  String toString() {
    return 'AppTtsEvent.playButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return playButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return playButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (playButtonPressed != null) {
      return playButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return playButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return playButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (playButtonPressed != null) {
      return playButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _PlayButtonPressed implements AppTtsEvent {
  const factory _PlayButtonPressed() = _$_PlayButtonPressed;
}

/// @nodoc
abstract class _$$_CompletedCopyWith<$Res> {
  factory _$$_CompletedCopyWith(
          _$_Completed value, $Res Function(_$_Completed) then) =
      __$$_CompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CompletedCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_Completed>
    implements _$$_CompletedCopyWith<$Res> {
  __$$_CompletedCopyWithImpl(
      _$_Completed _value, $Res Function(_$_Completed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed();

  @override
  String toString() {
    return 'AppTtsEvent.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements AppTtsEvent {
  const factory _Completed() = _$_Completed;
}

/// @nodoc
abstract class _$$_SpeakCopyWith<$Res> {
  factory _$$_SpeakCopyWith(_$_Speak value, $Res Function(_$_Speak) then) =
      __$$_SpeakCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SpeakCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_Speak>
    implements _$$_SpeakCopyWith<$Res> {
  __$$_SpeakCopyWithImpl(_$_Speak _value, $Res Function(_$_Speak) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Speak implements _Speak {
  const _$_Speak();

  @override
  String toString() {
    return 'AppTtsEvent.speak()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Speak);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return speak();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return speak?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (speak != null) {
      return speak();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return speak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return speak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (speak != null) {
      return speak(this);
    }
    return orElse();
  }
}

abstract class _Speak implements AppTtsEvent {
  const factory _Speak() = _$_Speak;
}

/// @nodoc
abstract class _$$_PauseCopyWith<$Res> {
  factory _$$_PauseCopyWith(_$_Pause value, $Res Function(_$_Pause) then) =
      __$$_PauseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PauseCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_Pause>
    implements _$$_PauseCopyWith<$Res> {
  __$$_PauseCopyWithImpl(_$_Pause _value, $Res Function(_$_Pause) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Pause implements _Pause {
  const _$_Pause();

  @override
  String toString() {
    return 'AppTtsEvent.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Pause);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause implements AppTtsEvent {
  const factory _Pause() = _$_Pause;
}

/// @nodoc
abstract class _$$_ResumeCopyWith<$Res> {
  factory _$$_ResumeCopyWith(_$_Resume value, $Res Function(_$_Resume) then) =
      __$$_ResumeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResumeCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_Resume>
    implements _$$_ResumeCopyWith<$Res> {
  __$$_ResumeCopyWithImpl(_$_Resume _value, $Res Function(_$_Resume) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Resume implements _Resume {
  const _$_Resume();

  @override
  String toString() {
    return 'AppTtsEvent.resume()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Resume);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return resume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return resume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class _Resume implements AppTtsEvent {
  const factory _Resume() = _$_Resume;
}

/// @nodoc
abstract class _$$_StopCopyWith<$Res> {
  factory _$$_StopCopyWith(_$_Stop value, $Res Function(_$_Stop) then) =
      __$$_StopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_Stop>
    implements _$$_StopCopyWith<$Res> {
  __$$_StopCopyWithImpl(_$_Stop _value, $Res Function(_$_Stop) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Stop implements _Stop {
  const _$_Stop();

  @override
  String toString() {
    return 'AppTtsEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Stop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop implements AppTtsEvent {
  const factory _Stop() = _$_Stop;
}

/// @nodoc
abstract class _$$_AddTextToSpeechCopyWith<$Res> {
  factory _$$_AddTextToSpeechCopyWith(
          _$_AddTextToSpeech value, $Res Function(_$_AddTextToSpeech) then) =
      __$$_AddTextToSpeechCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_AddTextToSpeechCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_AddTextToSpeech>
    implements _$$_AddTextToSpeechCopyWith<$Res> {
  __$$_AddTextToSpeechCopyWithImpl(
      _$_AddTextToSpeech _value, $Res Function(_$_AddTextToSpeech) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_AddTextToSpeech(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddTextToSpeech implements _AddTextToSpeech {
  const _$_AddTextToSpeech(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'AppTtsEvent.addTextToSpeech(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTextToSpeech &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTextToSpeechCopyWith<_$_AddTextToSpeech> get copyWith =>
      __$$_AddTextToSpeechCopyWithImpl<_$_AddTextToSpeech>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return addTextToSpeech(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return addTextToSpeech?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (addTextToSpeech != null) {
      return addTextToSpeech(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return addTextToSpeech(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return addTextToSpeech?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (addTextToSpeech != null) {
      return addTextToSpeech(this);
    }
    return orElse();
  }
}

abstract class _AddTextToSpeech implements AppTtsEvent {
  const factory _AddTextToSpeech(final String text) = _$_AddTextToSpeech;

  String get text;
  @JsonKey(ignore: true)
  _$$_AddTextToSpeechCopyWith<_$_AddTextToSpeech> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextTextCopyWith<$Res> {
  factory _$$_NextTextCopyWith(
          _$_NextText value, $Res Function(_$_NextText) then) =
      __$$_NextTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextTextCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_NextText>
    implements _$$_NextTextCopyWith<$Res> {
  __$$_NextTextCopyWithImpl(
      _$_NextText _value, $Res Function(_$_NextText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextText implements _NextText {
  const _$_NextText();

  @override
  String toString() {
    return 'AppTtsEvent.nextText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NextText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return nextText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return nextText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (nextText != null) {
      return nextText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return nextText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return nextText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (nextText != null) {
      return nextText(this);
    }
    return orElse();
  }
}

abstract class _NextText implements AppTtsEvent {
  const factory _NextText() = _$_NextText;
}

/// @nodoc
abstract class _$$_PreviousTextCopyWith<$Res> {
  factory _$$_PreviousTextCopyWith(
          _$_PreviousText value, $Res Function(_$_PreviousText) then) =
      __$$_PreviousTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PreviousTextCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_PreviousText>
    implements _$$_PreviousTextCopyWith<$Res> {
  __$$_PreviousTextCopyWithImpl(
      _$_PreviousText _value, $Res Function(_$_PreviousText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PreviousText implements _PreviousText {
  const _$_PreviousText();

  @override
  String toString() {
    return 'AppTtsEvent.previousText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PreviousText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return previousText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return previousText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (previousText != null) {
      return previousText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return previousText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return previousText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (previousText != null) {
      return previousText(this);
    }
    return orElse();
  }
}

abstract class _PreviousText implements AppTtsEvent {
  const factory _PreviousText() = _$_PreviousText;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'AppTtsEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements AppTtsEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_DeleteTextCopyWith<$Res> {
  factory _$$_DeleteTextCopyWith(
          _$_DeleteText value, $Res Function(_$_DeleteText) then) =
      __$$_DeleteTextCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_DeleteTextCopyWithImpl<$Res>
    extends _$AppTtsEventCopyWithImpl<$Res, _$_DeleteText>
    implements _$$_DeleteTextCopyWith<$Res> {
  __$$_DeleteTextCopyWithImpl(
      _$_DeleteText _value, $Res Function(_$_DeleteText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_DeleteText(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteText implements _DeleteText {
  const _$_DeleteText(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'AppTtsEvent.deleteText(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteText &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTextCopyWith<_$_DeleteText> get copyWith =>
      __$$_DeleteTextCopyWithImpl<_$_DeleteText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playButtonPressed,
    required TResult Function() completed,
    required TResult Function() speak,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function(String text) addTextToSpeech,
    required TResult Function() nextText,
    required TResult Function() previousText,
    required TResult Function() reset,
    required TResult Function(int index) deleteText,
  }) {
    return deleteText(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playButtonPressed,
    TResult? Function()? completed,
    TResult? Function()? speak,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function(String text)? addTextToSpeech,
    TResult? Function()? nextText,
    TResult? Function()? previousText,
    TResult? Function()? reset,
    TResult? Function(int index)? deleteText,
  }) {
    return deleteText?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playButtonPressed,
    TResult Function()? completed,
    TResult Function()? speak,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function(String text)? addTextToSpeech,
    TResult Function()? nextText,
    TResult Function()? previousText,
    TResult Function()? reset,
    TResult Function(int index)? deleteText,
    required TResult orElse(),
  }) {
    if (deleteText != null) {
      return deleteText(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Stop value) stop,
    required TResult Function(_AddTextToSpeech value) addTextToSpeech,
    required TResult Function(_NextText value) nextText,
    required TResult Function(_PreviousText value) previousText,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteText value) deleteText,
  }) {
    return deleteText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult? Function(_NextText value)? nextText,
    TResult? Function(_PreviousText value)? previousText,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteText value)? deleteText,
  }) {
    return deleteText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_Completed value)? completed,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Resume value)? resume,
    TResult Function(_Stop value)? stop,
    TResult Function(_AddTextToSpeech value)? addTextToSpeech,
    TResult Function(_NextText value)? nextText,
    TResult Function(_PreviousText value)? previousText,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteText value)? deleteText,
    required TResult orElse(),
  }) {
    if (deleteText != null) {
      return deleteText(this);
    }
    return orElse();
  }
}

abstract class _DeleteText implements AppTtsEvent {
  const factory _DeleteText(final int index) = _$_DeleteText;

  int get index;
  @JsonKey(ignore: true)
  _$$_DeleteTextCopyWith<_$_DeleteText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppTtsState {
  List<String> get textsToSpeech => throw _privateConstructorUsedError;
  TTSPlayState get ttsPlayState => throw _privateConstructorUsedError;
  int get currentTextIndex => throw _privateConstructorUsedError;
  bool get speechAll => throw _privateConstructorUsedError;
  TTSRepeat get repeatMode => throw _privateConstructorUsedError;
  bool get speechCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppTtsStateCopyWith<AppTtsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTtsStateCopyWith<$Res> {
  factory $AppTtsStateCopyWith(
          AppTtsState value, $Res Function(AppTtsState) then) =
      _$AppTtsStateCopyWithImpl<$Res, AppTtsState>;
  @useResult
  $Res call(
      {List<String> textsToSpeech,
      TTSPlayState ttsPlayState,
      int currentTextIndex,
      bool speechAll,
      TTSRepeat repeatMode,
      bool speechCompleted});
}

/// @nodoc
class _$AppTtsStateCopyWithImpl<$Res, $Val extends AppTtsState>
    implements $AppTtsStateCopyWith<$Res> {
  _$AppTtsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textsToSpeech = null,
    Object? ttsPlayState = null,
    Object? currentTextIndex = null,
    Object? speechAll = null,
    Object? repeatMode = null,
    Object? speechCompleted = null,
  }) {
    return _then(_value.copyWith(
      textsToSpeech: null == textsToSpeech
          ? _value.textsToSpeech
          : textsToSpeech // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ttsPlayState: null == ttsPlayState
          ? _value.ttsPlayState
          : ttsPlayState // ignore: cast_nullable_to_non_nullable
              as TTSPlayState,
      currentTextIndex: null == currentTextIndex
          ? _value.currentTextIndex
          : currentTextIndex // ignore: cast_nullable_to_non_nullable
              as int,
      speechAll: null == speechAll
          ? _value.speechAll
          : speechAll // ignore: cast_nullable_to_non_nullable
              as bool,
      repeatMode: null == repeatMode
          ? _value.repeatMode
          : repeatMode // ignore: cast_nullable_to_non_nullable
              as TTSRepeat,
      speechCompleted: null == speechCompleted
          ? _value.speechCompleted
          : speechCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppTtsStateCopyWith<$Res>
    implements $AppTtsStateCopyWith<$Res> {
  factory _$$_AppTtsStateCopyWith(
          _$_AppTtsState value, $Res Function(_$_AppTtsState) then) =
      __$$_AppTtsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> textsToSpeech,
      TTSPlayState ttsPlayState,
      int currentTextIndex,
      bool speechAll,
      TTSRepeat repeatMode,
      bool speechCompleted});
}

/// @nodoc
class __$$_AppTtsStateCopyWithImpl<$Res>
    extends _$AppTtsStateCopyWithImpl<$Res, _$_AppTtsState>
    implements _$$_AppTtsStateCopyWith<$Res> {
  __$$_AppTtsStateCopyWithImpl(
      _$_AppTtsState _value, $Res Function(_$_AppTtsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textsToSpeech = null,
    Object? ttsPlayState = null,
    Object? currentTextIndex = null,
    Object? speechAll = null,
    Object? repeatMode = null,
    Object? speechCompleted = null,
  }) {
    return _then(_$_AppTtsState(
      textsToSpeech: null == textsToSpeech
          ? _value._textsToSpeech
          : textsToSpeech // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ttsPlayState: null == ttsPlayState
          ? _value.ttsPlayState
          : ttsPlayState // ignore: cast_nullable_to_non_nullable
              as TTSPlayState,
      currentTextIndex: null == currentTextIndex
          ? _value.currentTextIndex
          : currentTextIndex // ignore: cast_nullable_to_non_nullable
              as int,
      speechAll: null == speechAll
          ? _value.speechAll
          : speechAll // ignore: cast_nullable_to_non_nullable
              as bool,
      repeatMode: null == repeatMode
          ? _value.repeatMode
          : repeatMode // ignore: cast_nullable_to_non_nullable
              as TTSRepeat,
      speechCompleted: null == speechCompleted
          ? _value.speechCompleted
          : speechCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppTtsState implements _AppTtsState {
  const _$_AppTtsState(
      {required final List<String> textsToSpeech,
      required this.ttsPlayState,
      required this.currentTextIndex,
      required this.speechAll,
      required this.repeatMode,
      required this.speechCompleted})
      : _textsToSpeech = textsToSpeech;

  final List<String> _textsToSpeech;
  @override
  List<String> get textsToSpeech {
    if (_textsToSpeech is EqualUnmodifiableListView) return _textsToSpeech;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textsToSpeech);
  }

  @override
  final TTSPlayState ttsPlayState;
  @override
  final int currentTextIndex;
  @override
  final bool speechAll;
  @override
  final TTSRepeat repeatMode;
  @override
  final bool speechCompleted;

  @override
  String toString() {
    return 'AppTtsState(textsToSpeech: $textsToSpeech, ttsPlayState: $ttsPlayState, currentTextIndex: $currentTextIndex, speechAll: $speechAll, repeatMode: $repeatMode, speechCompleted: $speechCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppTtsState &&
            const DeepCollectionEquality()
                .equals(other._textsToSpeech, _textsToSpeech) &&
            (identical(other.ttsPlayState, ttsPlayState) ||
                other.ttsPlayState == ttsPlayState) &&
            (identical(other.currentTextIndex, currentTextIndex) ||
                other.currentTextIndex == currentTextIndex) &&
            (identical(other.speechAll, speechAll) ||
                other.speechAll == speechAll) &&
            (identical(other.repeatMode, repeatMode) ||
                other.repeatMode == repeatMode) &&
            (identical(other.speechCompleted, speechCompleted) ||
                other.speechCompleted == speechCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textsToSpeech),
      ttsPlayState,
      currentTextIndex,
      speechAll,
      repeatMode,
      speechCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppTtsStateCopyWith<_$_AppTtsState> get copyWith =>
      __$$_AppTtsStateCopyWithImpl<_$_AppTtsState>(this, _$identity);
}

abstract class _AppTtsState implements AppTtsState {
  const factory _AppTtsState(
      {required final List<String> textsToSpeech,
      required final TTSPlayState ttsPlayState,
      required final int currentTextIndex,
      required final bool speechAll,
      required final TTSRepeat repeatMode,
      required final bool speechCompleted}) = _$_AppTtsState;

  @override
  List<String> get textsToSpeech;
  @override
  TTSPlayState get ttsPlayState;
  @override
  int get currentTextIndex;
  @override
  bool get speechAll;
  @override
  TTSRepeat get repeatMode;
  @override
  bool get speechCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_AppTtsStateCopyWith<_$_AppTtsState> get copyWith =>
      throw _privateConstructorUsedError;
}
