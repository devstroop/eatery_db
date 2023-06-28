import 'package:eatery_db/eatery_db.dart';
part 'printer.type.g.dart';

@HiveType(typeId: 51)
enum PrinterType {
  @HiveField(0, defaultValue: true)
  bluetooth,
  @HiveField(1)
  usb
}
