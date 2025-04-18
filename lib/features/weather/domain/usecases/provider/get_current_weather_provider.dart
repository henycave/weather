import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/data/repositories/providers/weather_repository_impl_provider.dart';
import 'package:weather/features/weather/domain/usecases/get_current_weather.dart';


part 'get_current_weather_provider.g.dart';

@riverpod
GetCurrentWeather getCurrentWeather(ref){
  final weatherRepositoryImpl = ref.watch(weatherRepositoryImplProvider);
  return GetCurrentWeather(weatherRepositoryImpl);
}