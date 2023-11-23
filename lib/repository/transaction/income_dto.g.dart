// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IncomeDtoImplAdapter extends TypeAdapter<_$IncomeDtoImpl> {
  @override
  final int typeId = 1;

  @override
  _$IncomeDtoImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$IncomeDtoImpl(
      incomeName: fields[3] as String,
      amount: fields[0] as double,
      date: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$IncomeDtoImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(3)
      ..write(obj.incomeName)
      ..writeByte(0)
      ..write(obj.amount)
      ..writeByte(1)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IncomeDtoImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
