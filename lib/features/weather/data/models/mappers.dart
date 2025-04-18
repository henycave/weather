import '../../domain/entities/current_weather.dart';
import 'air_quality_and_pollen_model.dart';
import 'current_weather_model.dart';

extension CurrentWeatherModelX on CurrentWeatherModel {
  CurrentWeather combine(AirQualityAndPollenModel airQuality) {
    return CurrentWeather(
      currentTemperature: currentTemperature,
      rain: rain,
      uvIndex: uvIndex,
      isDay: _mapIsDayToBoolean(isDay),
      airQuality: _mapAqiToStatus(airQuality.europeanAqi),
      grassPollen: airQuality.grassPollen,
      birchPollen: airQuality.birchPollen,
      olivePollen: airQuality.olivePollen,
    );
  }

  AirQuality _mapAqiToStatus(int aqi) {
    if (aqi <= 20) return AirQuality.good;
    if (aqi <= 40) return AirQuality.fair;
    if (aqi <= 60) return AirQuality.moderate;
    if (aqi <= 80) return AirQuality.poor;
    if (aqi <= 100) return AirQuality.veryPoor;
    return AirQuality.extremelyPoor;
  }

  bool _mapIsDayToBoolean(int isDay){
    return isDay==1;
  }
}
