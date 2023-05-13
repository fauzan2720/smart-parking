import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/vehicle/domain/entities/vehicle_entity.dart';

class EditVehicle extends StatefulWidget {
  final VehicleEntity vehicleEntity;

  const EditVehicle({
    super.key,
    required this.vehicleEntity,
  });

  @override
  State<EditVehicle> createState() => _EditVehicleState();
}

class _EditVehicleState extends State<EditVehicle> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController platController = TextEditingController();
  final TextEditingController stnkImageController = TextEditingController();
  final TextEditingController frontVehicleImageController =
      TextEditingController();
  final TextEditingController backVehicleImageController =
      TextEditingController();
  final TextEditingController userWithVehicleImageController =
      TextEditingController();

  @override
  void initState() {
    nameController.text = widget.vehicleEntity.name;
    platController.text = widget.vehicleEntity.plate;
    stnkImageController.text = widget.vehicleEntity.stnkImage;
    frontVehicleImageController.text = widget.vehicleEntity.frontVehicleImage;
    backVehicleImageController.text = widget.vehicleEntity.backVehicleImage;
    userWithVehicleImageController.text =
        widget.vehicleEntity.userWithVehicleImage;
    super.initState();
  }

  @override
  void dispose() {
    nameController.clear();
    platController.clear();
    stnkImageController.clear();
    frontVehicleImageController.clear();
    backVehicleImageController.clear();
    userWithVehicleImageController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Kendaraan"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.secondary),
          children: [
            20.0.height,
            SmartFormInput(
              controller: nameController,
              hint: "Nama Kendaraan",
              icon: AppIcons.car,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Nama kendaraan wajib diisi";
                } else {
                  return null;
                }
              },
            ),
            20.0.height,
            SmartFormInput(
              controller: platController,
              hint: "Nomor Plat",
              icon: AppIcons.plat,
              helperText: "Contoh: P 1234 AB",
              validator: (value) {
                if (value!.isEmpty) {
                  return "Nomor plat wajib diisi";
                } else if (value.isValidLicensePlate()) {
                  return "Nomor plat tidak valid. Contoh: P 1234 AB";
                } else {
                  return null;
                }
              },
            ),
            20.0.height,
            SmartFormUpload(
              controller: stnkImageController,
              hint: "Foto STNK",
              icon: AppIcons.camera,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Gambar wajib diupload";
                } else {
                  return null;
                }
              },
            ),
            20.0.height,
            SmartFormUpload(
              controller: frontVehicleImageController,
              hint: "Foto Kendaraan Tampak Depan",
              icon: AppIcons.car,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Gambar wajib diupload";
                } else {
                  return null;
                }
              },
            ),
            20.0.height,
            SmartFormUpload(
              controller: backVehicleImageController,
              hint: "Foto Kendaraan Tampak Belakang",
              icon: AppIcons.car,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Gambar wajib diupload";
                } else {
                  return null;
                }
              },
            ),
            20.0.height,
            SmartFormUpload(
              controller: userWithVehicleImageController,
              hint: "Foto Kendaraan Dengan Pemilik",
              icon: AppIcons.car,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Gambar wajib diupload";
                } else {
                  return null;
                }
              },
            ),
            40.0.height,
            SmartFormButton(
              text: "Tambahkan",
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  "Berhasil diperbarui".succeedBar(context);
                  context.pop();
                }
              },
            ),
            30.0.height,
          ],
        ),
      ),
    );
  }
}
