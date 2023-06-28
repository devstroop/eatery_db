import 'package:eatery_db/eatery_db.dart';
import 'package:flutter/material.dart';

part '../adapters/food.type.g.dart';

@HiveType(typeId: 62)
enum FoodType {
  @HiveField(0, defaultValue: true)
  veg,
  @HiveField(1)
  nonVeg
}

extension EditionExtension on FoodType {

  String get name {
    switch (this) {
      case FoodType.veg:
        return 'Veg';
      case FoodType.nonVeg:
        return 'Non-veg';
    }
  }

  String get description {
    switch (this) {
      case FoodType.veg:
        return 'Veg food includes all plant based diets like fruits, vegetables, etc.';
      case FoodType.nonVeg:
        return 'Non-veg food contains meat and sometimes, eggs.';
    }
  }

  Color get color {
    switch (this) {
      case FoodType.veg:
        return const Color(0xFF43A047);
      case FoodType.nonVeg:
        return const Color(0xFFE53935);
    }
  }
}
