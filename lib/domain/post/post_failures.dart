
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_failures.freezed.dart';

@freezed
class PostFailures with _$PostFailures{
  const factory PostFailures.unexpected() = Unexpected;
  const factory PostFailures.insufficientPermission() = InsufficientPermission;
  const factory PostFailures.unableToUpdate() = UnableToUpdate;
  
}
