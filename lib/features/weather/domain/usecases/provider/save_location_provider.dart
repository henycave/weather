import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/data/repositories/providers/location_repository_impl_provider.dart';
import 'package:weather/features/weather/domain/usecases/save_location.dart';


part 'save_location_provider.g.dart';

@riverpod
SaveLocation saveLocation(ref){
  final locationRepositoryImpl = ref.watch(locationRepositoryImplProvider);
  return SaveLocation(locationRepositoryImpl);
}