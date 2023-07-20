import 'package:eatery_db/eatery_db.dart';

part 'product_category.g.dart';

@HiveType(typeId: TypeIndex.productCategory)
class ProductCategory extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String? description;
  @HiveField(2)
  String? image;

  ProductCategory(
      {required this.name, this.description, this.image});

  ProductCategory.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        description = map['description'],
        image = map['image'];

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'description': description,
      'image': image
    };
  }
}
