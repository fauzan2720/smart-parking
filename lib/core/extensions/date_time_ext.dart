final List<String> _days = [
  'Senin',
  'Selasa',
  'Rabu',
  'Kamis',
  'Jumat',
  'Sabtu',
  'Minggu',
];

final List<String> _months = [
  'Januari',
  'Februari',
  'Maret',
  'April',
  'Mei',
  'Juni',
  'Juli',
  'Agustus',
  'September',
  'Oktober',
  'November',
  'Desember',
];

extension DateTimeExt on DateTime {
  String toFormattedStringWithTime() {
    final String day = this.day.toString().padLeft(2, '0');
    final String month = _months[this.month - 1];
    final String year = this.year.toString();
    final String hour = this.hour.toString().padLeft(2, '0');
    final String minute = this.minute.toString().padLeft(2, '0');

    return '$day $month $year $hour:$minute';
  }

  String toFormattedString() {
    final String dayOfWeek = _days[weekday - 1];
    final String formattedDate =
        '$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';

    return '$dayOfWeek, $formattedDate';
  }

  String toFormattedTime() {
    final hour = this.hour.toString().padLeft(2, '0');
    final minute = this.minute.toString().padLeft(2, '0');
    final second = this.second.toString().padLeft(2, '0');

    return '$hour:$minute:$second';
  }
}
