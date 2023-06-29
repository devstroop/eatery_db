import 'package:eatery_db/eatery_db.dart';

part 'printer.g.dart';

@HiveType(typeId: printerSchemaIndex)
class Printer extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  String name;
  @HiveField(2)
  String? bluetoothAddress;
  @HiveField(3)
  String? usbVendorId;
  @HiveField(4)
  String? usbProductId;
  @HiveField(5)
  PrinterType? type; // enum?

  Printer(
      {
      required this.name,
      this.bluetoothAddress,
      this.usbVendorId,
      this.usbProductId,
      this.type}) : companyKey = EateryDB.instance.openedCompany?.key;

  Printer.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        name = map['name'],
        bluetoothAddress = map['bluetoothAddress'],
        usbVendorId = map['usbVendorId'],
        usbProductId = map['usbProductId'],
        type = PrinterType.values[map['type']];

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
      'name': name,
      'bluetoothAddress': bluetoothAddress,
      'usbVendorId': usbVendorId,
      'usbProductId': usbProductId,
      'type': type?.index
    };
  }
}
