import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/data/datasources/weather_data_source.dart';
import 'package:weather/features/weather/data/models/air_quality_and_pollen_model.dart';
import 'package:weather/features/weather/data/models/current_weather_model.dart';
import 'package:weather/features/weather/data/models/daily_forecast_model.dart';

import '../../../../helpers/mocks.dart';

void main() {
  late WeatherRemoteDataSource dataSource;
  late MockDioClient mockDioClient;

  setUp(() {
    mockDioClient = MockDioClient();
    dataSource = WeatherRemoteDataSource(mockDioClient);
  });

  const double latitude = 12.34;
  const double longitude = 56.78;

  group('getCurrentWeather', () {
    final testWeatherModel = CurrentWeatherModel(
      currentTemperature: 20,
      rain: 4.5,
      uvIndex: 0.3,
      isDay: 1,
    );

    test(
      'should return CurrentWeatherModel when DioClient call is successful',
      () async {
        when(
          () => mockDioClient.get<CurrentWeatherModel>(
            any(),
            queryParameters: any(named: 'queryParameters'),
            fromJson: any(named: 'fromJson'),
          ),
        ).thenAnswer((_) async => Right(testWeatherModel));

        final result = await dataSource.getCurrentWeather(
          latitude: latitude,
          longitude: longitude,
        );

        expect(result, Right(testWeatherModel));
        verify(
          () => mockDioClient.get<CurrentWeatherModel>(
            any(),
            queryParameters: any(named: 'queryParameters'),
            fromJson: any(named: 'fromJson'),
          ),
        ).called(1);
      },
    );

    test('should return Failure when DioClient call fails', () async {
      final failure = ServerFailure('Server error');
      when(
        () => mockDioClient.get<CurrentWeatherModel>(
          any(),
          queryParameters: any(named: 'queryParameters'),
          fromJson: any(named: 'fromJson'),
        ),
      ).thenAnswer((_) async => Left(failure));

      final result = await dataSource.getCurrentWeather(
        latitude: latitude,
        longitude: longitude,
      );

      expect(result, Left(failure));
      verify(
        () => mockDioClient.get<CurrentWeatherModel>(
          any(),
          queryParameters: any(named: 'queryParameters'),
          fromJson: any(named: 'fromJson'),
        ),
      ).called(1);
    });
  });

  group('getAirQuality', () {
    final testAirQualityModel = AirQualityAndPollenModel(
      europeanAqi: 55,
      grassPollen: 3,
      birchPollen: 2,
      olivePollen: 1,
    );

    test(
      'should return AirQualityAndPollenModel when DioClient call is successful',
      () async {
        when(
          () => mockDioClient.get<AirQualityAndPollenModel>(
            any(),
            queryParameters: any(named: 'queryParameters'),
            fromJson: any(named: 'fromJson'),
          ),
        ).thenAnswer((_) async => Right(testAirQualityModel));

        final result = await dataSource.getAirQuality(
          latitude: latitude,
          longitude: longitude,
        );

        expect(result, Right(testAirQualityModel));
        verify(
          () => mockDioClient.get<AirQualityAndPollenModel>(
            any(),
            queryParameters: any(named: 'queryParameters'),
            fromJson: any(named: 'fromJson'),
          ),
        ).called(1);
      },
    );

    test('should return Failure when DioClient call fails', () async {
      final failure = ServerFailure('Failed to fetch air quality');
      when(
        () => mockDioClient.get<AirQualityAndPollenModel>(
          any(),
          queryParameters: any(named: 'queryParameters'),
          fromJson: any(named: 'fromJson'),
        ),
      ).thenAnswer((_) async => Left(failure));

      final result = await dataSource.getAirQuality(
        latitude: latitude,
        longitude: longitude,
      );

      expect(result, Left(failure));
      verify(
        () => mockDioClient.get<AirQualityAndPollenModel>(
          any(),
          queryParameters: any(named: 'queryParameters'),
          fromJson: any(named: 'fromJson'),
        ),
      ).called(1);
    });
  });

  group('getForecast', () {
    final testForecastList = [
      DailyForecastModel(
        date: DateTime.now(),
        maxTemperature: 20.0,
        minTemperature: 13.7,
        precipitationProbability: 3,
        precipitationSum: 4.0,
        maxWindSpeed: 3.0,
        cloudCoverMean: 7,
        shortwaveRadiationSum: 8.9,
      ),
      DailyForecastModel(
        date: DateTime.now(),
        maxTemperature: 21.0,
        minTemperature: 14.7,
        precipitationProbability: 4,
        precipitationSum: 5.0,
        maxWindSpeed: 4.0,
        cloudCoverMean: 8,
        shortwaveRadiationSum: 9.9,
      ),
    ];

    test(
      'should return List<DailyForecastModel> when DioClient call is successful',
      () async {
        when(
          () => mockDioClient.get<List<DailyForecastModel>>(
            any(),
            queryParameters: any(named: 'queryParameters'),
            fromJson: any(named: 'fromJson'),
          ),
        ).thenAnswer((_) async => Right(testForecastList));

        final result = await dataSource.getForecast(
          latitude: latitude,
          longitude: longitude,
        );

        expect(result, Right(testForecastList));
        verify(
          () => mockDioClient.get<List<DailyForecastModel>>(
            any(),
            queryParameters: any(named: 'queryParameters'),
            fromJson: any(named: 'fromJson'),
          ),
        ).called(1);
      },
    );

    test('should return Failure when DioClient call fails', () async {
      final failure = ServerFailure('Failed to fetch forecast');
      when(
        () => mockDioClient.get<List<DailyForecastModel>>(
          any(),
          queryParameters: any(named: 'queryParameters'),
          fromJson: any(named: 'fromJson'),
        ),
      ).thenAnswer((_) async => Left(failure));

      final result = await dataSource.getForecast(
        latitude: latitude,
        longitude: longitude,
      );

      expect(result, Left(failure));
      verify(
        () => mockDioClient.get<List<DailyForecastModel>>(
          any(),
          queryParameters: any(named: 'queryParameters'),
          fromJson: any(named: 'fromJson'),
        ),
      ).called(1);
    });
  });
}
