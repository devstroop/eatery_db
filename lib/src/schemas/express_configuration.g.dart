// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'express_configuration.dart';

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
      printInvoice: fields[0] as bool,
      printKot: fields[1] as bool,
      sendPaymentLink: fields[2] as bool,
      sendConfirmation: fields[3] as bool,
      enabled: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ExpressConfiguration obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.printInvoice)
      ..writeByte(1)
      ..write(obj.printKot)
      ..writeByte(2)
      ..write(obj.sendPaymentLink)
      ..writeByte(3)
      ..write(obj.sendConfirmation)
      ..writeByte(4)
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
