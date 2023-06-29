import 'package:eatery_db/eatery_db.dart';

part 'product.g.dart';

@HiveType(typeId: productSchemaIndex)
class Product extends HiveObject {
  @HiveField(0)
  String? barCode;
  @HiveField(1)
  String? qrCode;
  @HiveField(2)
  List<String> tags;
  @HiveField(3)
  String name;
  @HiveField(4)
  int? categoryId; // id?
  @HiveField(5)
  String? description;
  @HiveField(6)
  String? image;
  @HiveField(7)
  double mrpPrice;
  @HiveField(8)
  double? salePrice;
  @HiveField(9)
  int? taxSlabId; // id?
  @HiveField(10)
  FoodType? foodType; // enum?
  @HiveField(11)
  ProductType type; // enum
  @HiveField(12)
  bool isActive;

  Product(
      {this.barCode,
      this.qrCode,
      this.tags = const [],
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
      : barCode = map['barCode'],
        qrCode = map['qrCode'],
        tags = List<String>.from(map['tags']),
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
      'barCode': barCode,
      'qrCode': qrCode,
      'tags': tags,
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
