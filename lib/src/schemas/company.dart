import 'package:eatery_db/eatery_db.dart';

part 'company.g.dart';

@HiveType(typeId: 101)
class Company extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String? logo;
  @HiveField(2)
  String email;
  @HiveField(3)
  String phone;
  @HiveField(4)
  String address;
  @HiveField(5)
  TaxEdition edition; // enum
  @HiveField(6)
  String? salesTaxNumber;
  @HiveField(7)
  String? foodLicenseNo;
  @HiveField(8)
  int? defaultCurrencyKey; // id?
  @HiveField(9)
  int? defaultTaxSlabKey; // id?
  @HiveField(10)
  int? activeSubscriptionKey; // id?

  Company(
      {
        required this.name,
      this.logo,
      required this.email,
      required this.phone,
      required this.address,
      required this.edition,
      this.defaultCurrencyKey,
      this.defaultTaxSlabKey,
      this.foodLicenseNo,
      this.salesTaxNumber,
      this.activeSubscriptionKey});

  Company.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        logo = map['logo'],
        email = map['email'],
        phone = map['phone'],
        address = map['address'],
        edition = TaxEdition.values[map['edition']],
        defaultCurrencyKey = map['defaultCurrencyKey'],
        defaultTaxSlabKey = map['defaultTaxSlabKey'],
        foodLicenseNo = map['foodLicNo'],
        salesTaxNumber = map['taxLicNo'],
        activeSubscriptionKey = map['activeSubscriptionKey'];

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'logo': logo,
      'email': email,
      'phone': phone,
      'address': address,
      'edition': edition.index,
      'defaultCurrencyKey': defaultCurrencyKey,
      'defaultTaxSlabKey': defaultTaxSlabKey,
      'foodLicNo': foodLicenseNo,
      'taxLicNo': salesTaxNumber,
      'activeSubscriptionKey': activeSubscriptionKey
    };
  }
}
