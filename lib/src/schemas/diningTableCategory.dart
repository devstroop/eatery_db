import 'package:eatery_db/eatery_db.dart';

part 'diningTableCategory.g.dart';

@HiveType(typeId: 103)
class DiningTableCategory extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  String name;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? image;
  @HiveField(4)
  bool isActive;

  DiningTableCategory(
      {
      required this.name,
      this.description,
      this.image,
      this.isActive = false}) : companyKey = EateryDB.instance.openedCompany?.key;

  DiningTableCategory.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        name = map['name'],
        description = map['description'],
        image = map['image'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
      'name': name,
      'description': description,
      'image': image,
      'isActive': isActive
    };
  }
}
