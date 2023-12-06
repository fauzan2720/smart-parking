import 'package:flutter/material.dart';

import '../../../../core.dart';
import '../../domain/entities/parking_location_entity.dart';
import '../widgets/explore_parking_card.dart';
import 'parking_area_page.dart';

class ExploreParkingPage extends StatefulWidget {
  const ExploreParkingPage({super.key});

  @override
  State<ExploreParkingPage> createState() => _ExploreParkingPageState();
}

class _ExploreParkingPageState extends State<ExploreParkingPage> {
  final TextEditingController searchController = TextEditingController();
  final List<ParkingLocationEntity> parkingLocations = [
    ParkingLocationEntity(
      name: 'Lippo Plaza Jember',
      address:
          'Alamat: Jl. Gajah Mada No.106, Kb. Kidul, Jember Kidul, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131',
    ),
    ParkingLocationEntity(
      name: 'Jember Roxy Square',
      address:
          'Jl. Hayam Wuruk No.50-58, Gerdu, Sempusari, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131',
    ),
    ParkingLocationEntity(
      name: 'Matahari Johar Plaza',
      address:
          'Johar Plaza, Jl. Diponegoro No.66, Tembaan, Kepatihan, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68137',
    ),
    ParkingLocationEntity(
      name: 'Rien Collection',
      address:
          'Jl. Sultan Agung No.9 No.1, Kb. Kidul, Jember Kidul, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131',
    ),
    ParkingLocationEntity(
      name: 'Kota Cinema Mall Jember',
      address:
          'Jl. Gajah Mada No.176, Kb. Kidul, Jember Kidul, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131',
    ),
  ];
  List<ParkingLocationEntity> searchResult = [];

  @override
  void initState() {
    super.initState();
    searchResult = parkingLocations;
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
            List<ParkingLocationEntity> result = [];
            for (ParkingLocationEntity element in parkingLocations) {
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
            'Lokasi Parkir',
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
              onTap: () => context.push(ParkingAreaPage(searchResult[index])),
            );
          },
        ),
        30.0.height,
      ],
    );
  }
}
