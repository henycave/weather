import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/data/repositories/providers/location_repository_impl_provider.dart';
import 'package:weather/features/weather/domain/usecases/get_remote_location.dart';


part 'get_remote_location_provider.g.dart';

@riverpod
GetRemoteLocation getRemoteLocation(ref){
  final locationRepositoryImpl = ref.watch(locationRepositoryImplProvider);
  return GetRemoteLocation(locationRepositoryImpl);
}