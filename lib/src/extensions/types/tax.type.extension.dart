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
        return 'Included in the price';
      case TaxType.exclusive:
        return 'Not included in the price';
      default:
        return null;
    }
  }
}
