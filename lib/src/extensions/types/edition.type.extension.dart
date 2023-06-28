import 'package:eatery_db/eatery_db.dart';


extension EditionExtension on Edition {
  String get label {
    switch (this) {
      case Edition.gst:
        return 'GST';
      case Edition.vat:
        return 'VAT';
    }
  }

  String get description {
    switch (this) {
      case Edition.gst:
        return 'Goods and Service Tax';
      case Edition.vat:
        return 'Value Added Tax';
    }
  }
}
