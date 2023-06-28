// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubscriptionTypeAdapter extends TypeAdapter<SubscriptionType> {
  @override
  final int typeId = 6;

  @override
  SubscriptionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SubscriptionType.basic;
      case 1:
        return SubscriptionType.professional;
      case 2:
        return SubscriptionType.enterprise;
      default:
        return SubscriptionType.basic;
    }
  }

  @override
  void write(BinaryWriter writer, SubscriptionType obj) {
    switch (obj) {
      case SubscriptionType.basic:
        writer.writeByte(0);
        break;
      case SubscriptionType.professional:
        writer.writeByte(1);
        break;
      case SubscriptionType.enterprise:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubscriptionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
