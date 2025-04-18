import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/domain/entities/daily_forecast.dart';
import 'package:weather/features/weather/domain/usecases/provider/get_forecast_provider.dart';
import 'package:weather/features/weather/presentation/providers/selected_forecast_provider.dart';
import 'package:weather/features/weather/presentation/providers/selected_location_provider.dart';

import '../../../../core/error/app_exception.dart';

part 'detailed_weather_notifier_provider.g.dart';

@riverpod
class DetailedWeatherNotifier extends _$DetailedWeatherNotifier {
  @override
  Future<List<DailyForecast>> build() async {
    final location = ref.watch(selectedLocationProvider);
    if (location == null) throw AppException('No location selected');

    final result = await ref.read(getForecastProvider)(location.latitude, location.longitude);
    return result.fold(
          (failure) => throw AppException(failure.message),
          (forecast) {
            final today = DateTime.now();
            final selected = forecast.firstWhere(
                  (f) => f.date.year == today.year && f.date.month == today.month && f.date.day == today.day,
              orElse: () => forecast.first,
            );
            ref.read(selectedForecastProvider.notifier).state = selected;
            return forecast;
          },
    );
  }
}
