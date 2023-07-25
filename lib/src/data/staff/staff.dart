import 'package:eatery_db/eatery_db.dart';

part 'staff.g.dart';

@HiveType(typeId: TypeIndex.staff)
class Staff extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String? photo;
  @HiveField(3)
  String? phone;
  @HiveField(4)
  StaffType type;
  @HiveField(5)
  bool isActive;

  Staff(
      {
      required this.name,
      this.photo,
      this.phone,
      required this.type,
      required this.isActive}) : id = EateryDB.instance.staffBox?.nextId();

  Staff.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        photo = map['photo'],
        phone = map['phone'],
        type = StaffType.values.singleWhere((element) => element.id == map['type']),
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'photo': photo,
      'phone': phone,
      'type': type.id,
      'isActive': isActive
    };
  }

  static Staff fromIterable(Iterable<dynamic> row) {
    return Staff.fromMap({
      'id': row.elementAt(0),
      'name': row.elementAt(1),
      'photo': row.elementAt(2),
      'phone': row.elementAt(3),
      'type': row.elementAt(4),
      'isActive': row.elementAt(5)
    }
    );
  }

  List<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['name'],
      map['photo'],
      map['phone'],
      map['type'],
      map['isActive']
    ];
  }
}
