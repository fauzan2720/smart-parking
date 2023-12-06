import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../../core.dart';

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
        title: const Text('QR Code'),
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
                size:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? context.fullHeight / 2
                        : context.fullWidth / 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
