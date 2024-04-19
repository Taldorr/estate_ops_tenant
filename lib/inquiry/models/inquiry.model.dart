import '../../api/outputs/swagger.swagger.dart';
import 'inquiry.status.enum.dart';
import 'inquiry.type.enum.dart';
import 'inquiry_message.model.dart';

class InquiryModel {
  String id;
  InquiryType type;
  InquiryStatus status;
  DateTime createdAt;
  DateTime updatedAt;
  List<InquiryMessageModel> messages;

  InquiryModel({
    required this.id,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
    required this.messages,
  });

  factory InquiryModel.fromDto(InquiryDto dto) {
    return InquiryModel(
      id: dto.id,
      type: InquiryTypeExtension.fromInquiryDtoType(dto.type),
      status: InquiryStatusExtension.fromInquiryDtoStatus(dto.status),
      messages: dto.messages.map((e) => InquiryMessageModel.fromDto(e)).toList(),
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
    );
  }
}
