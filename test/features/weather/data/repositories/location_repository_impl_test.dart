import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/data/models/air_quality_and_pollen_model.dart';
import 'package:weather/features/weather/data/models/current_weather_model.dart';
import 'package:weather/features/weather/data/models/daily_forecast_model.dart';
import 'package:weather/features/weather/data/models/mappers.dart';
import 'package:weather/features/weather/data/repositories/weather_repository_impl.dart';

import '../../../../helpers/mocks.dart';

void main() {
  late WeatherRepositoryImpl repository;
  late MockWeatherRemoteDataSource mockDataSource;

  const latitude = 10.0;
  const longitude = 20.0;

  setUp(() {
    mockDataSource = MockWeatherRemoteDataSource();
    repository = WeatherRepositoryImpl(mockDataSource);
  });

  group('getCurrentWeather', () {
    final currentWeatherModel = CurrentWeatherModel(
      currentTemperature: 20,
      isDay: 1,
      rain: 0.0,
      uvIndex: 2.5,
    );

    final airQualityModel = AirQualityAndPollenModel(europeanAqi: 3);

    final combined = currentWeatherModel.combine(airQualityModel);

    test('returns Right(CurrentWeather) when both calls succeed', () async {
      when(
        () => mockDataSource.getCurrentWeather(
          latitude: latitude,
          longitude: longitude,
        ),
      ).thenAnswer((_) async => Right(currentWeatherModel));
      when(
        () => mockDataSource.getAirQuality(
          latitude: latitude,
          longitude: longitude,
        ),
      ).thenAnswer((_) async => Right(airQualityModel));

      final result = await repository.getCurrentWeather(latitude, longitude);

      expect(result, Right(combined));

    });

    test('returns Left(Failure) when getCurrentWeather fails', () async {
      final failure = ServerFailure('Weather failed');
      when(
        () => mockDataSource.getCurrentWeather(
          latitude: latitude,
          longitude: longitude,
        ),
      ).thenAnswer((_) async => Left(failure));

      when(
            () => mockDataSource.getAirQuality(
          latitude: latitude,
          longitude: longitude,
        ),
      ).thenAnswer((_) async => Right(airQualityModel));

      final result = await repository.getCurrentWeather(latitude, longitude);

      expect(result, Left(failure));
    });

    test('returns Left(Failure) when getAirQuality fails', () async {
      final failure = ServerFailure('Air quality failed');
      when(
        () => mockDataSource.getCurrentWeather(
          latitude: latitude,
          longitude: longitude,
        ),
      ).thenAnswer((_) async => Right(currentWeatherModel));
      when(
        () => mockDataSource.getAirQuality(
          latitude: latitude,
          longitude: longitude,
        ),
      ).thenAnswer((_) async => Left(failure));

      final result = await repository.getCurrentWeather(latitude, longitude);

      expect(result, Left(failure));
    });
  });

  group('getForecast', () {
    final testDate = DateTime(2025, 4, 17);
    final forecastModels = [
      DailyForecastModel(
        date: testDate,
        maxTemperature: 19,
        minTemperature: 12,
        precipitationProbability: 8,
        precipitationSum: 5.5,
        maxWindSpeed: 10.0,
        shortwaveRadiationSum: 7.9,
        cloudCoverMean: 12,
      ),
      DailyForecastModel(
        date: testDate,
        maxTemperature: 19,
        minTemperature: 12,
        precipitationProbability: 8,
        precipitationSum: 5.5,
        maxWindSpeed: 10.0,
        shortwaveRadiationSum: 7.9,
        cloudCoverMean: 12,
      ),
    ];

    final forecastEntities = forecastModels.map((e) => e.toEntity()).toList();

    test('returns Right(List<DailyForecast>) when successful', () async {
      when(
        () => mockDataSource.getForecast(
          latitude: latitude,
          longitude: longitude,
        ),
      ).thenAnswer((_) async => Right(forecastModels));

      final result = await repository.getForecast(latitude, longitude);

      expect(result.isRight(), isTrue);
      expect(result.getOrElse(() => []), equals(forecastEntities));
    });

    test('returns Left(Failure) when forecast call fails', () async {
      final failure = ServerFailure('Forecast failed');
      when(
        () => mockDataSource.getForecast(
          latitude: latitude,
          longitude: longitude,
        ),
      ).thenAnswer((_) async => Left(failure));

      final result = await repository.getForecast(latitude, longitude);

      expect(result, Left(failure));
    });
  });
}
