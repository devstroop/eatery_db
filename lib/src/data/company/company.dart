import 'package:eatery_db/eatery_db.dart';

part 'company.g.dart';

@HiveType(typeId: TypeIndex.company)
class Company extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? logo;
  @HiveField(2)
  String name;
  @HiveField(3)
  String email;
  @HiveField(4)
  String phone;
  @HiveField(5)
  String address;
  @HiveField(6)
  String password;
  @HiveField(7)
  Edition edition;
  @HiveField(8)
  String? currencyCode;
  @HiveField(9)
  String? salesTaxNumber;
  @HiveField(10)
  String? foodLicenseNo;
  @HiveField(11)
  int? subscriptionId;

  Company(
      {this.logo,
      required this.name,
      required this.email,
      required this.phone,
      required this.address,
      required this.password,
      required this.edition,
      this.currencyCode,
      this.foodLicenseNo,
      this.salesTaxNumber,
      this.subscriptionId})
      : id = 1;

  Company.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        logo = map['logo'],
        name = map['name'],
        email = map['email'],
        phone = map['phone'],
        address = map['address'],
        password = map['password'],
        edition = Edition.values
            .singleWhere((element) => element.id == map['edition']),
        currencyCode = map['currencyCode'],
        foodLicenseNo = map['foodLicNo'],
        salesTaxNumber = map['taxLicNo'],
        subscriptionId = map['subscriptionId'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'logo': logo,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'password': password,
      'edition': edition.id,
      'currencyCode': currencyCode,
      'foodLicNo': foodLicenseNo,
      'taxLicNo': salesTaxNumber,
      'subscriptionId': subscriptionId
    };
  }
// Use this style
// static DiningTableCategory fromIterable(Iterable<dynamic> row) {
//     return DiningTableCategory.fromMap({ 
//       'id': row.elementAt(0),
//       'name': row.elementAt(1),
//       'description': row.elementAt(2),
//       'image': row.elementAt(3),
//       'isActive': row.elementAt(4)
//     });
//   }

//   Iterable<dynamic> toIterable() {
//     return [
//       id,
//       name,
//       description,
//       image,
//       isActive
//     ];
//   }


  static Company fromIterable(Iterable<dynamic> list) {
    return Company.fromMap({
      'id': list.elementAt(0),
      'logo': list.elementAt(1),
      'name': list.elementAt(2),
      'email': list.elementAt(3),
      'phone': list.elementAt(4),
      'address': list.elementAt(5),
      'password': list.elementAt(6),
      'edition': Edition.values
          .singleWhere((element) => element.id == list.elementAt(7)),
      'currencyCode': list.elementAt(8),
      'foodLicNo': list.elementAt(9),
      'taxLicNo': list.elementAt(10),
      'subscriptionId': list.elementAt(11)
    });
  }

  Iterable<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['logo'],
      map['name'],
      map['email'],
      map['phone'],
      map['address'],
      map['password'],
      map['edition'],
      map['currencyCode'],
      map['foodLicNo'],
      map['taxLicNo'],
      map['subscriptionId']
    ];
  }
}
