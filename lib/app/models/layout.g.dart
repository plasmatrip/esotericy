// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LayoutAdapter extends TypeAdapter<Layout> {
  @override
  final int typeId = 3;

  @override
  Layout read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Layout(
      name: fields[0] as String,
      content: (fields[1] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Layout obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LayoutAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
