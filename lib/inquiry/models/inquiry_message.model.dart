import '../../api/outputs/swagger.swagger.dart';
import '../../documents/models/document.model.dart';

class InquiryMessageModel {
  String id;
  String? content;
  String? authorLabel;
  String? authorAccountId;
  List<DocumentModel> documents;
  DateTime createdAt;
  DateTime updatedAt;
  bool showLeft;
  bool isAIGenerated;

  InquiryMessageModel(
      {required this.id,
      this.content,
      this.authorAccountId,
      this.authorLabel,
      this.documents = const [],
      required this.createdAt,
      required this.updatedAt,
      this.showLeft = true,
      required this.isAIGenerated});

  factory InquiryMessageModel.fromDto(InquiryMessageDto dto) {
    return InquiryMessageModel(
      id: dto.id,
      content: dto.content,
      authorLabel: dto.authorLabel,
      documents: (dto.attachments ?? []).map((e) => DocumentModel.fromDto(e)).toList(),
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
      showLeft: dto.isAIGenerated ?? false,
      isAIGenerated: dto.isAIGenerated ?? false,
    );
  }
}
