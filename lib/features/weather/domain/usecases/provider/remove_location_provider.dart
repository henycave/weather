import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/data/repositories/providers/location_repository_impl_provider.dart';
import 'package:weather/features/weather/domain/usecases/remove_location.dart';


part 'remove_location_provider.g.dart';

@riverpod
RemoveLocation removeLocation(ref){
  final locationRepositoryImpl = ref.watch(locationRepositoryImplProvider);
  return RemoveLocation(locationRepositoryImpl);
}