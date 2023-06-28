import 'package:eatery_db/eatery_db.dart';

part 'productCategory.g.dart';

@HiveType(typeId: 109)
class ProductCategory extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  String name;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? image;

  ProductCategory(
      {required this.name, this.description, this.image}) : companyKey = EateryDB.instance.openedCompany?.key;

  ProductCategory.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        name = map['name'],
        description = map['description'],
        image = map['image'];

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
      'name': name,
      'description': description,
      'image': image
    };
  }
}
