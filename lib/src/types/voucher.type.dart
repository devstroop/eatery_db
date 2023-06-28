import 'package:eatery_db/eatery_db.dart';
part '../adapters/voucher.type.g.dart';

@HiveType(typeId: 42)
enum VoucherType {
  @HiveField(0, defaultValue: true)
  sale,
  @HiveField(1)
  purchase,
  @HiveField(2)
  saleReturn,
  @HiveField(3)
  purchaseReturn,
}

extension VoucherTypeExtension on VoucherType {
  String? get name {
    switch (this) {
      case VoucherType.sale:
        return "Sale";
      case VoucherType.purchase:
        return "Purchase";
      case VoucherType.saleReturn:
        return "Sale Return";
      case VoucherType.purchaseReturn:
        return "Purchase Return";
      default:
        return null;
    }
  }
}
