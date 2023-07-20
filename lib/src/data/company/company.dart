import 'package:eatery_db/eatery_db.dart';

part 'company.g.dart';

@HiveType(typeId: TypeIndex.company)
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
  String password;
  @HiveField(6)
  Edition edition; // enum
  @HiveField(7)
  int? currencyId; // id?
  @HiveField(8)
  String? salesTaxNumber;
  @HiveField(9)
  String? foodLicenseNo;
  @HiveField(10)
  int? defaultTaxSlabId; // id?
  @HiveField(11)
  int? subscriptionId; // id?

  Company(
      {
      this.logo,
      required this.name,
      required this.email,
      required this.phone,
      required this.address,
      required this.password,
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
        password = map['password'],
        edition = Edition.values
            .singleWhere((element) => element.id == map['edition']),
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
      'password': password,
      'edition': edition.id,
      'currencyId': currencyId,
      'defaultTaxSlabId': defaultTaxSlabId,
      'foodLicNo': foodLicenseNo,
      'taxLicNo': salesTaxNumber,
      'subscriptionId': subscriptionId
    };
  }
}
