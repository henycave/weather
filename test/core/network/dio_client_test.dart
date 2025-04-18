import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/core/network/dio_client.dart';
import 'package:weather/features/weather/data/models/current_weather_model.dart';

import '../../helpers/mocks.dart';

void main() {
  late DioClient dioClient;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    dioClient = DioClient(mockDio);
  });

  const String url = 'https://api.weather.com';
  const Map<String, dynamic> queryParameters = {'latitude': 12.34, 'longitude': 56.78};
  final responseData = {
    'current': {
      "temperature_2m": 18.6,
      "rain": 0.00,
      "uv_index": 0.00,
      "is_day": 0
    }
  };

  group('DioClient', () {
    test('should return data when Dio call is successful', () async {
      final mockResponse = Response(
        data: responseData,
        statusCode: 200,
        requestOptions: RequestOptions(path: url),
      );

      when(() => mockDio.get(url, queryParameters: queryParameters))
          .thenAnswer((_) async => mockResponse);

      final result = await dioClient.get<CurrentWeatherModel>(
        url,
        queryParameters: queryParameters,
        fromJson: (json) => CurrentWeatherModel.fromJson(json['current']),
      );

      final expected = CurrentWeatherModel(
        currentTemperature: 18.6,
        rain: 0.00,
        uvIndex: 0.00,
        isDay: 0,
      );

      expect(result, Right(expected));
      verify(() => mockDio.get(url, queryParameters: queryParameters)).called(1);
    });

    test('should return NetworkFailure when Dio throws a connection timeout', () async {
      when(() => mockDio.get(url, queryParameters: queryParameters))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: url),
        type: DioExceptionType.connectionTimeout,
      ));

      final result = await dioClient.get<CurrentWeatherModel>(
        url,
        queryParameters: queryParameters,
        fromJson: (json) => CurrentWeatherModel.fromJson(json['current']),
      );

      expect(
        result,
        isA<Left<Failure, CurrentWeatherModel>>().having(
              (l) => l.value,
          'value',
          isA<NetworkFailure>().having((f) => f.message, 'message', 'Connection timed out'),
        ),
      );
      verify(() => mockDio.get(url, queryParameters: queryParameters)).called(1);
    });

    test('should return ServerFailure when Dio throws a 404 error', () async {
      when(() => mockDio.get(url, queryParameters: queryParameters))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: url),
        response: Response(
          statusCode: 404,
          requestOptions: RequestOptions(path: url),
        ),
        type: DioExceptionType.badResponse,
      ));

      final result = await dioClient.get<CurrentWeatherModel>(
        url,
        queryParameters: queryParameters,
        fromJson: (json) => CurrentWeatherModel.fromJson(json['current']),
      );

      expect(
        result,
        isA<Left<Failure, CurrentWeatherModel>>().having(
              (l) => l.value,
          'value',
          isA<ServerFailure>().having((f) => f.message, 'message', 'Resource not found (404)'),
        ),
      );
      verify(() => mockDio.get(url, queryParameters: queryParameters)).called(1);
    });

    test('should return ServerFailure when Dio throws a 401 error', () async {
      when(() => mockDio.get(url, queryParameters: queryParameters))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: url),
        response: Response(
          statusCode: 401,
          requestOptions: RequestOptions(path: url),
        ),
        type: DioExceptionType.badResponse,
      ));

      final result = await dioClient.get<CurrentWeatherModel>(
        url,
        queryParameters: queryParameters,
        fromJson: (json) => CurrentWeatherModel.fromJson(json['current']),
      );

      expect(
        result,
        isA<Left<Failure, CurrentWeatherModel>>().having(
              (l) => l.value,
          'value',
          isA<ServerFailure>().having((f) => f.message, 'message', 'Unauthorized request (401)'),
        ),
      );
      verify(() => mockDio.get(url, queryParameters: queryParameters)).called(1);
    });

    test('should return ServerFailure when Dio throws a 500 error', () async {
      when(() => mockDio.get(url, queryParameters: queryParameters))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: url),
        response: Response(
          statusCode: 500,
          requestOptions: RequestOptions(path: url),
        ),
        type: DioExceptionType.badResponse,
      ));

      final result = await dioClient.get<CurrentWeatherModel>(
        url,
        queryParameters: queryParameters,
        fromJson: (json) => CurrentWeatherModel.fromJson(json['current']),
      );

      expect(
        result,
        isA<Left<Failure, CurrentWeatherModel>>().having(
              (l) => l.value,
          'value',
          isA<ServerFailure>().having((f) => f.message, 'message', 'Server error: 500'),
        ),
      );
      verify(() => mockDio.get(url, queryParameters: queryParameters)).called(1);
    });

    test('should return ServerFailure when Dio throws an unknown error', () async {
      when(() => mockDio.get(url, queryParameters: queryParameters))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: url),
        type: DioExceptionType.unknown,
      ));

      final result = await dioClient.get<CurrentWeatherModel>(
        url,
        queryParameters: queryParameters,
        fromJson: (json) => CurrentWeatherModel.fromJson(json['current']),
      );

      expect(
        result,
        isA<Left<Failure, CurrentWeatherModel>>().having(
              (l) => l.value,
          'value',
          isA<ServerFailure>().having((f) => f.message, 'message', 'Unexpected server error'),
        ),
      );
      verify(() => mockDio.get(url, queryParameters: queryParameters)).called(1);
    });
  });
}
