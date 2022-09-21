// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FoodTypeAdapter extends TypeAdapter<FoodType> {
  @override
  final int typeId = 62;

  @override
  FoodType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return FoodType.veg;
      case 1:
        return FoodType.nonVeg;
      default:
        return FoodType.veg;
    }
  }

  @override
  void write(BinaryWriter writer, FoodType obj) {
    switch (obj) {
      case FoodType.veg:
        writer.writeByte(0);
        break;
      case FoodType.nonVeg:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
