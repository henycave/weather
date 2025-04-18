import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/domain/entities/geocoding.dart';
import 'package:weather/features/weather/domain/usecases/provider/get_saved_locations_provider.dart';
import 'package:weather/features/weather/domain/usecases/provider/save_location_provider.dart';
import 'package:weather/features/weather/presentation/providers/selected_location_provider.dart';

import '../../../../core/error/app_exception.dart';
import '../../domain/usecases/provider/remove_location_provider.dart';

part 'saved_locations_notifier_provider.g.dart';

@riverpod
class SavedLocationsNotifier extends _$SavedLocationsNotifier {
  @override
  AsyncValue<List<Geocoding>> build() {
    final locations = getLocations();
    return AsyncValue.data(locations);
  }

  Future<void> saveLocation(Geocoding location) async {
    final saveLocation = ref.read(saveLocationProvider);
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final result = await saveLocation.call(location);
      result.fold(
            (failure) => throw AppException(failure.message),
            (_) => null,
      );
      ref.read(selectedLocationProvider.notifier).state = location;
      return getLocations();
    });
  }

  List<Geocoding> getLocations() {
    final getSavedLocations = ref.read(getSavedLocationsProvider);
    final result = getSavedLocations.call();
    return result.fold(
          (failure) => throw AppException(failure.message),
          (locations) => locations,
    );
  }

  Future<void> removeLocations(String name) async {
    final removeLocation = ref.read(removeLocationProvider);
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final result = await removeLocation.call(name);
      result.fold(
            (failure) => throw AppException(failure.message),
            (_) => null,
      );
      return getLocations();
    });
  }
}
