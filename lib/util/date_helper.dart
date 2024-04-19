import 'package:intl/intl.dart';

class DateHelper {
  static String format(DateTime date, {bool withTime = false}) {
    if (withTime) {
      return '${DateFormat('dd.MM.yyyy HH:mm').format(date)} Uhr';
    }
    return DateFormat('dd.MM.yyyy').format(date);
  }
}
