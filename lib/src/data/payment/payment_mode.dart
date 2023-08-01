import 'package:eatery_db/eatery_db.dart';

part 'payment_mode.g.dart';

@HiveType(typeId: TypeIndex.paymentMode)
enum PaymentMode {
  @HiveField(0)
  cash,
  @HiveField(1)
  card,
  @HiveField(2)
  upi,
  @HiveField(3)
  wallet,
  @HiveField(4)
  other,
}

extension PaymentModeExtension on PaymentMode {
  String get name {
    switch (this) {
      case PaymentMode.cash:
        return 'Cash';
      case PaymentMode.card:
        return 'Card';
      case PaymentMode.upi:
        return 'UPI';
      case PaymentMode.wallet:
        return 'Wallet';
      case PaymentMode.other:
        return 'Other';
      default:
        return 'Unknown';
    }
  }
}