import 'package:eatery_db/eatery_db.dart';

part 'waiter.g.dart';

@HiveType(typeId: TypeIndex.waiter)
class Waiter extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String? photo;
  @HiveField(3)
  String? phone;
  @HiveField(4)
  bool isActive;

  Waiter(
      {required this.id,
      required this.name,
      this.photo,
      this.phone,
      required this.isActive});

  Waiter.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        photo = map['photo'],
        phone = map['phone'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': name,
      'photo': photo,
      'phone': phone,
      'isActive': isActive
    };
  }
}
