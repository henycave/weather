// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GeocodingModelAdapter extends TypeAdapter<GeocodingModel> {
  @override
  final int typeId = 0;

  @override
  GeocodingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GeocodingModel(
      name: fields[0] as String,
      latitude: (fields[1] as num).toDouble(),
      longitude: (fields[2] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, GeocodingModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.longitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeocodingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeocodingModel _$GeocodingModelFromJson(Map<String, dynamic> json) =>
    _GeocodingModel(
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$GeocodingModelToJson(_GeocodingModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
