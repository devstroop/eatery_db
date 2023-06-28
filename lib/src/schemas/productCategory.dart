import 'package:eatery_db/eatery_db.dart';

part 'productCategory.g.dart';

@HiveType(typeId: 61)
class ProductCategory extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? image;

  ProductCategory(
      {required this.id, required this.name, this.description, this.image});

  ProductCategory.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        description = map['description'],
        image = map['image'];

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': name,
      'description': description,
      'image': image
    };
  }
}
