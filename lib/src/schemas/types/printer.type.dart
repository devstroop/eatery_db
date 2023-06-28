import 'package:eatery_db/eatery_db.dart';
part 'printer.type.auto-generated.dart';

@HiveType(typeId: 51)
enum PrinterType {
  @HiveField(0, defaultValue: true)
  bluetooth,
  @HiveField(1)
  usb
}

extension PrinterTypeExtension on PrinterType {
  String? get name {
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
