import 'package:eatery_db/eatery_db.dart';

part 'customer.g.dart';

@HiveType(typeId: TypeIndex.customer)
class Customer extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String phone;
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
  @HiveField(8)
  DateTime? lastOrderAt;
  @HiveField(9)
  double outstandingAmount;

  Customer(
      {
      required this.name,
      required this.phone,
      this.address,
      this.landmark,
      this.latitude,
      this.longitude,
      this.isActive = true, this.lastOrderAt}): id = EateryDB.instance.customerBox?.nextId(), outstandingAmount = 0.0;

  Customer.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        phone = map['phone'],
        address = map['address'],
        landmark = map['landmark'],
        latitude = map['latitude'] != null ? double.parse(map['latitude']) : null,
        longitude = map['longitude'] != null ? double.parse(map['longitude']) : null,
        isActive = map['isActive'] == 1 ? true : false,
        lastOrderAt = DateTime.fromMillisecondsSinceEpoch(map['lastOrderAt']),
        outstandingAmount = map['outstandingAmount'] ?? 0.0;

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'address': address,
      'landmark': landmark,
      'latitude': latitude,
      'longitude': longitude,
      'isActive': isActive ? 1 : 0,
      'lastOrderAt': lastOrderAt?.millisecondsSinceEpoch,
      'outstandingAmount': outstandingAmount
    };
  }


  static Customer fromIterable(Iterable<dynamic> list) {
    return Customer.fromMap({
      'id': list.elementAt(0),
      'name': list.elementAt(1),
      'phone': list.elementAt(2),
      'address': list.elementAt(3),
      'landmark': list.elementAt(4),
      'latitude': list.elementAt(5),
      'longitude': list.elementAt(6),
      'isActive': list.elementAt(7),
      'lastOrderAt': list.elementAt(8),
      'outstandingAmount': list.elementAt(9)
    });
  }

  Iterable<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['name'],
      map['phone'],
      map['address'],
      map['landmark'],
      map['latitude'],
      map['longitude'],
      map['isActive'],
      map['lastOrderAt'],
      map['outstandingAmount']
    ];
  }
}
