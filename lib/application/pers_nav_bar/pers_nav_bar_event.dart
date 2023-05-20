part of 'pers_nav_bar_bloc.dart';

@freezed
class PersNavBarEvent with _$PersNavBarEvent {
  const factory PersNavBarEvent.started() = _Started;
  const factory PersNavBarEvent.hide() = _Hide;
  const factory PersNavBarEvent.show() = _Show;
}
