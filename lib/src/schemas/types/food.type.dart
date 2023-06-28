import 'package:eatery_db/eatery_db.dart';

part 'food.type.auto-generated.dart';

@HiveType(typeId: 62)
enum FoodType {
  @HiveField(0)
  veg,
  @HiveField(1)
  nonVeg,
  @HiveField(2)
  egg,

}
