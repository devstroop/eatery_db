import 'package:eatery_db/eatery_db.dart';
part '../adapters/autoPrintConfig.g.dart';

@HiveType(typeId: 10)
class AutoPrintConfig extends HiveObject {
  @HiveField(0)
  bool? invoicePrintEnabled;
  @HiveField(1)
  bool? kotPrintEnabled;
  @HiveField(2)
  int? invoicePrinterId; // id?
  @HiveField(3)
  int? kotPrinterId; // id?

  AutoPrintConfig(
      {this.invoicePrintEnabled,
      this.kotPrintEnabled,
      this.invoicePrinterId,
      this.kotPrinterId});

  AutoPrintConfig.fromMap(Map<String, dynamic> map)
      : invoicePrintEnabled = map['invoicePrint'],
        kotPrintEnabled = map['invoicePrinter'],
        invoicePrinterId = map['invoicePrinterId'],
        kotPrinterId = map['kotPrinterId'];

  Map<String, Object?> toMap() {
    return {
      'invoicePrint': invoicePrintEnabled,
      'kotPrint': kotPrintEnabled,
      'invoicePrinterId': invoicePrinterId,
      'kotPrinterId': kotPrinterId
    };
  }
}
