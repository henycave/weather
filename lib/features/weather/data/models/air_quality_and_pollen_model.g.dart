// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_and_pollen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AirQualityAndPollenModel _$AirQualityAndPollenModelFromJson(
  Map<String, dynamic> json,
) => _AirQualityAndPollenModel(
  europeanAqi: (json['european_aqi'] as num).toInt(),
  grassPollen: (json['grass_pollen'] as num?)?.toDouble(),
  birchPollen: (json['birch_pollen'] as num?)?.toDouble(),
  olivePollen: (json['olive_pollen'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AirQualityAndPollenModelToJson(
  _AirQualityAndPollenModel instance,
) => <String, dynamic>{
  'european_aqi': instance.europeanAqi,
  'grass_pollen': instance.grassPollen,
  'birch_pollen': instance.birchPollen,
  'olive_pollen': instance.olivePollen,
};
