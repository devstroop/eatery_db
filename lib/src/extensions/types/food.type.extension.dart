import 'package:eatery_db/eatery_db.dart';


extension FoodTypeExtension on FoodType {

  String get label {
    switch (this) {
      case FoodType.veg:
        return 'Veg';
      case FoodType.nonVeg:
        return 'Non-veg';
      case FoodType.egg:
        return 'Egg';
      case FoodType.vegan:
        return 'Vegan';
    }
  }

  String get description {
    switch (this) {
      case FoodType.veg:
        return 'contains vegetables, fruits, grains, nuts, etc.';
      case FoodType.nonVeg:
        return 'contains meat, poultry, fish, etc.';
      case FoodType.egg:
        return 'contains eggs.';
      case FoodType.vegan:
        return 'contains only plant based diets.';
    }
  }

  int get color {
    switch (this) {
      case FoodType.veg:
        return 0xFF43A047;
      case FoodType.nonVeg:
        return 0xFFE53935;
      case FoodType.egg:
        return 0xFFFB8C00;
      case FoodType.vegan:
        return 0xFF1E88E5;
    }
  }
}
