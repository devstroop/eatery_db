import 'package:eatery_db/eatery_db.dart';

part 'dining_table_category.g.dart';

@HiveType(typeId: 31)
class DiningTableCategory extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? image;
  @HiveField(4)
  bool isActive;

  DiningTableCategory(
      {required this.id,
      required this.name,
      this.description,
      this.image,
      this.isActive = false});

  DiningTableCategory.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        description = map['description'],
        image = map['image'],
        isActive = map['isActive'] == 1 ? true : false;

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': name,
      'description': description,
      'image': image,
      'isActive': isActive ? 1 : 0
    };
  }
}
