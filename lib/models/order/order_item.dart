import 'package:hive/hive.dart';

import '../product/food_type.dart';
import '../tax/tax_slab.dart';

part 'order_item.g.dart';

@HiveType(typeId: 41)
class OrderItem extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? image;
  @HiveField(4)
  double? mrpPrice;
  @HiveField(5)
  double? salePrice;
  @HiveField(6)
  TaxSlab? taxSlab; // model?
  @HiveField(7)
  FoodType foodType; // enum

  OrderItem(
      {this.id,
      required this.name,
      this.description,
      this.image,
      this.mrpPrice,
      this.salePrice,
      this.taxSlab,
      required this.foodType});

  OrderItem.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        description = map['description'],
        image = map['image'],
        mrpPrice = map['mrpPrice'],
        salePrice = map['salePrice'],
        taxSlab = TaxSlab.fromMap(map['taxSlab']),
        foodType = FoodType.values
            .singleWhere((element) => element.id == map['foodType']);

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': name,
      'description': description,
      'image': image,
      'mrpPrice': mrpPrice,
      'salePrice': salePrice,
      'taxSlab': taxSlab != null ? taxSlab!.toMap() : null,
      'foodType': foodType.id
    };
  }
}
