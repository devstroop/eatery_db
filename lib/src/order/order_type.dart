import 'package:eatery_db/eatery_db.dart';
import 'package:flutter/material.dart';
part 'order_type.g.dart';

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

  Color? get color {
    switch (this) {
      case OrderType.dine:
        return const Color(0xFFE0855E);
      case OrderType.delivery:
        return const Color(0xFF705EE0);
      case OrderType.takeout:
        return const Color(0xFF4AC3A1);
      default:
        return null;
    }
  }

  IconData? get icon {
    switch (this) {
      case OrderType.dine:
        return Icons.dinner_dining;
      case OrderType.delivery:
        return Icons.delivery_dining;
      case OrderType.takeout:
        return Icons.takeout_dining;
      default:
        return null;
    }
  }
}
