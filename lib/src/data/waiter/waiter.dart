import 'package:eatery_db/eatery_db.dart';

part 'waiter.g.dart';

@HiveType(typeId: TypeIndex.waiter)
class Waiter extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String? photo;
  @HiveField(2)
  String? phone;
  @HiveField(3)
  bool isActive;

  Waiter(
      {required this.name,
      this.photo,
      this.phone,
      required this.isActive});

  Waiter.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        photo = map['photo'],
        phone = map['phone'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'photo': photo,
      'phone': phone,
      'isActive': isActive
    };
  }
}
