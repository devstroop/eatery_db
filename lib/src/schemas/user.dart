import 'package:eatery_db/eatery_db.dart';
part 'user.g.dart';

@HiveType(typeId: userSchemaIndex)
class User extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  UserType type;
  @HiveField(2)
  String username;
  @HiveField(3)
  String fullName;
  @HiveField(4)
  String? image;
  @HiveField(5)
  String? phone;
  @HiveField(6)
  String? email;
  @HiveField(7)
  String? passHash;
  @HiveField(8)
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
      required this.isActive}) : companyKey = EateryDB.instance.openedCompany?.key;

  User.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        type = UserType.values[map['type']],
        username = map['username'],
        fullName = map['fullName'],
        image = map['image'],
        phone = map['phone'],
        email = map['email'],
        passHash = map['passHash'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
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
