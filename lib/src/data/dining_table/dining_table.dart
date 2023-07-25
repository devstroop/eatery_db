import 'package:eatery_db/eatery_db.dart';

part 'dining_table.g.dart';

@HiveType(typeId: TypeIndex.diningTable)
class DiningTable extends HiveObject {
  @HiveField(0)
  int? id;
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
      {required this.name,
      this.categoryId,
      this.description,
      this.image,
      this.orderId,
      this.isActive = false})
      : id = EateryDB.instance.diningTableBox?.nextId();

  DiningTable.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        categoryId = map['categoryId'],
        description = map['description'],
        image = map['image'],
        orderId = map['orderId'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'categoryId': categoryId,
      'description': description,
      'image': image,
      'orderId': orderId,
      'isActive': isActive
    };
  }

  static DiningTable fromIterable(Iterable<dynamic> row) {
    return DiningTable.fromMap({
      'id': row.elementAt(0),
      'name': row.elementAt(1),
      'categoryId': row.elementAt(2),
      'description': row.elementAt(3),
      'image': row.elementAt(4),
      'orderId': row.elementAt(5),
      'isActive': row.elementAt(6)
    });
  }

  List<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['name'],
      map['categoryId'],
      map['description'],
      map['image'],
      map['orderId'],
      map['isActive']
    ];
  }
}
