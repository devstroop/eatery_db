import 'package:eatery_db/eatery_db.dart';

part 'diningTable.g.dart';

@HiveType(typeId: diningTableSchemaIndex)
class DiningTable extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
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
      {
      required this.name,
      this.categoryId,
      this.description,
      this.image,
      this.orderId,
      this.isActive = false}) : companyKey = EateryDB.instance.openedCompany?.key;

  DiningTable.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        name = map['name'],
        categoryId = map['categoryId'],
        description = map['description'],
        image = map['image'],
        orderId = map['orderId'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
      'name': name,
      'categoryId': categoryId,
      'description': description,
      'image': image,
      'orderId': orderId,
      'isActive': isActive
    };
  }
}
