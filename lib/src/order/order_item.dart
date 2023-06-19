import 'package:eatery_db/eatery_db.dart';

part 'order_item.g.dart';

@HiveType(typeId: 41)
class OrderItem extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  int orderId;
  @HiveField(2)
  String name;
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
  FoodType foodType; // enum

  OrderItem(
      {required this.id,
      required this.orderId,
      required this.name,
      this.description,
      this.image,
      this.mrpPrice,
      this.salePrice,
      this.taxSlab,
      required this.foodType});

  OrderItem.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        orderId = map['orderId'],
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
      'orderId': orderId,
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
