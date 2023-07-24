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
}
