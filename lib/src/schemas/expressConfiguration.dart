import 'package:eatery_db/eatery_db.dart';
part 'expressConfiguration.g.dart';

@HiveType(typeId: 104)
class ExpressConfiguration extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  bool printInvoice;
  @HiveField(2)
  bool printKot;
  @HiveField(3)
  bool sendPaymentLink;
  @HiveField(4)
  bool sendConfirmation;
  @HiveField(5)
  bool enabled;

  ExpressConfiguration({
    this.printInvoice = false,
    this.printKot = false,
    this.sendPaymentLink = false,
    this.sendConfirmation = false,
    this.enabled = false
  }) : companyKey = EateryDB.instance.openedCompany?.key;

  ExpressConfiguration.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        printInvoice = map['printInvoice'],
        printKot = map['printKot'],
        sendPaymentLink = map['sendPaymentLink'],
        sendConfirmation = map['sendConfirmation'],
        enabled = map['enabled']
  ;

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
      'printInvoice': printInvoice,
      'printKot': printKot,
      'sendPaymentLink': sendPaymentLink,
      'sendConfirmation': sendConfirmation,
      'enabled': enabled
    };
  }
}
