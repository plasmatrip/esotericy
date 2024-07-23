// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ft.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FTAdapter extends TypeAdapter<FT> {
  @override
  final int typeId = 6;

  @override
  FT read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FT(
      name: fields[0] as String,
      description: fields[1] as String,
      stageNames: (fields[2] as List).cast<String>(),
      stages: (fields[3] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, FT obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.stageNames)
      ..writeByte(3)
      ..write(obj.stages);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FTAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
