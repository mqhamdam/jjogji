import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/infrastructure/auth/auth_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade authFacade;
  User? userCredentials;
  StreamSubscription? _authStateSubscription;

  User get getSignedUser => FirebaseAuth.instance.currentUser!;

  bool isCurrentUser(UUID uuid) {
    return UUID.fromDB(getSignedUser.uid) == uuid;
  }

  AuthBloc(this.authFacade) : super(const _AuthLoading()) {
    on<AuthEvent>((event, emit) {
      event.when(
        userSigned: () async {
          userCredentials = await getSignedInUser();
          emit(const _Authenticated());
        },
        userSignedOut: () {
          userCredentials = null;
          emit(const _UnAuthenticated());
        },
        getSignedUserCredentials: () async {
          authFacade.getSignedInUser();
          state.maybeMap(
            authenticated: (state) {},
            orElse: () {},
          );
        },
        signOutButtonPressed: () async {
          await FirebaseMessaging.instance.deleteToken();
          await SharedPreferences.getInstance().then((value) {
            value.clear();
            value.setBool('isFirstOpen', false);
          });
          authFacade.signOut();
        },
        listenToAuthChanges: () {
          _authStateSubscription?.cancel();
          _authStateSubscription =
              authFacade.authenticationStatus().listen((isLogedIn) {
            if (isLogedIn) {
              add(const _UserSignedEvent());
            } else {
              add(const _UserSignedOutEvent());
            }
          });
        },
      );
    });
  }
  Future<User> getSignedInUser() async {
    return authFacade.getSignedInUser();
  }

  @override
  Future<void> close() {
    _authStateSubscription?.cancel();
    return super.close();
  }
}
