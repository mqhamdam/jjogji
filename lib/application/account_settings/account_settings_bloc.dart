// ignore_for_file: non_constant_identifier_names

import "package:bloc/bloc.dart";
import "package:dartz/dartz.dart";
import "package:firebase_auth/firebase_auth.dart" as auth;
import "package:freezed_annotation/freezed_annotation.dart";
import "package:jjogji/domain/auth/value_objects.dart";
import "package:jjogji/domain/user/user.dart";
import "package:jjogji/infrastructure/auth/auth_facade.dart";
import "package:jjogji/infrastructure/user/user_repo.dart";
import "package:overlay_support/overlay_support.dart";

part "account_settings_bloc.freezed.dart";
part "account_settings_event.dart";
part "account_settings_state.dart";

class AccountSettingsBloc
    extends Bloc<AccountSettingsEvent, AccountSettingsState> {
  auth.User get getSignedUser => auth.FirebaseAuth.instance.currentUser!;

  bool get isChanged => state.userTempData != state.userData;
  bool get isEmailVerified => getSignedUser.emailVerified;
  String get email => auth.FirebaseAuth.instance.currentUser!.email!;

  final UserRepo _userRepo = UserRepo.instance;

  AccountSettingsBloc() : super(AccountSettingsState.initial()) {
    on<AccountSettingsEvent>(
      (event, emit) async {
        await event.map(
          started: (e) async {
            await _OnStarted(e, emit);
          },
          changeProfilePicStyle: (e) async {
            await _OnChangeProfilePicStyle(e, emit);
          },
          addLinkedContact: (e) async {
            await _OnAddLinkedContact(e, emit);
          },
          removeLinkedContact: (e) async {
            await _OnRemoveLinkedContact(e, emit);
          },
          changeLinkedContactOrder: (e) async {
            await _OnChangeLinkedContactOrder(e, emit);
          },
          replaceLinkedContact: (e) async {
            await _OnReplaceLinkedContact(e, emit);
          },
          saveChanges: (e) async {
            await _OnSaveChanges(e, emit);
          },
          deletePosts: (e) async {},
          pauseAccount: (e) async {},
          deleteAccount: (e) async {
            await _OnDeleteAccount(e, emit);
          },
          requestAccountVerification: (_RequestAccountVerification event) {
            _OnRequestAccountVerification(event, emit);
          },
        );
      },
    );
  }

  Future<void> _OnStarted(
    _Started event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final user = await AuthFacade.getUserData;
    await user.fold(
      (l) async => emit(
        state.copyWith(
          userData: User.empty(),
          userTempData: User.empty(),
        ),
      ),
      (r) async => emit(
        state.copyWith(userData: r, userTempData: r),
      ),
    );
  }

  Future<void> _OnChangeProfilePicStyle(
    _ChangeProfilePicStyle event,
    Emitter<AccountSettingsState> emit,
  ) async {
    emit(
      state.copyWith(
        userTempData: state.userTempData.copyWith(
          profilePic: event.profilePic,
        ),
      ),
    );
  }

  Future<void> _OnAddLinkedContact(
    _AddLinkedContact event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final newLinkedContact = event.linkedContact;
    final newLinkedContacts = List.of(state.userTempData.linkedContacts)
      ..add(newLinkedContact);
    emit(
      state.copyWith(
        userTempData: state.userTempData.copyWith(
          linkedContacts: newLinkedContacts,
        ),
      ),
    );
  }

  Future<void> _OnRemoveLinkedContact(
    _RemoveLinkedContact event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final newLinkedContacts = List.of(state.userTempData.linkedContacts)
      ..removeAt(event.index);
    emit(
      state.copyWith(
        userTempData: state.userTempData.copyWith(
          linkedContacts: newLinkedContacts,
        ),
      ),
    );
  }

  Future<void> _OnChangeLinkedContactOrder(
    _ChangeLinkedContactOrder event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final newLinkedContacts = List.of(state.userTempData.linkedContacts);
    final int oldIndex = event.oldIndex;
    int newIndex = event.newIndex;

    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final LinkedContact linkedContact = newLinkedContacts[oldIndex];

    newLinkedContacts.removeAt(oldIndex);
    newLinkedContacts.insert(newIndex, linkedContact);

    emit(
      state.copyWith(
        userTempData: state.userTempData.copyWith(
          linkedContacts: newLinkedContacts,
        ),
      ),
    );
  }

  Future<void> _OnReplaceLinkedContact(
    _ReplaceLinkedContact event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final index = event.index;
    final linkedContact = event.linkedContact;
    final newLinkedContacts = List.of(state.userTempData.linkedContacts)
      ..removeAt(index)
      ..insert(index, linkedContact);
    emit(
      state.copyWith(
        userTempData: state.userTempData.copyWith(
          linkedContacts: newLinkedContacts,
        ),
      ),
    );
  }

  Future<void> _OnSaveChanges(
    _SaveChanges event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final userPicStyle = state.userTempData.profilePic;
    final userLinkedContacts = state.userTempData.linkedContacts;
    final Tuple2<ProfilePic, List<LinkedContact>>
        userPicStyleAndLinkedContacts =
        Tuple2(userPicStyle, userLinkedContacts);

    await _userRepo.updateProfilePicStyleAndLinkedContacts(
      userPicStyleAndLinkedContacts,
    );
    emit(
      state.copyWith(
        userData: state.userTempData,
      ),
    );
  }

  void _OnRequestAccountVerification(
    _RequestAccountVerification event,
    Emitter<AccountSettingsState> emit,
  ) {
    _userRepo.requestForVerification();
    toast('Verification request sent!');
  }

  // void _OnDeletePosts(
  //   _DeletePosts event,
  //   Emitter<AccountSettingsState> emit,
  // ) {}

  // void _OnPauseAccount(
  //   _PauseAccount event,
  //   Emitter<AccountSettingsState> emit,
  // ) {}

  Future<void> _OnDeleteAccount(
    _DeleteAccount event,
    Emitter<AccountSettingsState> emit,
  ) async {
    AuthFacade.instance.deleteAccount(PasswordVO(event.password));
    emit(
      state.copyWith(
        userData: User.empty(),
        userTempData: User.empty(),
      ),
    );
  }
}
