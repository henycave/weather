import 'package:dartz/dartz.dart';
import 'package:weather/features/weather/domain/entities/current_weather.dart';
import 'package:weather/features/weather/domain/entities/daily_forecast.dart';

import '../../../../core/error/failure.dart';

abstract class WeatherRepository{
  Future<Either<Failure, CurrentWeather>> getCurrentWeather(double latitude, double longitude);
  Future<Either<Failure, List<DailyForecast>>> getForecast(double latitude, double longitude);
}