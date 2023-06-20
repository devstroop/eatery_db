import 'package:eatery_db/eatery_db.dart';

part 'product.g.dart';

@HiveType(typeId: 60)
class Product extends HiveObject {
  @HiveField(0)
  int id;
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
      {required this.id,
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
      : id = map['_id'],
        name = map['name'],
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
      '_id': id,
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
