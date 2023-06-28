import 'package:eatery_db/eatery_db.dart';
part '../adapters/edition.type.g.dart';

@HiveType(typeId: 2)
enum Edition {
  @HiveField(0, defaultValue: true)
  gst,
  @HiveField(1)
  vat
}

extension NatureOfTaxExtension on Edition {
  int get id {
    switch (this) {
      case Edition.gst:
        return 0;
      case Edition.vat:
        return 1;
    }
  }

  String get name {
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
