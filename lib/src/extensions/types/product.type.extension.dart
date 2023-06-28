import 'package:eatery_db/eatery_db.dart';


extension ProductTypeExtension on ProductType {

  String get label {
    switch (this) {
      case ProductType.kitchenDish:
        return 'Kitchen Dish';
      case ProductType.inventoryItem:
        return 'Inventory Item';
    }
  }
}
