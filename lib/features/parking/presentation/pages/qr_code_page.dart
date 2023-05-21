import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';

class QrCodePage extends StatelessWidget {
  final String data;

  const QrCodePage(
    this.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR Code"),
      ),
      body: Center(
        child: Column(
          children: [
            30.0.height,
            Hero(
              tag: data,
              child: QrImage(
                data: data,
                version: QrVersions.auto,
                size: context.fullWidth / 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
