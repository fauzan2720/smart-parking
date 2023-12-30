import 'package:flutter/material.dart';
import '../../../../core.dart';
import '../../domain/models/models.dart';
import '../widgets/parking_area_card.dart';

class ParkingAreaPage extends StatelessWidget {
  final ExploreParkingModel parkingLocationEntity;

  const ParkingAreaPage({
    required this.parkingLocationEntity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final notavailable = parkingLocationEntity.parkingAreas
        .where((element) => !element.available)
        .toList()
        .length;
    final available = parkingLocationEntity.parkingAreas
        .where((element) => element.available)
        .toList()
        .length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Area Parkir'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSizes.primary),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                parkingLocationEntity.name,
                style: const TextStyle(
                  fontWeight: FW.medium,
                ),
              ),
              5.0.height,
              Text(
                parkingLocationEntity.address,
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
              20.0.height,
              Row(
                children: [
                  Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: AppColors.red,
                    ),
                  ),
                  5.0.width,
                  Text(
                    '$notavailable terisi',
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  20.0.width,
                  Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.transparent,
                      border: Border.all(
                        color: AppColors.border,
                      ),
                    ),
                  ),
                  5.0.width,
                  Text(
                    '$available tersedia',
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          20.0.height,
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2.5,
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
            itemCount: parkingLocationEntity.parkingAreas.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ParkingAreaCard(
                parkingArea: parkingLocationEntity.parkingAreas[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
