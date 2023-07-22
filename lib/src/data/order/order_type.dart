import 'package:eatery_db/eatery_db.dart';
part 'order_type.g.dart';

@HiveType(typeId: TypeIndex.orderType)
enum OrderType {
  @HiveField(0, defaultValue: true)
  dine,
  @HiveField(1)
  delivery,
  @HiveField(2)
  takeout
}

extension OrderTypeExtension on OrderType {
  int? get id {
    switch (this) {
      case OrderType.dine:
        return 0;
      case OrderType.delivery:
        return 1;
      case OrderType.takeout:
        return 2;
      default:
        return null;
    }
  }

  String? get name {
    switch (this) {
      case OrderType.dine:
        return "Dine";
      case OrderType.delivery:
        return "Delivery";
      case OrderType.takeout:
        return "Takeout";
      default:
        return null;
    }
  }

  String? get description {
    switch (this) {
      case OrderType.dine:
        return 'Dine';
      case OrderType.delivery:
        return 'Delivery';
      case OrderType.takeout:
        return 'Takeout';
      default:
        return null;
    }
  }

  int? get color {
    switch (this) {
      case OrderType.dine:
        return 0xFFE0855E;
      case OrderType.delivery:
        return 0xFF705EE0;
      case OrderType.takeout:
        return 0xFF4AC3A1;
      default:
        return null;
    }
  }

  Widget? get icon {
    switch (this) {
      case OrderType.dine:
        return DineInDrawing();
      case OrderType.delivery:
        return DeliveryDrawing();
      case OrderType.takeout:
        return TakeAwayDrawing();
      default:
        return null;
    }
  }
}
