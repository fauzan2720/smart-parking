import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({super.key});

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
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
              helperText: "Contoh: B 1234 AB",
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
            SmartFormInput(
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
            SmartFormInput(
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
            SmartFormInput(
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
            SmartFormInput(
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
                  "Berhasil ditambahkan".succeedBar(context);
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
