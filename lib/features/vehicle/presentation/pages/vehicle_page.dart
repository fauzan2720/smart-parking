import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/vehicle/domain/entities/vehicle_entity.dart';
import 'package:smart_parking/features/vehicle/presentation/pages/add_vehicle.dart';
import 'package:smart_parking/features/vehicle/presentation/pages/edit_vehicle.dart';
import 'package:smart_parking/features/vehicle/presentation/widgets/vehicle_card.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<VehicleEntity> vehicles = [
      VehicleEntity(
        id: '1',
        name: 'Ferrari F8 Tributo',
        plate: 'B 1234 ABC',
        stnkImage:
            'https://upload.wikimedia.org/wikipedia/commons/0/00/2021_Ferrari_F8_Tributo.jpg',
        frontVehicleImage:
            'https://upload.wikimedia.org/wikipedia/commons/0/00/2021_Ferrari_F8_Tributo.jpg',
        backVehicleImage:
            'https://upload.wikimedia.org/wikipedia/commons/0/00/2021_Ferrari_F8_Tributo.jpg',
        userWithVehicleImage:
            'https://upload.wikimedia.org/wikipedia/commons/0/00/2021_Ferrari_F8_Tributo.jpg',
      ),
      VehicleEntity(
        id: '2',
        name: 'Porsche 911 GT3',
        plate: 'B 5678 DEF',
        stnkImage:
            'https://imgx.gridoto.com/crop/84x7:1810x1074/700x465/photo/2021/12/18/manthey-racing-porsche-911-gt3-5-20211218113705.jpg',
        frontVehicleImage:
            'https://imgx.gridoto.com/crop/84x7:1810x1074/700x465/photo/2021/12/18/manthey-racing-porsche-911-gt3-5-20211218113705.jpg',
        backVehicleImage:
            'https://imgx.gridoto.com/crop/84x7:1810x1074/700x465/photo/2021/12/18/manthey-racing-porsche-911-gt3-5-20211218113705.jpg',
        userWithVehicleImage:
            'https://imgx.gridoto.com/crop/84x7:1810x1074/700x465/photo/2021/12/18/manthey-racing-porsche-911-gt3-5-20211218113705.jpg',
      ),
      VehicleEntity(
        id: '3',
        name: 'Lamborghini Huracan EVO',
        plate: 'B 9012 GHI',
        stnkImage:
            'https://www.harapanrakyat.com/wp-content/uploads/2020/06/Lamborghini-Huracan-EVO-AWD-Akhirnya-Hadir-di-Indonesia.jpg',
        frontVehicleImage:
            'https://www.harapanrakyat.com/wp-content/uploads/2020/06/Lamborghini-Huracan-EVO-AWD-Akhirnya-Hadir-di-Indonesia.jpg',
        backVehicleImage:
            'https://www.harapanrakyat.com/wp-content/uploads/2020/06/Lamborghini-Huracan-EVO-AWD-Akhirnya-Hadir-di-Indonesia.jpg',
        userWithVehicleImage:
            'https://www.harapanrakyat.com/wp-content/uploads/2020/06/Lamborghini-Huracan-EVO-AWD-Akhirnya-Hadir-di-Indonesia.jpg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kendaraan Anda"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.0.height,
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: vehicles.length,
              itemBuilder: (context, index) => VehicleCard(
                vehicleEntity: vehicles[index],
                onEditTap: () => context.push(
                  EditVehicle(
                    vehicleEntity: vehicles[index],
                  ),
                ),
                onDeleteTap: () => "Berhasil dihapus".succeedBar(context),
              ),
            ),
            25.0.height,
            SmartFormButton(
              text: "Tambah Kendaraan",
              onPressed: () => context.push(const AddVehicle()),
            ),
            30.0.height,
          ],
        ),
      ),
    );
  }
}
