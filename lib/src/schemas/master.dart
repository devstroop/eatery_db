import 'package:eatery_db/eatery_db.dart';

part 'master.g.dart';

@HiveType(typeId: masterSchemaIndex)
class Master {
  @HiveField(0)
  String name;
  @HiveField(1)
  String? phone;
  @HiveField(2)
  String? email;
  @HiveField(3)
  String? address;
  @HiveField(4)
  String? landmark;
  @HiveField(5)
  double? latitude;
  @HiveField(6)
  double? longitude;
  @HiveField(7)
  bool isActive;

  Master(
      {required this.name,
      this.phone,
      this.email,
      this.address,
      this.landmark,
      this.latitude,
      this.longitude,
      this.isActive = false});

  Master.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        phone = map['phone'],
        email = map['email'],
        address = map['address'],
        landmark = map['landmark'],
        latitude = map['latitude'],
        longitude = map['longitude'],
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
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
