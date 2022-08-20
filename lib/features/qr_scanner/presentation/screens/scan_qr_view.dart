import 'dart:io';

import 'package:flutter/material.dart';
import '../../../../core/resources/strings_manager.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../widgets/qr_scanning_result.dart';

class ScanView extends StatefulWidget {
  const ScanView({Key? key}) : super(key: key);

  @override
  State<ScanView> createState() => _ScanViewState();
}

class _ScanViewState extends State<ScanView> {
  final qrKey = GlobalKey(debugLabel: AppStrings.debugLabel);

  QRViewController? controller;
  Barcode? barcode;
  Widget _buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: ColorManager.white,
        borderWidth: AppSize.s8,
        borderLength: AppSize.s70,
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    // ignore: avoid_print
    print("createeeeeeeeeeeed");
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((barcode) => this.barcode = barcode);
  }

  Widget _buildQrScanningResult() {
    return const Positioned(
      bottom: AppSize.s10,
      child: QrScanningResult(),
    );
  }

  @override
  void reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildQrView(context),
          _buildQrScanningResult(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
