import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';

class ParkingNowPage extends StatelessWidget {
  const ParkingNowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tunjukkan QR Code di Pintu Masuk"),
      ),
      body: Center(
        child: Column(
          children: [
            30.0.height,
            QrImage(
              data: "data",
              version: QrVersions.auto,
              size: context.fullWidth / 1.2,
            ),
          ],
        ),
      ),
    );
  }
}
