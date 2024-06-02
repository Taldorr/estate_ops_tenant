import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum Status {
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

  const Status(this.value);
}

enum InquiryType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('COMPLAINT')
  complaint('COMPLAINT'),
  @JsonValue('DAMAGE')
  damage('DAMAGE'),
  @JsonValue('QUESTION')
  question('QUESTION'),
  @JsonValue('FREE_MESSAGE')
  freeMessage('FREE_MESSAGE'),
  @JsonValue('SERVICE_MISSING')
  serviceMissing('SERVICE_MISSING'),
  @JsonValue('CHANGE_NAME')
  changeName('CHANGE_NAME'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const InquiryType(this.value);
}

enum TaskStatus {
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

  const TaskStatus(this.value);
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

enum TenantDtoContactMethod {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('APP')
  app('APP'),
  @JsonValue('MAIL')
  mail('MAIL'),
  @JsonValue('EMAIL')
  email('EMAIL');

  final String? value;

  const TenantDtoContactMethod(this.value);
}

enum TenantProfileDtoContactMethod {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('APP')
  app('APP'),
  @JsonValue('MAIL')
  mail('MAIL'),
  @JsonValue('EMAIL')
  email('EMAIL');

  final String? value;

  const TenantProfileDtoContactMethod(this.value);
}

enum ResolvedTenantDtoContactMethod {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('APP')
  app('APP'),
  @JsonValue('MAIL')
  mail('MAIL'),
  @JsonValue('EMAIL')
  email('EMAIL');

  final String? value;

  const ResolvedTenantDtoContactMethod(this.value);
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

enum DocumentType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('RENTING_AGREEMENT')
  rentingAgreement('RENTING_AGREEMENT'),
  @JsonValue('LANDLORD_CERTIFICATE')
  landlordCertificate('LANDLORD_CERTIFICATE'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const DocumentType(this.value);
}
