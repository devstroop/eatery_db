import 'package:eatery_db/eatery_db.dart';

part 'dining_table.g.dart';

@HiveType(typeId: diningTableSchemaIndex)
class DiningTable extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  int? categoryId; // id?
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? image;
  @HiveField(4)
  int? voucherKey; // id?
  @HiveField(5)
  bool isActive;

  DiningTable(
      {required this.name,
      this.categoryId,
      this.description,
      this.image,
      this.voucherKey,
      this.isActive = false});

  DiningTable.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        categoryId = map['categoryId'],
        description = map['description'],
        image = map['image'],
        voucherKey = map['orderId'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'categoryId': categoryId,
      'description': description,
      'image': image,
      'orderId': voucherKey,
      'isActive': isActive
    };
  }
}
