import 'package:eatery_db/eatery_db.dart';

part 'master.g.dart';

@HiveType(typeId: 106)
class Master {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  String name;
  @HiveField(2)
  String? phone;
  @HiveField(3)
  String? email;
  @HiveField(4)
  String? address;
  @HiveField(5)
  String? landmark;
  @HiveField(6)
  double? latitude;
  @HiveField(7)
  double? longitude;
  @HiveField(8)
  bool isActive;

  Master(
      {
      required this.name,
      this.phone,
      this.email,
      this.address,
      this.landmark,
      this.latitude,
      this.longitude,
      this.isActive = false}) : companyKey = EateryDB.instance.openedCompany?.key;

  Master.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        name = map['name'],
        phone = map['phone'],
        email = map['email'],
        address = map['address'],
        landmark = map['landmark'],
        latitude = map['latitude'],
        longitude = map['longitude'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
      'name': name,
      'phone': phone,
      'email': email,
      'address': address,
      'landmark': landmark,
      'latitude': latitude,
      'longitude': longitude,
      'isActive': isActive
    };
  }
}
