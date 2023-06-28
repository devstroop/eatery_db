import 'package:eatery_db/eatery_db.dart';

part '../adapters/printer.g.dart';

@HiveType(typeId: 50)
class Printer extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String? bluetoothAddress;
  @HiveField(2)
  String? usbVendorId;
  @HiveField(3)
  String? usbProductId;
  @HiveField(4)
  PrinterType? type; // enum?

  Printer(
      {
      required this.name,
      this.bluetoothAddress,
      this.usbVendorId,
      this.usbProductId,
      this.type});

  Printer.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        bluetoothAddress = map['bluetoothAddress'],
        usbVendorId = map['usbVendorId'],
        usbProductId = map['usbProductId'],
        type = PrinterType.values[map['type']];

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'bluetoothAddress': bluetoothAddress,
      'usbVendorId': usbVendorId,
      'usbProductId': usbProductId,
      'type': type?.index
    };
  }
}
