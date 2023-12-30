import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core.dart';
import '../../domain/models/explore_parking_model.dart';
import '../managers/managers.dart';
import '../widgets/explore_parking_card.dart';
import 'parking_area_page.dart';

class ExploreParkingPage extends StatefulWidget {
  const ExploreParkingPage({super.key});

  @override
  State<ExploreParkingPage> createState() => _ExploreParkingPageState();
}

class _ExploreParkingPageState extends State<ExploreParkingPage> {
  final TextEditingController searchController = TextEditingController();
  List<ExploreParkingModel> searchResult = [];

  @override
  void initState() {
    context.read<ExploreParkingBloc>().add(const ExploreParkingEvent.getData());
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExploreParkingBloc, ExploreParkingState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {
            context.showLoadingDialog();
          },
          success: (locations) {
            context.dismissLoadingDialog();
            searchResult = locations;
          },
        );
      },
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        error: (state, message) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 48),
            ),
            SmartFormButton(
              text: 'Try Again',
              onPressed: () => context
                  .read<ExploreParkingBloc>()
                  .add(const ExploreParkingEvent.getData()),
            ),
          ],
        ),
        success: (locations) => ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
          children: [
            TextFormField(
              controller: searchController,
              textInputAction: TextInputAction.search,
              onFieldSubmitted: (value) {
                List<ExploreParkingModel> result = [];
                for (ExploreParkingModel element in locations) {
                  if (element.name
                      .toLowerCase()
                      .contains(searchController.text.toLowerCase())) {
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
                hintText: 'Cari lokasi parkir',
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
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
                'Lokasi Parkir',
                style: TextStyle(
                  fontWeight: FW.medium,
                  color: AppColors.white,
                ),
              ),
            ),
            if (searchResult.isEmpty)
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 15.0),
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
                      child: Text('Lokasi parkir tidak ditemukan'),
                    ),
                  ],
                ),
              ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: searchResult.length,
              itemBuilder: (BuildContext context, int index) {
                return ExploreParkingCard(
                  parkingLocationEntity: searchResult[index],
                  onTap: () => context.push(ParkingAreaPage(
                    parkingLocationEntity: searchResult[index],
                  )),
                );
              },
            ),
            30.0.height,
          ],
        ),
      ),
    );
  }
}
