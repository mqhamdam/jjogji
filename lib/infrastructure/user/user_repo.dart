import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/user/i_user_repo.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/domain/user/value_objects.dart';
import 'package:jjogji/infrastructure/core/api_handler.dart';

/// SingleTon class...
class UserRepo implements IUserRepo {
  // private constructor
  final ApiHandler _apiHandler = ApiHandler.instance;

  UserRepo._();
  // get singleton
  static final UserRepo instance = UserRepo._();

  /// Add user to besties, [uuid] is the user who will be added to besties
  /// returns [Unit] if success and [UserFailures] if failed
  @override
  Future<Either<Error, Unit>> addToBesties(UUID uuid) async {
    final res = await _apiHandler.addToBesties(uuid);
    return res.fold((l) => throw UnimplementedError(), (r) => right(r));
  }

  /// Block user, [uuid] is the user who will be blocked
  /// returns [Unit] if success and [UserFailures] if failed
  @override
  Future<Either<Error, Unit>> blockUser(UUID uuid) async {
    final res = await _apiHandler.blockUser(uuid);
    return res.fold((l) => throw UnimplementedError(), (r) => right(r));
  }

  /// Get user data, [uuid] is the user whos data will be returned
  /// returns [User] if success and [UserFailures] if failed
  @override
  Future<Either<Error, User>> getUserData(UUID uuid) async {
    final result = await _apiHandler.getUserData(uuid);

    return result.fold(
      (l) {
        throw UnimplementedError();
      },
      (r) {
        return right(r);
      },
    );
  }

  @override
  Future<Either<Error, Unit>> subscribeToUser(UUID uuid) async {
    final res = await _apiHandler.subscribeToUser(uuid);
    return res.fold((l) => throw UnimplementedError(), (r) => right(r));
  }

  @override
  Future<Either<Error, Unit>> updateUserData(
    UserForm user, {
    XFile? avatar,
    XFile? background,
  }) async {
    final res = await _apiHandler.updateUserData(
      user,
      avatar: avatar,
      background: background,
    );

    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, UserRelation>> checkUserRelationType(UUID uuid) async {
    final res = await _apiHandler.checkUserRelationType(uuid);
    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, List<User>>> getBesties(int skip, UUID uuid) async {
    final res = await _apiHandler.getBesties(skip, uuid);
    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, List<User>>> getBlockedUsers(
    int skip,
    UUID uuid,
  ) async {
    final res = await _apiHandler.getBlockedUsers(skip, uuid);
    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, List<User>>> getSubscribers(
    int skip,
    UUID uuid,
  ) async {
    final res = await _apiHandler.getSubscribers(skip, uuid);
    return res.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Error, List<User>>> getSubscriptions(
    int skip,
    UUID uuid,
  ) async {
    final res = await _apiHandler.getSubscriptions(skip, uuid);
    return res.fold((l) => throw UnimplementedError(), (r) => right(r));
  }

  @override
  Future<Either<Error, List<User>>> getUsers(int skip) async {
    final res = await _apiHandler.getUsers(skip);
    return res.fold(
      (l) => throw UnimplementedError(),
      (r) => right(r),
    );
  }

  @override
  Future<Either<Error, List<User>>> getTopUsers() async {
    final res = await _apiHandler.getTopUsers();
    return res.fold(
      (l) => throw UnimplementedError(),
      (r) => right(r),
    );
  }

  @override
  Future<Either<Error, Unit>> updateProfilePicStyleAndLinkedContacts(
    Tuple2<ProfilePic, List<LinkedContact>> tuple,
  ) async {
    final res = await _apiHandler.updateProfilePicStyleAndLinkedContacts(tuple);
    return res.fold(
      (l) => throw UnimplementedError(),
      (r) => right(r),
    );
  }

  @override
  Future<bool> updateUserID(UserID userID) async {
    return _apiHandler.updateUserID(userID).then((value) => value);
  }

  @override
  Future<void> requestForVerification() async {
    return _apiHandler.requestForVerification();
  }
}
