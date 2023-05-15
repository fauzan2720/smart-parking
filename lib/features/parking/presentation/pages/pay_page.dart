import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:smart_parking/core.dart';

class PayPage extends StatelessWidget {
  final void Function(String value) onDetect;

  const PayPage({
    super.key,
    required this.onDetect,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bayar')),
      body: Stack(
        children: [
          SizedBox(
            width: context.fullWidth,
            height: 150.0,
            child: const Center(
              child: Text(
                "Arahkan scanner qr ke kode barcode\nyang sudah disediakan",
                style: TextStyle(
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radius),
            ),
            child: MobileScanner(
              fit: BoxFit.contain,
              controller: MobileScannerController(
                detectionSpeed: DetectionSpeed.noDuplicates,
              ),
              onDetect: (capture) {
                final List<Barcode> barcodes = capture.barcodes;
                for (final Barcode barcode in barcodes) {
                  onDetect(barcode.rawValue ?? '');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
