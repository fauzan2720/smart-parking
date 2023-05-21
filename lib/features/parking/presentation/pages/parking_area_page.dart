import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/parking/domain/entities/parking_area.dart';
import 'package:smart_parking/features/parking/domain/entities/parking_location_entity.dart';
import 'package:smart_parking/features/parking/presentation/widgets/parking_area_card.dart';

class ParkingAreaPage extends StatelessWidget {
  final ParkingLocationEntity parkingLocationEntity;

  const ParkingAreaPage(
    this.parkingLocationEntity, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<ParkingArea> parkingAreas = [
      ParkingArea(
        location: "A-1",
        available: false,
      ),
      ParkingArea(
        location: "A-2",
        available: false,
      ),
      ParkingArea(
        location: "A-3",
        available: true,
      ),
      ParkingArea(
        location: "A-4",
        available: false,
      ),
      ParkingArea(
        location: "A-5",
        available: false,
      ),
      ParkingArea(
        location: "A-6",
        available: true,
      ),
      ParkingArea(
        location: "A-7",
        available: false,
      ),
      ParkingArea(
        location: "A-8",
        available: false,
      ),
      ParkingArea(
        location: "A-9",
        available: true,
      ),
      ParkingArea(
        location: "A-10",
        available: false,
      ),
      ParkingArea(
        location: "A-11",
        available: false,
      ),
      ParkingArea(
        location: "A-12",
        available: true,
      ),
      ParkingArea(
        location: "A-13",
        available: false,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Area Parkir"),
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
                  const Text(
                    "9 terisi",
                    style: TextStyle(
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
                  const Text(
                    "4 tersedia",
                    style: TextStyle(
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
            itemCount: parkingAreas.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ParkingAreaCard(
                parkingArea: parkingAreas[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
