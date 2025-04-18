import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/core/services/location_service.dart';

part 'location_service_provider.g.dart';

@riverpod
LocationService locationService(ref){
  return LocationService();
}