import 'package:eatery_db/eatery_db.dart';
part 'express_configuration.g.dart';

@HiveType(typeId: expressConfigurationSchemaIndex)
class ExpressConfiguration extends HiveObject {
  @HiveField(0)
  bool printInvoice;
  @HiveField(1)
  bool printKot;
  @HiveField(2)
  bool sendPaymentLink;
  @HiveField(3)
  bool sendConfirmation;
  @HiveField(4)
  bool enabled;

  ExpressConfiguration(
      {this.printInvoice = false,
      this.printKot = false,
      this.sendPaymentLink = false,
      this.sendConfirmation = false,
      this.enabled = false});

  ExpressConfiguration.fromMap(Map<String, dynamic> map)
      : printInvoice = map['printInvoice'],
        printKot = map['printKot'],
        sendPaymentLink = map['sendPaymentLink'],
        sendConfirmation = map['sendConfirmation'],
        enabled = map['enabled'];

  Map<String, Object?> toMap() {
    return {
      'printInvoice': printInvoice,
      'printKot': printKot,
      'sendPaymentLink': sendPaymentLink,
      'sendConfirmation': sendConfirmation,
      'enabled': enabled
    };
  }
}
