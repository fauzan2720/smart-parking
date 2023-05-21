class VoucherEntity {
  final String name;
  final String code;
  final DateTime deadline;
  final double discount;

  VoucherEntity({
    required this.name,
    required this.code,
    required this.deadline,
    required this.discount,
  });
}
