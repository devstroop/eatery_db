import 'package:eatery_db/eatery_db.dart';


extension TaxEditionExtension on TaxEditionType {
  String get label {
    switch (this) {
      case TaxEditionType.gst:
        return 'GST';
      case TaxEditionType.vat:
        return 'VAT';
    }
  }

  String get description {
    switch (this) {
      case TaxEditionType.gst:
        return 'Goods and Service Tax';
      case TaxEditionType.vat:
        return 'Value Added Tax';
    }
  }
}
