import 'package:eatery_db/eatery_db.dart';

part 'printer.g.dart';

@HiveType(typeId: 50)
class Printer extends HiveObject {
  @HiveField(0)
  int id;
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
      {required this.id,
      required this.name,
      this.bluetoothAddress,
      this.usbVendorId,
      this.usbProductId,
      this.type});

  Printer.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        bluetoothAddress = map['bluetoothAddress'],
        usbVendorId = map['usbVendorId'],
        usbProductId = map['usbProductId'],
        type = PrinterType.values
            .singleWhere((element) => element.id == map['type']);

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': name,
      'bluetoothAddress': bluetoothAddress,
      'usbVendorId': usbVendorId,
      'usbProductId': usbProductId,
      'type': type != null ? type!.id : null
    };
  }
}
