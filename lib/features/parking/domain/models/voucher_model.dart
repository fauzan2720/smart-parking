import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_model.freezed.dart';

@freezed
class VoucherModel with _$VoucherModel {
  const VoucherModel._();
  const factory VoucherModel({
    required String name,
    required String code,
    required DateTime deadline,
    required double discount,
  }) = _VoucherModel;
}
