import 'package:eatery_db/eatery_db.dart';
part 'product.type.auto-generated.dart';

@HiveType(typeId: 63)
enum ProductType {
  @HiveField(0, defaultValue: true)
  kitchenDish,
  @HiveField(1)
  inventoryItem
}

extension ProductTypeExtension on ProductType {

  String get name {
    switch (this) {
      case ProductType.kitchenDish:
        return 'Kitchen Dish';
      case ProductType.inventoryItem:
        return 'Inventory Item';
    }
  }
}
