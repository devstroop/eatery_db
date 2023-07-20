import 'package:eatery_db/eatery_db.dart';

part 'product.g.dart';

@HiveType(typeId: TypeIndex.product)
class Product extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  int? categoryId; // id?
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? image;
  @HiveField(4)
  double mrpPrice;
  @HiveField(5)
  double? salePrice;
  @HiveField(6)
  int? taxSlabId; // id?
  @HiveField(7)
  FoodType? foodType; // enum?
  @HiveField(8)
  ProductType type; // enum
  @HiveField(9)
  bool isActive;

  Product(
      {required this.name,
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
      : name = map['name'],
        categoryId = map['categoryId'],
        description = map['description'],
        image = map['image'],
        mrpPrice = map['mrpPrice'],
        salePrice = map['salePrice'],
        taxSlabId = map['taxSlabId'],
        foodType = FoodType.values
            .singleWhere((element) => element.id == map['foodType']),
        type = ProductType.values
            .singleWhere((element) => element.index == map['type']),
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'categoryId': categoryId,
      'description': description,
      'image': image,
      'mrpPrice': mrpPrice,
      'salePrice': salePrice,
      'taxSlabId': taxSlabId,
      'foodType': foodType != null ? foodType!.id : null,
      'type': type.index,
      'isActive': isActive
    };
  }
}
