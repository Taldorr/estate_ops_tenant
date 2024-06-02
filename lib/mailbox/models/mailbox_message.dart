import 'package:estate_ops_tenant/api/outputs/swagger.swagger.dart';

class MailboxMessage {
  final String id;

  final String title;
  final String content;

  final String? inquiryId;

  final DateTime createdAt;
  final DateTime? readAt;

  const MailboxMessage({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    this.inquiryId,
    this.readAt,
  });

  factory MailboxMessage.fromDto(MessageDto dto) => MailboxMessage(
        id: dto.id,
        title: dto.title,
        content: dto.content,
        createdAt: dto.createdAt,
        inquiryId: dto.inquiryId,
      );
}
