

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/user/user.dart';

part 'app_user.freezed.dart';

@freezed 
abstract class AppUser with _$AppUser {

  const factory AppUser({
      User? user, // if null means user did signOut
  }) = _AppUser;
}
