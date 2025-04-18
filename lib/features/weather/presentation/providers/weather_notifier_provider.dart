import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/domain/entities/current_weather.dart';
import 'package:weather/features/weather/domain/entities/geocoding.dart';
import 'package:weather/features/weather/domain/usecases/provider/get_current_location_provider.dart';

import '../../../../core/error/app_exception.dart';
import '../../domain/usecases/provider/get_current_weather_provider.dart';

part 'weather_notifier_provider.g.dart';


class WeatherState {
  final CurrentWeather currentWeather;
  final Geocoding location;

  const WeatherState({
    required this.currentWeather,
    required this.location,
  });
}


@riverpod
class WeatherNotifier extends _$WeatherNotifier {
  @override
  Future<WeatherState> build() async {
    final locationResult = await ref.read(getCurrentLocationProvider).call();
    return await locationResult.fold(
          (failure) =>  Future.error(AppException(failure.message)),
          (position) async {
            final result = await ref.read(getCurrentWeatherProvider)(position.latitude, position.longitude);
            return result.fold(
                  (failure) => throw AppException(failure.message),
                  (currentWeather) => WeatherState(currentWeather: currentWeather, location: Geocoding.fromPosition(position)),
            );
      },
    );
  }
}
