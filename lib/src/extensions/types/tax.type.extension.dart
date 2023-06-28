import 'package:eatery_db/eatery_db.dart';

extension TaxTypeExtension on TaxType {

  String? get name {
    switch (this) {
      case TaxType.inclusive:
        return "Inclusive";
      case TaxType.exclusive:
        return "Exclusive";
      default:
        return null;
    }
  }

  String? get description {
    switch (this) {
      case TaxType.inclusive:
        return 'Tax included in price';
      case TaxType.exclusive:
        return 'Tax not included in price';
      default:
        return null;
    }
  }
}
