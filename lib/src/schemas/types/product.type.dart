import 'package:eatery_db/eatery_db.dart';
part 'product.type.g.dart';

@HiveType(typeId: productTypeSchemaIndex)
enum ProductType {
  @HiveField(0, defaultValue: true)
  kitchenDish,
  @HiveField(1)
  inventoryItem
}
