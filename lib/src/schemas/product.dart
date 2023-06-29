import 'package:eatery_db/eatery_db.dart';

part 'product.g.dart';

@HiveType(typeId: productSchemaIndex)
class Product extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  int? sku;
  @HiveField(2)
  String name;
  @HiveField(3)
  int? categoryId; // id?
  @HiveField(4)
  String? description;
  @HiveField(5)
  String? image;
  @HiveField(6)
  double mrpPrice;
  @HiveField(7)
  double? salePrice;
  @HiveField(8)
  int? taxSlabId; // id?
  @HiveField(9)
  FoodType? foodType; // enum?
  @HiveField(10)
  ProductType type; // enum
  @HiveField(11)
  bool isActive;

  Product(
      {this.sku,
      required this.name,
      this.categoryId,
      this.description,
      this.image,
      required this.mrpPrice,
      this.salePrice,
      this.taxSlabId,
      this.foodType,
      required this.type,
      required this.isActive}) : companyKey = EateryDB.instance.openedCompany?.key;

  Product.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        sku = map['sku'],
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
      'companyKey': companyKey,
      'sku': sku,
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
