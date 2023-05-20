import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pers_nav_bar_event.dart';
part 'pers_nav_bar_state.dart';
part 'pers_nav_bar_bloc.freezed.dart';

class PersNavBarBloc extends Bloc<PersNavBarEvent, PersNavBarState> {
  PersNavBarBloc() : super(const _State(hideBar: false)) {
    on<PersNavBarEvent>((event, emit) {
      event.map(
        started: (e) {},
        hide: (e) {
          emit(state.copyWith(hideBar: true));
        },
        show: (e) {
          emit(state.copyWith(hideBar: false));
        },
      );
    });
  }
}
