import 'package:eatery_db/eatery_db.dart';

part 'customer.g.dart';

@HiveType(typeId: TypeIndex.customer)
class Customer {
  @HiveField(0)
  int? id;
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

  Customer(
      {
      required this.name,
      this.phone,
      this.email,
      this.address,
      this.landmark,
      this.latitude,
      this.longitude,
      this.isActive = false}): id = EateryDB.instance.customerBox?.nextId();

  Customer.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        phone = map['phone'],
        email = map['email'],
        address = map['address'],
        landmark = map['landmark'],
        latitude = map['latitude'],
        longitude = map['longitude'],
        isActive = map['isActive'] == 1 ? true : false;

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'address': address,
      'landmark': landmark,
      'latitude': latitude,
      'longitude': longitude,
      'isActive': isActive ? 1 : 0
    };
  }


  static Customer fromIterable(Iterable<dynamic> list) {
    return Customer.fromMap({
      'id': list.elementAt(0),
      'name': list.elementAt(1),
      'phone': list.elementAt(2),
      'email': list.elementAt(3),
      'address': list.elementAt(4),
      'landmark': list.elementAt(5),
      'latitude': list.elementAt(6),
      'longitude': list.elementAt(7),
      'isActive': list.elementAt(8)
    });
  }

  Iterable<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['name'],
      map['phone'],
      map['email'],
      map['address'],
      map['landmark'],
      map['latitude'],
      map['longitude'],
      map['isActive']
    ];
  }
}
