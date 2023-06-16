import 'package:hive/hive.dart';

part 'auto_print.g.dart';

@HiveType(typeId: 10)
class AutoPrint extends HiveObject {
  @HiveField(0)
  bool? invoicePrintEnabled;
  @HiveField(1)
  bool? kotPrintEnabled;
  @HiveField(2)
  int? invoicePrinterId; // id?
  @HiveField(3)
  int? kotPrinterId; // id?

  AutoPrint(
      {this.invoicePrintEnabled,
      this.kotPrintEnabled,
      this.invoicePrinterId,
      this.kotPrinterId});

  AutoPrint.fromMap(Map<String, dynamic> map)
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
