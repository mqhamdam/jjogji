

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failures.freezed.dart';

@freezed
class UserFailures with _$UserFailures {
  const factory UserFailures.unexpected() = _Unexpected;
  const factory UserFailures.inSufficientPermission() = _InSufficientPermission;
}
