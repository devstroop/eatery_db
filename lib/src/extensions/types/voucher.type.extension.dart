import 'package:eatery_db/eatery_db.dart';


extension VoucherTypeExtension on VoucherType {
  String? get label {
    switch (this) {
      case VoucherType.sale:
        return "Sale";
      case VoucherType.purchase:
        return "Purchase";
      case VoucherType.saleOrder:
        return "Sale Order";
      case VoucherType.purchaseOrder:
        return "Purchase Order";
      case VoucherType.saleReturn:
        return "Sale Return";
      case VoucherType.purchaseReturn:
        return "Purchase Return";
      default:
        return null;
    }
  }
}
