// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expressConfiguration.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExpressConfigurationAdapter extends TypeAdapter<ExpressConfiguration> {
  @override
  final int typeId = 103;

  @override
  ExpressConfiguration read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExpressConfiguration(
      printInvoice: fields[1] as bool,
      printKot: fields[2] as bool,
      sendPaymentLink: fields[3] as bool,
      sendConfirmation: fields[4] as bool,
      enabled: fields[5] as bool,
    )..companyKey = fields[0] as int;
  }

  @override
  void write(BinaryWriter writer, ExpressConfiguration obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.companyKey)
      ..writeByte(1)
      ..write(obj.printInvoice)
      ..writeByte(2)
      ..write(obj.printKot)
      ..writeByte(3)
      ..write(obj.sendPaymentLink)
      ..writeByte(4)
      ..write(obj.sendConfirmation)
      ..writeByte(5)
      ..write(obj.enabled);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExpressConfigurationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
