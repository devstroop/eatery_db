import 'package:eatery_db/eatery_db.dart';

extension PrinterTypeExtension on PrinterType {
  String? get label {
    switch (this) {
      case PrinterType.bluetooth:
        return "Bluetooth printer";
      case PrinterType.usb:
        return "USB printer";
      default:
        return null;
    }
  }

  String? get description {
    switch (this) {
      case PrinterType.bluetooth:
        return 'Print via bluetooth';
      case PrinterType.usb:
        return 'Print via usb';
      default:
        return null;
    }
  }
}
