import 'package:camera/camera.dart';

//Gerencia de estado da camera
class BarcodeScannerStatus {
  final bool isCameraAvaliable;
  final String error;
  final String barcode;
  final bool stopScanner;

  BarcodeScannerStatus({
    this.isCameraAvaliable = false,
    this.stopScanner = false,
    this.error = "",
    this.barcode = "",
  });

  factory BarcodeScannerStatus.avaliable() =>
      BarcodeScannerStatus(
        stopScanner: false,
        isCameraAvaliable: true,
      );

  factory BarcodeScannerStatus.error(String message) => BarcodeScannerStatus(
        error: message,
        stopScanner: true,
      );

  factory BarcodeScannerStatus.barcode(String barcode) => BarcodeScannerStatus(
        barcode: barcode,
        stopScanner: true,
      );

  bool get showCamera => isCameraAvaliable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}
