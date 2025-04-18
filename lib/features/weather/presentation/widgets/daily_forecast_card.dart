import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../themes/app_colors.dart';
import '../../domain/entities/daily_forecast.dart';
import '../utils/utils.dart';

class DailyForecastCard extends StatelessWidget {
  const DailyForecastCard({
    super.key,
    required this.dayForecast,
    this.isSelected = false,
    required this.onTapCallBack,
  });

  final DailyForecast dayForecast;
  final Function onTapCallBack;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>onTapCallBack(),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.selected : AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: MediaQuery.of(context).size.width * 0.33,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              formattedDate(dayForecast.date),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SvgPicture.asset(
              dayForecast.getWeatherIcon(),
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "${dayForecast.minTemperature}°/${dayForecast.maxTemperature}°",
            ),
            Text("${dayForecast.precipitationProbability}% rain"),
          ],
        ),
      ),
    );
  }
}
