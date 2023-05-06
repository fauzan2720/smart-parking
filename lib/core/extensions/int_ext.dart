part of 'package:smart_parking/core.dart';

extension StringExt on int {
  String get currencyFormatRp => NumberFormat.currency(
        locale: 'id',
        symbol: 'Rp',
        decimalDigits: 0,
      ).format(this);
}
