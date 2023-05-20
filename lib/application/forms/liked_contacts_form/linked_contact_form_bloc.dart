import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/application/enums.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/presentation/screens/settings/widgets/linked_contact_type.dart';

part 'linked_contact_form_event.dart';
part 'linked_contact_form_state.dart';
part 'linked_contact_form_bloc.freezed.dart';

class LinkedContactFormBloc
    extends Bloc<LinkedContactFormEvent, LinkedContactFormState> {
  LinkedContactFormBloc() : super(LinkedContactFormState.initial()) {
    on<LinkedContactFormEvent>((event, emit) {
      event.map(
        started: (e) {
          _onStarted(e, emit);
        },
        changeUrl: (e) {
          _onChangeUrl(e, emit);
        },
        changeType: (e) {
          _OnChangeType(e, emit);
        },
        submit: (e) {
          _OnSubmit(e, emit);
        },
      );
    });
  }

  void _onStarted(_Started event, Emitter<LinkedContactFormState> emit) {
    if (event.linkedContact != null) {
      emit(
        state.copyWith(
          linkedContact: state.linkedContact.copyWith(
            type: event.linkedContact!.type,
            url: event.linkedContact!.url,
          ),
        ),
      );
      return;
    } else {
      emit(
        state.copyWith(
          linkedContact: state.linkedContact.copyWith(
            type: LinkedService.Telegram,
            url: ValidatedURL(getBaseUri(LinkedService.Telegram)),
          ),
        ),
      );
    }
  }

  void _onChangeUrl(
    _ChangeUrl event,
    Emitter<LinkedContactFormState> emit,
  ) {
    final urlStr = event.urlStr;
    emit(
      state.copyWith(
        linkedContact: state.linkedContact.copyWith(
          url: ValidatedURL(urlStr),
        ),
      ),
    );
  }

  void _OnChangeType(_ChangeType event, Emitter<LinkedContactFormState> emit) {
    final type = event.type;

    add(LinkedContactFormEvent.changeUrl(getBaseUri(type)));
    emit(
      state.copyWith(
        linkedContact: state.linkedContact.copyWith(
          type: type,
        ),
      ),
    );
  }

  void _OnSubmit(_Submit event, Emitter<LinkedContactFormState> emit) {}
}
