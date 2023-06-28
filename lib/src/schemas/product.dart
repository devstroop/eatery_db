import 'package:eatery_db/eatery_db.dart';

part 'product.g.dart';

@HiveType(typeId: 60)
class Product extends HiveObject {
  @HiveField(0)
  int sku;
  @HiveField(1)
  String name;
  @HiveField(2)
  int? categoryId; // id?
  @HiveField(3)
  String? description;
  @HiveField(4)
  String? image;
  @HiveField(5)
  double mrpPrice;
  @HiveField(6)
  double? salePrice;
  @HiveField(7)
  int? taxSlabId; // id?
  @HiveField(8)
  FoodType? foodType; // enum?
  @HiveField(9)
  ProductType type; // enum
  @HiveField(10)
  bool isActive;

  Product(
      {required this.sku,
      required this.name,
      this.categoryId,
      this.description,
      this.image,
      required this.mrpPrice,
      this.salePrice,
      this.taxSlabId,
      this.foodType,
      required this.type,
      required this.isActive});

  Product.fromMap(Map<String, dynamic> map)
      : sku = map['_id'],
        name = map['name'],
        categoryId = map['categoryId'],
        description = map['description'],
        image = map['image'],
        mrpPrice = map['mrpPrice'],
        salePrice = map['salePrice'],
        taxSlabId = map['taxSlabId'],
        foodType = FoodType.values[map['foodType']],
        type = ProductType.values[map['type']],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      '_id': sku,
      'name': name,
      'categoryId': categoryId,
      'description': description,
      'image': image,
      'mrpPrice': mrpPrice,
      'salePrice': salePrice,
      'taxSlabId': taxSlabId,
      'foodType': foodType?.index,
      'type': type.index,
      'isActive': isActive
    };
  }
}
