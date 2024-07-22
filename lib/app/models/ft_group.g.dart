// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ft_group.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FTGroupAdapter extends TypeAdapter<FTGroup> {
  @override
  final int typeId = 5;

  @override
  FTGroup read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FTGroup(
      name: fields[0] as String,
      icon: fields[1] as String,
      content: (fields[2] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, FTGroup obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.icon)
      ..writeByte(2)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FTGroupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
