import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../themes/app_colors.dart';
import '../../domain/entities/daily_forecast.dart';
import '../utils/utils.dart';
import 'info_card.dart';

class ForecastInfoCard extends StatelessWidget {
  const ForecastInfoCard({
    super.key,
    required this.forecast,
  });

  final DailyForecast? forecast;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(30),
      ),
      child:
          forecast == null
              ? Center(child: Text('No selected Date'))
              : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 20,
                children: [
                  SvgPicture.asset(
                    forecast!.getWeatherIcon(),
                    height: MediaQuery.of(context).size.height * 0.13,
                  ),
                  Text(
                    formattedCurrentDate(),
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${forecast!.minTemperature}° - ${forecast!.maxTemperature}°",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.08,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    forecast!.getWeatherDescription(),
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Divider(height: 3, color: AppColors.white),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02,
                    ),
                    child: Column(
                      spacing: 15,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InfoCard(
                              filePath: 'assets/icons/wind.svg',
                              value: "${forecast!.maxWindSpeed.toString()}km/h",
                              title: "Wind speed",
                            ),
                            InfoCard(
                              filePath: 'assets/icons/cloud.svg',
                              value: "${forecast!.cloudCoverMean}%",
                              title: "Cloud coverage",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InfoCard(
                              filePath: 'assets/icons/rain.svg',
                              value: "${forecast!.precipitationProbability}%",
                              title: "Rainfall likelihood",
                            ),
                            InfoCard(
                              filePath: 'assets/icons/light_level.svg',
                              value: "${forecast!.shortwaveRadiationSum}MJ/m²",
                              title: "Light level",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    );
  }
}
