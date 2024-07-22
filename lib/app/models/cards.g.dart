// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardsAdapter extends TypeAdapter<Cards> {
  @override
  final int typeId = 2;

  @override
  Cards read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cards(
      image: fields[0] as String,
      type: fields[1] as String,
      description: (fields[2] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Cards obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
