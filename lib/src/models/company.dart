import 'package:eatery_db/eatery_db.dart';

part '../adapters/company.g.dart';

@HiveType(typeId: 0)
class Company extends HiveObject {
  @HiveField(0)
  String? logo;
  @HiveField(1)
  String name;
  @HiveField(2)
  String email;
  @HiveField(3)
  String phone;
  @HiveField(4)
  String address;
  @HiveField(5)
  Edition edition; // enum
  @HiveField(6)
  int? currencyId; // id?
  @HiveField(7)
  String? salesTaxNumber;
  @HiveField(8)
  String? foodLicenseNo;
  @HiveField(9)
  int? defaultTaxSlabId; // id?
  @HiveField(10)
  int? subscriptionId; // id?

  Company(
      {
      this.logo,
      required this.name,
      required this.email,
      required this.phone,
      required this.address,
      required this.edition,
      this.currencyId,
      this.defaultTaxSlabId,
      this.foodLicenseNo,
      this.salesTaxNumber,
      this.subscriptionId});

  Company.fromMap(Map<String, dynamic> map)
      : logo = map['logo'],
        name = map['name'],
        email = map['email'],
        phone = map['phone'],
        address = map['address'],
        edition = Edition.values[map['edition']],
        currencyId = map['currencyId'],
        defaultTaxSlabId = map['defaultTaxSlabId'],
        foodLicenseNo = map['foodLicNo'],
        salesTaxNumber = map['taxLicNo'],
        subscriptionId = map['subscriptionId'];

  Map<String, Object?> toMap() {
    return {
      'logo': logo,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'edition': edition.index,
      'currencyId': currencyId,
      'defaultTaxSlabId': defaultTaxSlabId,
      'foodLicNo': foodLicenseNo,
      'taxLicNo': salesTaxNumber,
      'subscriptionId': subscriptionId
    };
  }
}
