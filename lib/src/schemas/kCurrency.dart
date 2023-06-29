import 'package:eatery_db/eatery_db.dart';

part 'kCurrency.g.dart';

@HiveType(typeId: kCurrencySchemaIndex)
class kCurrency extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  String code;
  @HiveField(2)
  String name;
  @HiveField(3)
  String symbol;
  @HiveField(4)
  String? flag;
  @HiveField(5)
  int number;
  @HiveField(6)
  int decimalDigits;
  @HiveField(7)
  String namePlural;
  @HiveField(8)
  String decimalSeparator;
  @HiveField(9)
  String thousandsSeparator;
  @HiveField(10)
  bool symbolOnLeft;
  @HiveField(11)
  bool spaceBetweenAmountAndSymbol;

  kCurrency({
    required this.name,
    required this.code,
    required this.symbol,
    required this.flag,
    required this.number,
    required this.decimalDigits,
    required this.namePlural,
    required this.decimalSeparator,
    required this.thousandsSeparator,
    required this.symbolOnLeft,
    required this.spaceBetweenAmountAndSymbol,
  }) : companyKey = EateryDB.instance.openedCompany?.key;

  kCurrency.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        name = map['name'],
        code = map['code'],
        symbol = map['symbol'],
        flag = map['flag'],
        number = map['number'],
        decimalDigits = map['decimalDigits'],
        namePlural = map['namePlural'],
        decimalSeparator = map['decimalSeparator'],
        thousandsSeparator = map['thousandsSeparator'],
        symbolOnLeft = map['symbolOnLeft'],
        spaceBetweenAmountAndSymbol = map['spaceBetweenAmountAndSymbol'];

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
      'name': name,
      'code': code,
      'symbol': symbol,
      'flag': flag,
      'number': number,
      'decimalDigits': decimalDigits,
      'namePlural': namePlural,
      'decimalSeparator': decimalSeparator,
      'thousandsSeparator': thousandsSeparator,
      'symbolOnLeft': symbolOnLeft,
      'spaceBetweenAmountAndSymbol': spaceBetweenAmountAndSymbol
    };
  }
}
