import 'package:dartz/dartz.dart';
import 'package:weather/features/weather/domain/entities/current_weather.dart';
import 'package:weather/features/weather/domain/repositories/weather_repository.dart';

import '../../../../core/error/failure.dart';

class GetCurrentWeather{
  final WeatherRepository repository;

  GetCurrentWeather(this.repository);

  Future<Either<Failure, CurrentWeather>> call(double latitude, double longitude){
    return repository.getCurrentWeather(latitude, longitude);
  }
}