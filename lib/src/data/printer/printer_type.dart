import 'package:eatery_db/eatery_db.dart';
part 'printer_type.g.dart';

@HiveType(typeId: TypeIndex.printerType)
enum PrinterType {
  @HiveField(0, defaultValue: true)
  bluetooth,
  @HiveField(1)
  usb
}

extension PrinterTypeExtension on PrinterType {
  int? get id {
    switch (this) {
      case PrinterType.bluetooth:
        return 0;
      case PrinterType.usb:
        return 1;
      default:
        return null;
    }
  }

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
