// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyForecastModel _$DailyForecastModelFromJson(Map<String, dynamic> json) =>
    _DailyForecastModel(
      date: DateTime.parse(json['date'] as String),
      maxTemperature: (json['maxTemperature'] as num).toDouble(),
      minTemperature: (json['minTemperature'] as num).toDouble(),
      precipitationProbability:
          (json['precipitationProbability'] as num).toInt(),
      precipitationSum: (json['precipitationSum'] as num).toDouble(),
      maxWindSpeed: (json['maxWindSpeed'] as num).toDouble(),
      cloudCoverMean: (json['cloudCoverMean'] as num).toInt(),
      shortwaveRadiationSum: (json['shortwaveRadiationSum'] as num).toDouble(),
    );

Map<String, dynamic> _$DailyForecastModelToJson(_DailyForecastModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'maxTemperature': instance.maxTemperature,
      'minTemperature': instance.minTemperature,
      'precipitationProbability': instance.precipitationProbability,
      'precipitationSum': instance.precipitationSum,
      'maxWindSpeed': instance.maxWindSpeed,
      'cloudCoverMean': instance.cloudCoverMean,
      'shortwaveRadiationSum': instance.shortwaveRadiationSum,
    };
