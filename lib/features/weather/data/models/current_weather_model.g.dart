// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrentWeatherModel _$CurrentWeatherModelFromJson(Map<String, dynamic> json) =>
    _CurrentWeatherModel(
      currentTemperature: (json['temperature_2m'] as num).toDouble(),
      rain: (json['rain'] as num).toDouble(),
      uvIndex: (json['uv_index'] as num).toDouble(),
      isDay: (json['is_day'] as num).toInt(),
    );

Map<String, dynamic> _$CurrentWeatherModelToJson(
  _CurrentWeatherModel instance,
) => <String, dynamic>{
  'temperature_2m': instance.currentTemperature,
  'rain': instance.rain,
  'uv_index': instance.uvIndex,
  'is_day': instance.isDay,
};
