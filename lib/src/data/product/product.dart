import 'package:eatery_db/eatery_db.dart';

part 'product.g.dart';

@HiveType(typeId: TypeIndex.product)
class Product extends HiveObject {
  @HiveField(0)
  int? id;
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
      {
      required this.name,
      this.categoryId,
      this.description,
      this.image,
      required this.mrpPrice,
      this.salePrice,
      this.taxSlabId,
      this.foodType,
      required this.type,
      required this.isActive}): id = EateryDB.instance.productBox?.nextId();

  Product.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        categoryId = map['categoryId'],
        description = map['description'],
        image = map['image'],
        mrpPrice = map['mrpPrice'],
        salePrice = map['salePrice'],
        taxSlabId = map['taxSlabId'],
        foodType = FoodType.values
            .where((element) => element.id == map['foodType']).firstOrNull,
        type = ProductType.values
            .singleWhere((element) => element.index == map['type']),
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
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

  static Product fromIterable(Iterable<dynamic> iterable) {
    return Product(
      name: iterable.elementAt(1) as String,
      categoryId: iterable.elementAt(2) as int?,
      description: iterable.elementAt(3) as String?,
      image: iterable.elementAt(4) as String?,
      mrpPrice: iterable.elementAt(5) as double,
      salePrice: iterable.elementAt(6) as double?,
      taxSlabId: iterable.elementAt(7) as int?,
      foodType: FoodType.values
          .singleWhere((element) => element.id == iterable.elementAt(8) as int),
      type: ProductType.values
          .singleWhere((element) => element.index == iterable.elementAt(9) as int),
      isActive: iterable.elementAt(10) as bool
    );
  }

  List<dynamic> toIterable(){
    return [
      this.id,
      this.name,
      this.categoryId,
      this.description,
      this.image,
      this.mrpPrice,
      this.salePrice,
      this.taxSlabId,
      this.foodType != null ? this.foodType!.id : null,
      this.type.index,
      this.isActive
    ];
  }
}
