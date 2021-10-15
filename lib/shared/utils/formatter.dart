import 'package:intl/intl.dart';

class FormatterUtils {
  static String formatMoney(double value) {
    return value.abs().toStringAsFixed(2).replaceFirst('.', ',');
  }

  static String formatDateInddMMMM(DateTime date) {
    return DateFormat("dd MMMM", 'pt_BR').format(date);
  }
}
