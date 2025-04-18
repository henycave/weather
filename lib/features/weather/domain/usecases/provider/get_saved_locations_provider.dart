import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/data/repositories/providers/location_repository_impl_provider.dart';
import 'package:weather/features/weather/domain/usecases/get_saved_locations.dart';


part 'get_saved_locations_provider.g.dart';

@riverpod
GetSavedLocations getSavedLocations(ref){
  final locationRepositoryImpl = ref.watch(locationRepositoryImplProvider);
  return GetSavedLocations(locationRepositoryImpl);
}