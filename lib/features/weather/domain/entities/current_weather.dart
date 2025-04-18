import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/domain/entities/weather_type.dart';


part 'current_weather.freezed.dart';

@freezed
abstract class CurrentWeather with _$CurrentWeather{
  const factory CurrentWeather({
    required double currentTemperature,
    required double rain,
    required double uvIndex,
    required bool isDay,
    required AirQuality airQuality,
    double? grassPollen,
    double? birchPollen,
    double? olivePollen,
  }) = _CurrentWeather;
}

extension CurrentWeatherExtensions on CurrentWeather {
  WeatherType get weatherType {
    if (rain > 0.1 && isDay) {
      return WeatherType.rainy;
    } else if (rain > 0.1 && !isDay) {
      return WeatherType.rainyNight;
    } else if (isDay && uvIndex > 5) {
      return WeatherType.sunny;
    } else if (isDay && uvIndex <= 5) {
      return WeatherType.partlyCloudy;
    } else if (!isDay && rain == 0 && uvIndex > 0) {
      return WeatherType.cloudyNight;
    } else if (!isDay && rain == 0 && uvIndex == 0) {
      return WeatherType.clearNight;
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


extension CurrentWeatherExtension on CurrentWeather {
  MapEntry<String, double>? get highestPollen {
    final pollenMap = {
      'Birch': birchPollen,
      'Grass': grassPollen,
      'Olive': olivePollen,
    };

    final nonNullPollens = pollenMap.entries
        .where((entry) => entry.value != null)
        .map((e) => MapEntry(e.key, e.value!));

    if (nonNullPollens.isEmpty) return null;

    return nonNullPollens.reduce((a, b) => a.value > b.value ? a : b);
  }
}


enum AirQuality {
  good,
  fair,
  moderate,
  poor,
  veryPoor,
  extremelyPoor,
}

extension AirQualityX on AirQuality {
  String get label {
    switch (this) {
      case AirQuality.good:
        return 'Good';
      case AirQuality.fair:
        return 'Fair';
      case AirQuality.moderate:
        return 'Moderate';
      case AirQuality.poor:
        return 'Poor';
      case AirQuality.veryPoor:
        return 'Very Poor';
      case AirQuality.extremelyPoor:
        return 'Extremely Poor';
    }
  }
}