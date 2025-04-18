import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/core/routes/route_utils.dart';
import 'package:weather/features/weather/presentation/views/detailed_weather_screen.dart';
import 'package:weather/features/weather/presentation/views/weather_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref){
  return GoRouter(
    initialLocation: AppPage.homePage.toPath(),
    routes: [
      GoRoute(
          path: AppPage.homePage.toPath(),
          name: AppPage.homePage.name,
          builder: (context, state){
            return WeatherScreen();
          },
          routes: [
            GoRoute(
                path: AppPage.detailsPage.toPath(isAbsolute: false),
                name: AppPage.detailsPage.name,
                builder: (context, state){
                  return DetailedWeatherScreen();
                }
            ),
          ]
      ),
    ],
  );
});