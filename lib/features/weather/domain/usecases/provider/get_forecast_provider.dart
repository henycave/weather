import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/data/repositories/providers/weather_repository_impl_provider.dart';
import 'package:weather/features/weather/domain/usecases/get_forecast.dart';


part 'get_forecast_provider.g.dart';

@riverpod
GetForecast getForecast(ref){
  final weatherRepositoryImpl = ref.watch(weatherRepositoryImplProvider);
  return GetForecast(weatherRepositoryImpl);
}