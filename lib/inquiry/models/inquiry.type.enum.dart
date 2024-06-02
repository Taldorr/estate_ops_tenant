import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../api/outputs/swagger.enums.swagger.dart';

extension InquiryTypeExtension on InquiryType {
  String toLocalString(BuildContext context) {
    switch (this) {
      case InquiryType.complaint:
        return AppLocalizations.of(context)!.inquiryType_complaint;
      case InquiryType.damage:
        return AppLocalizations.of(context)!.inquiryType_damage;
      case InquiryType.other:
        return AppLocalizations.of(context)!.inquiryType_other;
      case InquiryType.question:
        return AppLocalizations.of(context)!.inquiryType_generalQuestion;
      case InquiryType.changeName:
        return AppLocalizations.of(context)!.inquiryType_changeName;
      case InquiryType.freeMessage:
        return AppLocalizations.of(context)!.inquiryType_freeMessage;
      case InquiryType.serviceMissing:
        return AppLocalizations.of(context)!.inquiryType_serviceMissing;
      default:
        throw Exception('Unknown InquiryType');
    }
  }
}
