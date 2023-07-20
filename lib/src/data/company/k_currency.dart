import 'package:eatery_db/eatery_db.dart';

part 'k_currency.g.dart';

@HiveType(typeId: TypeIndex.currency)
class kCurrency extends HiveObject {
  @HiveField(0)
  String code;
  @HiveField(1)
  String name;
  @HiveField(2)
  String symbol;
  @HiveField(3)
  String? flag;
  @HiveField(4)
  int number;
  @HiveField(5)
  int decimalDigits;
  @HiveField(6)
  String namePlural;
  @HiveField(7)
  String decimalSeparator;
  @HiveField(98)
  String thousandsSeparator;
  @HiveField(9)
  bool symbolOnLeft;
  @HiveField(10)
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
  });

  kCurrency.fromMap(Map<String, dynamic> map)
      : name = map['name'],
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
