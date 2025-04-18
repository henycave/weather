import 'package:weather/features/weather/data/datasources/weather_data_source.dart';

import '../../../../../core/network/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'weather_data_source_provider.g.dart';

@riverpod
WeatherRemoteDataSource weatherRemoteDataSource(ref){
  final dioClient = ref.watch(dioClientProvider);
  return WeatherRemoteDataSource(dioClient);
}