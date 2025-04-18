import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/daily_forecast.dart';

part 'daily_forecast_model.freezed.dart';

part 'daily_forecast_model.g.dart';

@freezed
abstract class DailyForecastModel with _$DailyForecastModel {
  const factory DailyForecastModel({
    required DateTime date,
    required double maxTemperature,
    required double minTemperature,
    required int precipitationProbability,
    required double precipitationSum,
    required double maxWindSpeed,
    required int cloudCoverMean,
    required double shortwaveRadiationSum,
  }) = _DailyForecastModel;

  factory DailyForecastModel.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastModelFromJson(json);

  static List<DailyForecastModel> fromApi(Map<String, dynamic> json) {
    final daily = json['daily'];

    final times = List<String>.from(daily['time']);
    final maxTemperatures = List<double>.from(daily['temperature_2m_max']);
    final minTemperatures = List<double>.from(daily['temperature_2m_min']);
    final precipitationProbabilities = List<int>.from(
      daily['precipitation_probability_max'],
    );
    final maxWindSpeeds = List<double>.from(daily['wind_speed_10m_max']);
    final radiationSums = List<double>.from(daily['shortwave_radiation_sum']);
    final cloudCoverMean = List<int>.from(daily['cloudcover_mean']);
    final precipitationSum = List<double>.from(daily['precipitation_sum']);

    return List.generate(times.length, (index) {
      return DailyForecastModel(
        date: DateTime.parse(times[index]),
        maxTemperature: maxTemperatures[index],
        minTemperature: minTemperatures[index],
        precipitationProbability: precipitationProbabilities[index],
        maxWindSpeed: maxWindSpeeds[index],
        shortwaveRadiationSum: radiationSums[index],
        cloudCoverMean: cloudCoverMean[index],
        precipitationSum: precipitationSum[index],
      );
    });
  }
}

extension DailyForecastModelX on DailyForecastModel {
  DailyForecast toEntity() {
    return DailyForecast(
      date: date,
      maxTemperature: maxTemperature,
      minTemperature: minTemperature,
      precipitationProbability: precipitationProbability,
      maxWindSpeed: maxWindSpeed,
      shortwaveRadiationSum: shortwaveRadiationSum,
      cloudCoverMean: cloudCoverMean,
      precipitationSum: precipitationSum,
    );
  }
}
