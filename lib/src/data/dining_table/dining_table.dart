import 'package:eatery_db/eatery_db.dart';

part 'dining_table.g.dart';

@HiveType(typeId: TypeIndex.diningTable)
class DiningTable extends HiveObject {
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
  int? orderId; // id?
  @HiveField(6)
  bool isActive;

  DiningTable(
      {required this.id,
      required this.name,
      this.categoryId,
      this.description,
      this.image,
      this.orderId,
      this.isActive = false});

  DiningTable.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        categoryId = map['categoryId'],
        description = map['description'],
        image = map['image'],
        orderId = map['orderId'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': name,
      'categoryId': categoryId,
      'description': description,
      'image': image,
      'orderId': orderId,
      'isActive': isActive
    };
  }
}
