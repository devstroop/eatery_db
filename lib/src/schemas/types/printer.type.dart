import 'package:eatery_db/eatery_db.dart';
part 'printer.type.g.dart';

@HiveType(typeId: printerTypeSchemaIndex)
enum PrinterType {
  @HiveField(0)
  bluetooth,
  @HiveField(1)
  usb
}
