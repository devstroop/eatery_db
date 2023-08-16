// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubscriptionTypeAdapter extends TypeAdapter<SubscriptionType> {
  @override
  final int typeId = 13;

  @override
  SubscriptionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SubscriptionType.individual;
      case 1:
        return SubscriptionType.business;
      default:
        return SubscriptionType.individual;
    }
  }

  @override
  void write(BinaryWriter writer, SubscriptionType obj) {
    switch (obj) {
      case SubscriptionType.individual:
        writer.writeByte(0);
        break;
      case SubscriptionType.business:
        writer.writeByte(1);
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
