import '../subscription/subscription.dart';
import '../tax/tax_slab.dart';
import 'k_currency.dart';
import 'edition.dart';
import 'package:hive/hive.dart';

part 'company.g.dart';

@HiveType(typeId: 0)
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
  Edition edition; // enum
  @HiveField(8)
  kCurrency currency; // model
  @HiveField(9)
  String? salesTaxNumber;
  @HiveField(10)
  String? foodLicenseNo;
  @HiveField(11)
  TaxSlab? defaultTaxSlab; // model?
  @HiveField(12)
  Subscription? subscription; // model?

  Company(
      {this.id,
      this.logo,
      required this.name,
      required this.email,
      required this.phone,
      required this.address,
      required this.password,
      required this.edition,
      required this.currency,
      this.defaultTaxSlab,
      this.foodLicenseNo,
      this.salesTaxNumber,
      this.subscription});

  Company.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        logo = map['logo'],
        name = map['name'],
        email = map['email'],
        phone = map['phone'],
        address = map['address'],
        password = map['password'],
        edition = Edition.values
            .singleWhere((element) => element.id == map['edition']),
        currency = kCurrency.fromMap(map['currency']),
        defaultTaxSlab = TaxSlab.fromMap(map['defaultTaxSlab']),
        foodLicenseNo = map['foodLicNo'],
        salesTaxNumber = map['taxLicNo'],
        subscription = Subscription.fromMap(map['subscription']);

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'logo': logo,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'password': password,
      'edition': edition.id,
      'currency': currency.toMap(),
      'defaultTaxSlab': defaultTaxSlab != null ? defaultTaxSlab!.toMap() : null,
      'foodLicNo': foodLicenseNo,
      'taxLicNo': salesTaxNumber,
      'subscription': subscription != null ? subscription!.toMap() : null
    };
  }
}
