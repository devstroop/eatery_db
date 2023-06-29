import 'package:eatery_db/eatery_db.dart';

part 'dining_table_category.g.dart';

@HiveType(typeId: diningTableCategorySchemaIndex)
class DiningTableCategory extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String? description;
  @HiveField(2)
  String? image;
  @HiveField(3)
  bool isActive;

  DiningTableCategory(
      {required this.name,
      this.description,
      this.image,
      this.isActive = false});

  DiningTableCategory.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        description = map['description'],
        image = map['image'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'description': description,
      'image': image,
      'isActive': isActive
    };
  }
}
