import 'package:eatery_db/eatery_db.dart';

part 'food.type.g.dart';

@HiveType(typeId: foodTypeSchemaIndex)
enum FoodType {
  @HiveField(0)
  veg,
  @HiveField(1)
  nonVeg,
  @HiveField(2)
  egg,
  @HiveField(3)
  vegan,
}
