import 'package:eatery_db/eatery_db.dart';
part 'user.g.dart';

@HiveType(typeId: 90)
class User extends HiveObject {
  @HiveField(0)
  UserType type;
  @HiveField(1)
  String username;
  @HiveField(2)
  String fullName;
  @HiveField(3)
  String? image;
  @HiveField(4)
  String? phone;
  @HiveField(5)
  String? email;
  @HiveField(6)
  String? passHash;
  @HiveField(7)
  bool isActive;

  User(
      {
        required this.type,
      required this.username,
      required this.fullName,
      this.image,
      this.phone,
      this.email,
      this.passHash,
      required this.isActive});

  User.fromMap(Map<String, dynamic> map)
      : type = UserType.values[map['type']],
        username = map['username'],
        fullName = map['fullName'],
        image = map['image'],
        phone = map['phone'],
        email = map['email'],
        passHash = map['passHash'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'type': type.index,
      'username': username,
      'fullName': fullName,
      'image': image,
      'phone': phone,
      'email': email,
      'passHash': passHash,
      'isActive': isActive
    };
  }
}
