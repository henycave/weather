import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/features/weather/domain/entities/daily_forecast.dart';

final selectedForecastProvider = StateProvider<DailyForecast?>((ref) => null);
