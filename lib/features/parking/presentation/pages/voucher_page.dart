import 'package:flutter/material.dart';
import '../../../../core.dart';
import '../../domain/models/voucher_model.dart';
import '../widgets/voucher_card.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  final TextEditingController searchController = TextEditingController();
  final List<VoucherModel> vouchers = [
    VoucherModel(
      name: 'Diskon 10% Pembayaran OvoPay',
      code: 'ABCDEF',
      deadline: DateTime(2023, 08, 29, 23, 59),
      discount: 10 / 100,
    ),
    VoucherModel(
      name: 'Diskon 10% Pembayaran OvoPay',
      code: '12345',
      deadline: DateTime(2023, 08, 29, 23, 59),
      discount: 10 / 100,
    ),
  ];
  List<VoucherModel> searchResult = [];

  @override
  void initState() {
    super.initState();
    searchResult = vouchers;
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
      children: [
        TextFormField(
          controller: searchController,
          textInputAction: TextInputAction.search,
          onFieldSubmitted: (value) {
            List<VoucherModel> result = [];
            for (VoucherModel element in vouchers) {
              if (element.code == searchController.text) {
                result.add(element);
              }
            }
            searchResult = result;
            setState(() {});
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(14.0),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Masukkan kode voucher',
            hintStyle: TextStyle(
              color: AppColors.grey.withOpacity(0.5),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: AppColors.border,
              ),
            ),
          ),
        ),
        30.0.height,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(5.0),
            ),
            color: AppColors.primary,
            border: Border.all(
              color: AppColors.border,
            ),
          ),
          child: const Text(
            'Voucher saat ini',
            style: TextStyle(
              fontWeight: FW.medium,
              color: AppColors.white,
            ),
          ),
        ),
        if (searchResult.isEmpty)
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.border,
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.cancel_outlined,
                  size: 24.0,
                ),
                10.0.width,
                const Flexible(
                  child: Text('Voucher tidak ditemukan'),
                ),
              ],
            ),
          ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: searchResult.length,
          itemBuilder: (BuildContext context, int index) {
            return VoucherCard(
              voucherEntity: searchResult[index],
              onTap: (isClaim) {},
            );
          },
        ),
        30.0.height,
      ],
    );
  }
}
