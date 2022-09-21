import 'package:hive/hive.dart';

part 'waiter.g.dart';

@HiveType(typeId: 90)
class Waiter extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String? photo;
  @HiveField(3)
  String? phone;
  @HiveField(4)
  int? age;
  @HiveField(5)
  bool isActive;

  Waiter(
      {this.id,
      required this.name,
      this.photo,
      this.phone,
      this.age,
      required this.isActive});

  Waiter.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        photo = map['photo'],
        phone = map['phone'],
        age = map['age'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': name,
      'photo': photo,
      'phone': phone,
      'age': age,
      'isActive': isActive
    };
  }
}
