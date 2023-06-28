import 'package:eatery_db/eatery_db.dart';

extension SaleOrderTypeExtension on SaleOrderType {
  String? get name {
    switch (this) {
      case SaleOrderType.dine:
        return "Dine";
      case SaleOrderType.delivery:
        return "Delivery";
      case SaleOrderType.takeout:
        return "Takeout";
      default:
        return null;
    }
  }

  int? get color {
    switch (this) {
      case SaleOrderType.dine:
        return 0xFFE0855E;
      case SaleOrderType.delivery:
        return 0xFF705EE0;
      case SaleOrderType.takeout:
        return 0xFF4AC3A1;
      default:
        return null;
    }
  }
}
