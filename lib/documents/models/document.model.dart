import '../../api/outputs/swagger.swagger.dart';

class DocumentModel {
  String id;
  String name;
  String fileKey;
  String mimeType;
  DateTime createdAt;
  DateTime updatedAt;

  DocumentModel({
    required this.id,
    required this.name,
    required this.fileKey,
    required this.mimeType,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DocumentModel.fromDto(AttachmentDto dto) {
    return DocumentModel(
      id: dto.id,
      name: dto.name,
      fileKey: dto.fileKey,
      mimeType: dto.mimeType,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
    );
  }
}
