import 'package:jjogji/domain/core/failures.dart';



class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}



/// 400 error code
class BadRequestError extends Error{}

/// 404 error code
class NotFoundError extends Error{}

/// 401 error code
class UnAuthenticatedError extends Error {}

/// 403 error code
class ForbiddenError extends Error {}

/// 500 error code
class InternalServerError extends Error{}

/// 503 error code
class ServiceUnavailableError extends Error {}
