import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum Status {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('VACANT')
  vacant('VACANT'),
  @JsonValue('RENTED')
  rented('RENTED'),
  @JsonValue('CANCELLATION_PENDING')
  cancellationPending('CANCELLATION_PENDING'),
  @JsonValue('TENANT_CHANGING')
  tenantChanging('TENANT_CHANGING');

  final String? value;

  const Status(this.value);
}

enum InquiryDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('COMPLAINT')
  complaint('COMPLAINT'),
  @JsonValue('DAMAGE')
  damage('DAMAGE'),
  @JsonValue('QUESTION')
  question('QUESTION'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const InquiryDtoType(this.value);
}

enum InquiryDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('OPEN')
  open('OPEN'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('COMPLETE')
  complete('COMPLETE');

  final String? value;

  const InquiryDtoStatus(this.value);
}

enum Role {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('admin')
  admin('admin'),
  @JsonValue('member')
  member('member');

  final String? value;

  const Role(this.value);
}

enum CreateTaskDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('OPEN')
  open('OPEN'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('WAITING')
  waiting('WAITING'),
  @JsonValue('COMPLETE')
  complete('COMPLETE');

  final String? value;

  const CreateTaskDtoStatus(this.value);
}

enum UpdateStatusTaskDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('OPEN')
  open('OPEN'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('WAITING')
  waiting('WAITING'),
  @JsonValue('COMPLETE')
  complete('COMPLETE');

  final String? value;

  const UpdateStatusTaskDtoStatus(this.value);
}

enum UpdateTaskDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('OPEN')
  open('OPEN'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('WAITING')
  waiting('WAITING'),
  @JsonValue('COMPLETE')
  complete('COMPLETE');

  final String? value;

  const UpdateTaskDtoStatus(this.value);
}

enum CreateInquiryDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('COMPLAINT')
  complaint('COMPLAINT'),
  @JsonValue('DAMAGE')
  damage('DAMAGE'),
  @JsonValue('QUESTION')
  question('QUESTION'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const CreateInquiryDtoType(this.value);
}
