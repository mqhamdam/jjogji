import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/domain/user/value_objects.dart';

abstract class IUserRepo {
  Future<Either<Error, List<User>>> getBesties(int skip, UUID uuid);
  Future<Either<Error, List<User>>> getSubscribers(int skip, UUID uuid);
  Future<Either<Error, List<User>>> getSubscriptions(int skip, UUID uuid);
  Future<Either<Error, List<User>>> getBlockedUsers(int skip, UUID uuid);
  Future<Either<Error, List<User>>> getUsers(int skip);
  Future<Either<Error, User>> getUserData(UUID uuid);
  Future<Either<Error, Unit>> updateUserData(
    UserForm user, {
    XFile? avatar,
    XFile? background,
  });
  Future<Either<Error, Unit>> subscribeToUser(UUID uuid);
  Future<Either<Error, Unit>> addToBesties(UUID uuid);
  Future<Either<Error, Unit>> blockUser(UUID uuid);
  Future<Either<Error, UserRelation>> checkUserRelationType(UUID uuid);
  Future<Either<Error, List<User>>> getTopUsers();
  Future<Either<Error, Unit>> updateProfilePicStyleAndLinkedContacts(
    Tuple2<ProfilePic, List<LinkedContact>> tuple,
  );
  Future<bool> updateUserID(UserID userID);
  Future<void> requestForVerification();
}
