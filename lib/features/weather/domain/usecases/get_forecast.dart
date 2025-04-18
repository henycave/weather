import 'package:dartz/dartz.dart';
import 'package:weather/features/weather/domain/entities/daily_forecast.dart';
import 'package:weather/features/weather/domain/repositories/weather_repository.dart';

import '../../../../core/error/failure.dart';

class GetForecast{
  final WeatherRepository repository;

  GetForecast(this.repository);

  Future<Either<Failure, List<DailyForecast>>> call(double latitude, double longitude){
    return repository.getForecast(latitude, longitude);
  }
}