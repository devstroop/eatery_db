import 'package:eatery_db/eatery_db.dart';

part 'dining_table_status.g.dart';

@HiveType(typeId: TypeIndex.diningTableStatus)
enum DiningTableStatus {
  @HiveField(0)
  available,
  @HiveField(1)
  occupied,
  @HiveField(2)
  reserved,
  @HiveField(3)
  inactive
}

extension DiningTableStatusExtension on DiningTableStatus {
  String get name {
    switch (this) {
      case DiningTableStatus.available:
        return 'Available';
      case DiningTableStatus.occupied:
        return 'Occupied';
      case DiningTableStatus.reserved:
        return 'Reserved';
      case DiningTableStatus.inactive:
        return 'Inactive';
    }
  }

  String get shortName {
    switch (this) {
      case DiningTableStatus.available:
        return 'A';
      case DiningTableStatus.occupied:
        return 'O';
      case DiningTableStatus.reserved:
        return 'R';
      case DiningTableStatus.inactive:
        return 'I';
    }
  }

  Color get color {
    switch (this) {
      case DiningTableStatus.available:
        return Colors.green;
      case DiningTableStatus.occupied:
        return Colors.red;
      case DiningTableStatus.reserved:
        return Colors.orange;
      case DiningTableStatus.inactive:
        return Colors.grey;
    }
  }
}
