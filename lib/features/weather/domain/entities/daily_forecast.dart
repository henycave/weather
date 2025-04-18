import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/domain/entities/weather_type.dart';

part 'daily_forecast.freezed.dart';

@freezed
abstract class DailyForecast with _$DailyForecast{
  const factory DailyForecast({
    required DateTime date,
    required double maxTemperature,
    required double minTemperature,
    required int precipitationProbability,
    required double precipitationSum,
    required double maxWindSpeed,
    required double shortwaveRadiationSum,
    required int cloudCoverMean,
  }) = _DailyForecast;
}

extension DailyForecastExtension on DailyForecast {

  WeatherType get weatherType {

    final isLikelyRainy = precipitationProbability > 50 && cloudCoverMean > 50;

    final isVerySunny = shortwaveRadiationSum > 20 && cloudCoverMean < 40;
    final isPartlyCloudy = shortwaveRadiationSum > 15 && cloudCoverMean < 70;
    final isCloudy = cloudCoverMean > 70;

    if (isLikelyRainy) {
      return WeatherType.rainy;
    } else if (isVerySunny) {
      return WeatherType.sunny;
    } else if (isPartlyCloudy) {
      return WeatherType.partlyCloudy;
    } else if (isCloudy) {
      return WeatherType.cloudy;
    } else {
      return WeatherType.unknown;
    }
  }

  String getWeatherDescription() {
    return weatherType.description;
  }

  String getWeatherIcon() {
    return weatherType.icon;
  }
}

