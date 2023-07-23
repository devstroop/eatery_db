import 'package:eatery_db/eatery_db.dart';
part 'auto_print.g.dart';

@HiveType(typeId: TypeIndex.autoPrint)
class AutoPrint extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  bool? invoicePrintEnabled;
  @HiveField(2)
  bool? kotPrintEnabled;
  @HiveField(3)
  int? invoicePrinterId; // id?
  @HiveField(4)
  int? kotPrinterId; // id?

  AutoPrint(
      {
      this.invoicePrintEnabled,
      this.kotPrintEnabled,
      this.invoicePrinterId,
      this.kotPrinterId}): id = EateryDB.instance.autoPrintBox.nextId();

  AutoPrint.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        invoicePrintEnabled = map['invoicePrint'],
        kotPrintEnabled = map['invoicePrinter'],
        invoicePrinterId = map['invoicePrinterId'],
        kotPrinterId = map['kotPrinterId'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'invoicePrint': invoicePrintEnabled,
      'kotPrint': kotPrintEnabled,
      'invoicePrinterId': invoicePrinterId,
      'kotPrinterId': kotPrinterId
    };
  }
}
