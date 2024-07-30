import '../../api/outputs/swagger.enums.swagger.dart';

extension InquiryStatusExtension on InquiryStatus {
  static InquiryStatus fromInquiryDtoStatus(InquiryDtoStatus dtoStatus) {
    switch (dtoStatus) {
      case InquiryDtoStatus.complete:
        return InquiryStatus.complete;
      case InquiryDtoStatus.inProgress:
        return InquiryStatus.inProgress;
      case InquiryDtoStatus.open:
        return InquiryStatus.open;
      default:
        throw Exception('Unknown InquiryDtoStatus');
    }
  }

  String toLocalString() {
    switch (this) {
      case InquiryStatus.complete:
        return 'Abgeschlossen';
      case InquiryStatus.inProgress:
        return 'In Bearbeitung';
      case InquiryStatus.open:
        return 'Offen';
      default:
        throw Exception('Unknown InquiryStatus');
    }
  }
}
