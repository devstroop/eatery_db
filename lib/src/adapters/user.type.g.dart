// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../types/user.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserTypeAdapter extends TypeAdapter<UserType> {
  @override
  final int typeId = 71;

  @override
  UserType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UserType.admin;
      case 1:
        return UserType.manager;
      case 2:
        return UserType.cashierOrAccountant;
      case 3:
        return UserType.chefOrCook;
      case 4:
        return UserType.barTender;
      case 5:
        return UserType.deliveryPerson;
      case 6:
        return UserType.dishWasherOrCleanerOrHelper;
      case 7:
        return UserType.other;
      default:
        return UserType.admin;
    }
  }

  @override
  void write(BinaryWriter writer, UserType obj) {
    switch (obj) {
      case UserType.admin:
        writer.writeByte(0);
        break;
      case UserType.manager:
        writer.writeByte(1);
        break;
      case UserType.cashierOrAccountant:
        writer.writeByte(2);
        break;
      case UserType.chefOrCook:
        writer.writeByte(3);
        break;
      case UserType.barTender:
        writer.writeByte(4);
        break;
      case UserType.deliveryPerson:
        writer.writeByte(5);
        break;
      case UserType.dishWasherOrCleanerOrHelper:
        writer.writeByte(6);
        break;
      case UserType.other:
        writer.writeByte(7);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
