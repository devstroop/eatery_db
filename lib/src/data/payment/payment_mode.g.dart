// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_mode.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaymentModeAdapter extends TypeAdapter<PaymentMode> {
  @override
  final int typeId = 22;

  @override
  PaymentMode read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PaymentMode.cash;
      case 1:
        return PaymentMode.card;
      case 2:
        return PaymentMode.upi;
      case 3:
        return PaymentMode.wallet;
      case 4:
        return PaymentMode.other;
      default:
        return PaymentMode.cash;
    }
  }

  @override
  void write(BinaryWriter writer, PaymentMode obj) {
    switch (obj) {
      case PaymentMode.cash:
        writer.writeByte(0);
        break;
      case PaymentMode.card:
        writer.writeByte(1);
        break;
      case PaymentMode.upi:
        writer.writeByte(2);
        break;
      case PaymentMode.wallet:
        writer.writeByte(3);
        break;
      case PaymentMode.other:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentModeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
