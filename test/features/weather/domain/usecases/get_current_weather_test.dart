import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/entities/current_weather.dart';
import 'package:weather/features/weather/domain/usecases/get_current_weather.dart';

import '../../../../helpers/mocks.dart';


void main() {
  late GetCurrentWeather usecase;
  late MockWeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    usecase = GetCurrentWeather(mockWeatherRepository);
  });

  const double latitude = 12.34;
  const double longitude = 56.78;

  final currentWeather = CurrentWeather(
    currentTemperature: 19,
    rain: 5.0,
    uvIndex: 0.15,
    isDay: true,
    airQuality: AirQuality.good,
  );
  group('GetCurrentWeather UseCase', () {
    test(
      'should return CurrentWeather when the call to repository is successful',
      () async {
        when(
          () => mockWeatherRepository.getCurrentWeather(latitude, longitude),
        ).thenAnswer((_) async => Right(currentWeather));

        final result = await usecase(latitude, longitude);

        expect(result, Right(currentWeather));
        verify(
          () => mockWeatherRepository.getCurrentWeather(latitude, longitude),
        ).called(1);
        verifyNoMoreInteractions(mockWeatherRepository);
      },
    );

    test(
      'should return Failure when the call to repository is unsuccessful',
      () async {
        final failure = ServerFailure('Server error');
        when(
          () => mockWeatherRepository.getCurrentWeather(latitude, longitude),
        ).thenAnswer((_) async => Left(failure));

        final result = await usecase(latitude, longitude);

        expect(result, Left(failure));
        verify(
          () => mockWeatherRepository.getCurrentWeather(latitude, longitude),
        ).called(1);
        verifyNoMoreInteractions(mockWeatherRepository);
      },
    );
  });
}
