import 'package:hive/hive.dart';

import '../tax/tax_slab.dart';
import 'food_type.dart';
import 'product_category.dart';
import 'product_type.dart';

part 'product.g.dart';

@HiveType(typeId: 60)
class Product extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String name;
  @HiveField(2)
  ProductCategory? category; // model?
  @HiveField(3)
  String? description;
  @HiveField(4)
  String? image;
  @HiveField(5)
  double? mrpPrice;
  @HiveField(6)
  double? salePrice;
  @HiveField(7)
  TaxSlab? taxSlab; // model?
  @HiveField(8)
  FoodType? foodType; // enum?
  @HiveField(9)
  ProductType type; // enum
  @HiveField(10)
  bool isActive;

  Product(
      {this.id,
      required this.name,
      this.category,
      this.description,
      this.image,
      this.mrpPrice,
      this.salePrice,
      this.taxSlab,
      this.foodType,
      required this.type,
      required this.isActive});

  Product.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        category = ProductCategory.fromMap(map['category']),
        description = map['description'],
        image = map['image'],
        mrpPrice = map['mrpPrice'],
        salePrice = map['salePrice'],
        taxSlab = TaxSlab.fromMap(map['taxSlab']),
        foodType = FoodType.values
            .singleWhere((element) => element.id == map['foodType']),
        type = ProductType.values
            .singleWhere((element) => element.id == map['type']),
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': name,
      'category': category != null ? category!.toMap() : null,
      'description': description,
      'image': image,
      'mrpPrice': mrpPrice,
      'salePrice': salePrice,
      'taxSlab': taxSlab != null ? taxSlab!.toMap() : null,
      'foodType': foodType != null ? foodType!.id : null,
      'type': type.id,
      'isActive': isActive
    };
  }
}
