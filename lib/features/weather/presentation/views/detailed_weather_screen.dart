import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/themes/app_colors.dart';

import '../../../../core/error/app_exception.dart';
import '../providers/detailed_weather_notifier_provider.dart';
import '../providers/selected_forecast_provider.dart';
import '../utils/utils.dart';
import '../widgets/daily_forecast_card.dart';
import '../widgets/error_display.dart';
import '../widgets/forecast_info_card.dart';

class DetailedWeatherScreen extends ConsumerWidget {
  const DetailedWeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forecast = ref.watch(detailedWeatherNotifierProvider);
    final selectedForecast = ref.watch(selectedForecastProvider);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: forecast.when(
          data:
              (forecast) => SingleChildScrollView(
                child: Column(
                  spacing: 30,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: ForecastInfoCard(forecast: selectedForecast),
                    ),
                    Container(
                      width: double.infinity,
                      color: AppColors.secondary,
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 30,
                        children: [
                          Text(
                            formattedCurrentDate(),
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.23,
                            child: ListView.builder(
                              padding: EdgeInsets.only(bottom: 20),
                              scrollDirection: Axis.horizontal,
                              itemCount: forecast.length,
                              itemBuilder: (context, index) {
                                final dayForecast = forecast[index];
                                return DailyForecastCard(
                                  dayForecast: dayForecast,
                                  isSelected:
                                      selectedForecast != null
                                          ? isSameDate(
                                            selectedForecast.date,
                                            dayForecast.date,
                                          )
                                          : false,
                                  onTapCallBack: () {
                                    ref
                                        .read(selectedForecastProvider.notifier)
                                        .state = dayForecast;
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, trace) {
            String errorMessage;

            if (error is AppException) {
              errorMessage = error.message;
            } else {
              debugPrint('Unexpected error: $error \n $trace');
              errorMessage = 'Something went wrong. Please try again.';
            }
            return ErrorDisplay(
              errorMessage: errorMessage,
              retryCallBack: () {
                ref.invalidate(detailedWeatherNotifierProvider);
              },
            );
          },
        ),
      ),
    );
  }
}
