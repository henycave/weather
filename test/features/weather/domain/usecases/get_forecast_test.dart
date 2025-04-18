import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/entities/daily_forecast.dart';
import 'package:weather/features/weather/domain/usecases/get_forecast.dart';

import '../../../../helpers/mocks.dart';



void main() {
  late GetForecast usecase;
  late MockWeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    usecase = GetForecast(mockWeatherRepository);
  });

  const double latitude = 12.34;
  const double longitude = 56.78;

  final weeklyForecast = [
    DailyForecast(
      date: DateTime.now(),
      maxTemperature: 19,
      minTemperature: 12,
      precipitationProbability: 8,
      precipitationSum: 5.5,
      maxWindSpeed: 10.0,
      shortwaveRadiationSum: 7.9,
      cloudCoverMean: 12,
    ),
  ];
  group('GetForecast UseCase', () {
    test(
      'should return CurrentWeather when the call to repository is successful',
      () async {
        when(
          () => mockWeatherRepository.getForecast(latitude, longitude),
        ).thenAnswer((_) async => Right(weeklyForecast));

        final result = await usecase(latitude, longitude);

        expect(result, Right(weeklyForecast));
        verify(
          () => mockWeatherRepository.getForecast(latitude, longitude),
        ).called(1);
        verifyNoMoreInteractions(mockWeatherRepository);
      },
    );

    test(
      'should return Failure when the call to repository is unsuccessful',
      () async {
        final failure = ServerFailure('Server error');
        when(
          () => mockWeatherRepository.getForecast(latitude, longitude),
        ).thenAnswer((_) async => Left(failure));

        final result = await usecase(latitude, longitude);

        expect(result, Left(failure));
        verify(
          () => mockWeatherRepository.getForecast(latitude, longitude),
        ).called(1);
        verifyNoMoreInteractions(mockWeatherRepository);
      },
    );
  });
}
