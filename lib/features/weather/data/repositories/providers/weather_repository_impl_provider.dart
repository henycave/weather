import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/data/datasources/providers/weather_data_source_provider.dart';

import '../weather_repository_impl.dart';


part 'weather_repository_impl_provider.g.dart';

@riverpod
WeatherRepositoryImpl weatherRepositoryImpl(ref){
  final weatherRemoteDataSource = ref.watch(weatherRemoteDataSourceProvider);
  return WeatherRepositoryImpl(weatherRemoteDataSource);
}