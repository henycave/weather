import 'package:dartz/dartz.dart';
import 'package:weather/features/weather/data/models/daily_forecast_model.dart';
import 'package:weather/features/weather/data/models/mappers.dart';
import 'package:weather/features/weather/domain/entities/daily_forecast.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/current_weather.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasources/weather_data_source.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;

  WeatherRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, CurrentWeather>> getCurrentWeather(double latitude, double longitude) async {
    final currentWeatherResponse = await remoteDataSource.getCurrentWeather(latitude: latitude, longitude: longitude);
    final airQualityResponse = await remoteDataSource.getAirQuality(latitude: latitude, longitude: longitude);
    return currentWeatherResponse.fold(
          (failure) => Left(failure),
          (currentWeather) {
        return airQualityResponse.fold(
              (failure) => Left(failure),
              (airQuality) {
            final combined = currentWeather.combine(airQuality);
            return Right(combined);
          },
        );
      },
    );
  }

  @override
  Future<Either<Failure, List<DailyForecast>>> getForecast(double latitude, double longitude) async{
    final forecastResponse = await remoteDataSource.getForecast(latitude: latitude, longitude: longitude);
    return forecastResponse.fold((failure) => Left(failure),
          (forecast) {
        return Right(forecast.map((el)=> el.toEntity()).toList());
      });
  }
}
