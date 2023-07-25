import 'package:eatery_db/eatery_db.dart';

part 'dining_table_category.g.dart';

@HiveType(typeId: TypeIndex.diningTableCategory)
class DiningTableCategory extends HiveObject {
  @HiveField(0)
  int? id;
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
      this.isActive = false}): id = EateryDB.instance.diningTableCategoryBox?.nextId();

  DiningTableCategory.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        description = map['description'],
        image = map['image'],
        isActive = map['isActive'] == 1 ? true : false;

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'isActive': isActive ? 1 : 0
    };
  }

  

  static DiningTableCategory fromIterable(Iterable<dynamic> row) {
    return DiningTableCategory.fromMap({ 
      'id': row.elementAt(0),
      'name': row.elementAt(1),
      'description': row.elementAt(2),
      'image': row.elementAt(3),
      'isActive': row.elementAt(4)
    });
  }

  Iterable<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['name'],
      map['description'],
      map['image'],
      map['isActive']
    ];
  }
}
