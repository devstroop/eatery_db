import 'package:hive/hive.dart';

import '../printer/printer.dart';

part 'auto_print.g.dart';

@HiveType(typeId: 10)
class AutoPrint extends HiveObject {
  @HiveField(0)
  bool? invoicePrintEnabled;
  @HiveField(1)
  bool? kotPrintEnabled;
  @HiveField(2)
  Printer? invoicePrinter; // model?
  @HiveField(3)
  Printer? kotPrinter; // model?

  AutoPrint(
      {this.invoicePrintEnabled,
      this.kotPrintEnabled,
      this.invoicePrinter,
      this.kotPrinter});

  AutoPrint.fromMap(Map<String, dynamic> map)
      : invoicePrintEnabled = map['invoicePrint'],
        kotPrintEnabled = map['invoicePrinter'],
        invoicePrinter = Printer.fromMap(map['invoicePrinter']),
        kotPrinter = Printer.fromMap(map['kotPrinter']);

  Map<String, Object?> toMap() {
    return {
      'invoicePrint': invoicePrintEnabled,
      'kotPrint': kotPrintEnabled,
      'invoicePrinter': invoicePrinter != null ? invoicePrinter!.toMap() : null,
      'kotPrinter': kotPrinter != null ? kotPrinter!.toMap() : null
    };
  }
}
