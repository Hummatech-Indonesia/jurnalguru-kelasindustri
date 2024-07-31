import 'package:intl/intl.dart';

abstract class Formatter {
  static final idrFormatter = NumberFormat.currency(
    name: 'IDR',
    decimalDigits: 0,
    symbol: 'Rp',
    customPattern: 'Rp#,##0',
    locale: 'id',
  );
}
