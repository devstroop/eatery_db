import 'package:eatery_db/eatery_db.dart';

part 'k_currency.g.dart';

@HiveType(typeId: TypeIndex.currency)
class KCurrency extends HiveObject {
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
  @HiveField(8)
  String thousandsSeparator;
  @HiveField(9)
  bool symbolOnLeft;
  @HiveField(10)
  bool spaceBetweenAmountAndSymbol;

  KCurrency({
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

  KCurrency.fromMap(Map<String, dynamic> map)
      : code = map['code'],
        name = map['name'],
        symbol = map['symbol'],
        number = map['number'],
        flag = map['flag'],
        decimalDigits = map['decimal_digits'],
        namePlural = map['name_plural'],
        symbolOnLeft = map['symbol_on_left'],
        decimalSeparator = map['decimal_separator'],
        thousandsSeparator = map['thousands_separator'],
        spaceBetweenAmountAndSymbol = map['space_between_amount_and_symbol'];

  Map<String, Object?> toMap() {
    return {
      'code': code,
      'name': name,
      'symbol': symbol,
      'number': number,
      'flag': flag,
      'decimal_digits': decimalDigits,
      'name_plural': namePlural,
      'symbol_on_left': symbolOnLeft,
      'decimal_separator': decimalSeparator,
      'thousands_separator': thousandsSeparator,
      'space_between_amount_and_symbol': spaceBetweenAmountAndSymbol
    };
  }
}
