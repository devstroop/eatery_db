import 'package:eatery_db/eatery_db.dart';
part 'user.auto-generated.dart';

@HiveType(typeId: 90)
class User extends HiveObject {
  @HiveField(0)
  UserType type;
  @HiveField(1)
  String name;
  @HiveField(2)
  String? image;
  @HiveField(3)
  String? phone;
  @HiveField(4)
  String? email;
  @HiveField(5)
  String? passHash;
  @HiveField(6)
  bool isActive;

  User(
      {
        required this.type,
      required this.name,
      this.image,
      this.phone,
      this.email,
      this.passHash,
      required this.isActive});

  User.fromMap(Map<String, dynamic> map)
      : type = UserType.values[map['type']],
        name = map['name'],
        image = map['image'],
        phone = map['phone'],
        email = map['email'],
        passHash = map['passHash'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'type': type.index,
      'name': name,
      'image': image,
      'phone': phone,
      'email': email,
      'passHash': passHash,
      'isActive': isActive
    };
  }
}
