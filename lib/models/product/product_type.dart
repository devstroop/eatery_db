import 'package:hive/hive.dart';
part 'product_type.g.dart';

@HiveType(typeId: 63)
enum ProductType {
  @HiveField(0, defaultValue: true)
  kitchenDish,
  @HiveField(1)
  inventoryItem
}

extension EditionExtension on ProductType {
  int get id {
    switch (this) {
      case ProductType.kitchenDish:
        return 0;
      case ProductType.inventoryItem:
        return 1;
    }
  }

  String get name {
    switch (this) {
      case ProductType.kitchenDish:
        return 'Kitchen Dish';
      case ProductType.inventoryItem:
        return 'Inventory Item';
    }
  }
}
