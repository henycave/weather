import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather/features/weather/domain/entities/geocoding.dart';
import 'package:weather/features/weather/presentation/providers/weather_notifier_provider.dart';
import 'package:weather/features/weather/presentation/utils/utils.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../themes/app_colors.dart';
import '../../domain/entities/current_weather.dart';
import 'error_display.dart';
import 'info_card.dart';

class WeatherInfoCard extends StatelessWidget {
  const WeatherInfoCard({
    super.key,
    required this.weatherAsyncValue,
    required this.retryCallBack,
    required this.forecastCallBack,
  });

  final AsyncValue<WeatherState> weatherAsyncValue;
  final Function(Geocoding location) forecastCallBack;
  final Function retryCallBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: weatherAsyncValue.when(
        data:
            (weather) => Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 30,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () =>forecastCallBack(weather.location),
                  child: Text(
                    "Forecast For 7 days",
                    style: TextStyle(
                      color: AppColors.grayText,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    ),
                  ),
                ),
              ),
              SvgPicture.asset(
                weather.currentWeather.getWeatherIcon(),
                fit: BoxFit.fitHeight,
              ),
              Text(
                formattedCurrentDate(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${weather.currentWeather.currentTemperature}°",
                style: TextStyle(
                  fontSize:
                  MediaQuery.of(context).size.width * 0.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                weather.currentWeather.getWeatherDescription(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(height: 3, color: AppColors.white),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  spacing: 15,
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        InfoCard(
                          filePath: 'assets/icons/air_quality.svg',
                          value: weather.currentWeather.airQuality.label,
                          title: "Air Quality(EAQI)",
                        ),
                        InfoCard(
                          filePath: 'assets/icons/rain.svg',
                          value: "${weather.currentWeather.rain}mm",
                          title: "Rain",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        InfoCard(
                          filePath:
                          'assets/icons/uv_index.svg',
                          value: "${weather.currentWeather.uvIndex}",
                          title: "UV Index",
                        ),
                        InfoCard(
                          filePath: 'assets/icons/pollen_count.svg',
                          value:
                          weather.currentWeather.highestPollen != null ? "${weather.currentWeather.highestPollen!.value}grains/m³" : "Unknown",
                          title:
                          weather.currentWeather.highestPollen != null
                              ? weather.currentWeather.highestPollen!.key
                              : "Pollen Count",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        error: (error, trace) {
          String errorMessage;

          if (error is AppException) {
            errorMessage = error.message;
          } else {
            debugPrint('Unexpected error: $error $trace');
            errorMessage =
            'Something went wrong. Please try again.';
          }

          return ErrorDisplay(errorMessage: errorMessage, retryCallBack: retryCallBack);
        },
        loading:
            () =>
        const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
