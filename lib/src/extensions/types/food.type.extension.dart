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
    }
  }

  String get description {
    switch (this) {
      case FoodType.veg:
        return 'Veg food includes all plant based diets like fruits, vegetables, etc.';
      case FoodType.nonVeg:
        return 'Non-veg food contains meat and sometimes, eggs.';
      case FoodType.egg:
        return 'Egg food contains eggs.';
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
    }
  }
}
