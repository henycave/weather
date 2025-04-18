import 'package:dartz/dartz.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/features/weather/data/models/air_quality_and_pollen_model.dart';
import 'package:weather/features/weather/data/models/daily_forecast_model.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';
import '../models/current_weather_model.dart';

class WeatherRemoteDataSource {
  final DioClient dioClient;

  WeatherRemoteDataSource(this.dioClient);

  Future<Either<Failure, CurrentWeatherModel>> getCurrentWeather({
    required double latitude,
    required double longitude,
  }) async {
    return await dioClient.get(
      kForecastURL,
      queryParameters: {
        'latitude': latitude,
        'longitude': longitude,
        'current': 'temperature_2m,rain,uv_index,is_day,apparent_temperature',
      },
      fromJson: (json) => CurrentWeatherModel.fromJson(json['current']),
    );
  }

  Future<Either<Failure, AirQualityAndPollenModel>> getAirQuality({
    required double latitude,
    required double longitude,
  }) async {
    return await dioClient.get(
      kAirQualityURL,
      queryParameters: {
        'latitude': latitude,
        'longitude': longitude,
        'current': 'european_aqi,grass_pollen,birch_pollen,olive_pollen',
      },
      fromJson: (json) => AirQualityAndPollenModel.fromJson(json['current']),
    );
  }

  Future<Either<Failure, List<DailyForecastModel>>> getForecast({
    required double latitude,
    required double longitude,
  }) async {
    return await dioClient.get(
      kForecastURL,
      queryParameters: {
        'latitude': latitude,
        'longitude': longitude,
        'daily':
            'temperature_2m_max,temperature_2m_min,precipitation_probability_max,wind_speed_10m_max,cloudcover_mean,shortwave_radiation_sum,precipitation_sum',
      },
      fromJson: (json) => DailyForecastModel.fromApi(json),
    );
  }
}
