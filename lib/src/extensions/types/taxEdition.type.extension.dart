import 'package:eatery_db/eatery_db.dart';


extension TaxEditionExtension on TaxEdition {
  String get label {
    switch (this) {
      case TaxEdition.gst:
        return 'GST';
      case TaxEdition.vat:
        return 'VAT';
    }
  }

  String get description {
    switch (this) {
      case TaxEdition.gst:
        return 'Goods and Service Tax';
      case TaxEdition.vat:
        return 'Value Added Tax';
    }
  }
}
