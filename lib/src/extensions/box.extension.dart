import 'package:eatery_db/eatery_db.dart';

extension BoxExtension<T> on Box<T> {
  /// Returns the next available identity in this box. The returned identity
  /// is guaranteed to be unique.
  int nextId() {
    Iterable<T> table = values;
    int identity = 1;
    while (table
        .where((element) => (element as dynamic).sku == identity)
        .isNotEmpty) {
      identity++;
    }
    return identity;
  }
}
