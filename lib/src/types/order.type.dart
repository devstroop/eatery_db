import 'package:eatery_db/eatery_db.dart';
part '../adapters/order.type.g.dart';

@HiveType(typeId: 42)
enum OrderType {
  @HiveField(0, defaultValue: true)
  dine,
  @HiveField(1)
  delivery,
  @HiveField(2)
  takeout
}

extension OrderTypeExtension on OrderType {
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

  // dynamic get icon {
  //   switch (this) {
  //     case OrderType.dine:
  //       return UIcons.regularStraight.room_service;
  //     case OrderType.delivery:
  //       return UIcons.regularStraight.bike;
  //     case OrderType.takeout:
  //       return UIcons.regularStraight.pot;
  //     default:
  //       return null;
  //   }
  // }
}
