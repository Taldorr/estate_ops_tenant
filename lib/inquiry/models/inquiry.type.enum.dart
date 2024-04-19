import '../../api/outputs/swagger.enums.swagger.dart';

enum InquiryType {
  complaint,
  damage,
  other,
  question,
}

extension InquiryTypeExtension on InquiryType {
  static InquiryType fromCreateInquiryDtoType(CreateInquiryDtoType dtoType) {
    switch (dtoType) {
      case CreateInquiryDtoType.complaint:
        return InquiryType.complaint;
      case CreateInquiryDtoType.damage:
        return InquiryType.damage;
      case CreateInquiryDtoType.other:
        return InquiryType.other;
      case CreateInquiryDtoType.question:
        return InquiryType.question;
      default:
        throw Exception('Unknown CreateInquiryDtoType');
    }
  }

  static InquiryType fromInquiryDtoType(InquiryDtoType dtoType) {
    switch (dtoType) {
      case InquiryDtoType.complaint:
        return InquiryType.complaint;
      case InquiryDtoType.damage:
        return InquiryType.damage;
      case InquiryDtoType.other:
        return InquiryType.other;
      case InquiryDtoType.question:
        return InquiryType.question;
      default:
        throw Exception('Unknown InquiryDtoType');
    }
  }

  String toLocalString() {
    switch (this) {
      case InquiryType.complaint:
        return 'Beschwerde';
      case InquiryType.damage:
        return 'Schaden';
      case InquiryType.other:
        return 'Sonstiges';
      case InquiryType.question:
        return 'Generelle Frage';
      default:
        throw Exception('Unknown InquiryType');
    }
  }
}
