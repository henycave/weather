import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/network/dio_client.dart';
import 'package:weather/features/weather/data/datasources/weather_data_source.dart';
import 'package:weather/features/weather/domain/repositories/weather_repository.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}
class MockDioClient extends Mock implements DioClient {}
class MockDio extends Mock implements Dio {}
class MockWeatherRemoteDataSource extends Mock implements WeatherRemoteDataSource {}