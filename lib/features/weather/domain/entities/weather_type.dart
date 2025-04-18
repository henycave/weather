enum WeatherType {
  rainy,
  rainyNight,
  sunny,
  partlyCloudy,
  cloudyNight,
  clearNight,
  cloudy,
  unknown,
}

extension WeatherTypeExtension on WeatherType {
  String get description {
    switch (this) {
      case WeatherType.rainy:
        return 'Rainy';
      case WeatherType.rainyNight:
        return 'Rainy Night';
      case WeatherType.sunny:
        return 'Sunny';
      case WeatherType.partlyCloudy:
        return 'Partly Cloudy';
      case WeatherType.cloudy:
        return 'Cloudy';
      case WeatherType.cloudyNight:
        return 'Cloudy Night';
      case WeatherType.clearNight:
        return 'Clear Night';
      case WeatherType.unknown:
        return 'Unknown';
    }
  }

  String get icon {
    switch (this) {
      case WeatherType.rainy:
        return 'assets/icons/rain.svg';
      case WeatherType.rainyNight:
        return 'assets/icons/rain_night.svg';
      case WeatherType.sunny:
        return 'assets/icons/sun.svg';
      case WeatherType.partlyCloudy:
        return 'assets/icons/partly_cloudy.svg';
      case WeatherType.cloudy:
        return 'assets/icons/cloud.svg';
      case WeatherType.cloudyNight:
        return 'assets/icons/cloud_night.svg';
      case WeatherType.clearNight:
        return 'assets/icons/moon.svg';
      case WeatherType.unknown:
        return 'assets/icons/unknown.svg';
    }
  }
}