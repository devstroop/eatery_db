import 'package:eatery_db/eatery_db.dart';

part 'product_category.g.dart';

@HiveType(typeId: TypeIndex.productCategory)
class ProductCategory extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? image;

  ProductCategory(
      {required this.name, this.description, this.image}): id = EateryDB.instance.productCategoryBox?.nextId();

  ProductCategory.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        description = map['description'],
        image = map['image'];

  Map<String, Object?> toMap() {
    return {'id': id, 'name': name, 'description': description, 'image': image};
  }
}
