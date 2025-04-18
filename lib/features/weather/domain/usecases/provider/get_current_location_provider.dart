import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/features/weather/data/repositories/providers/location_repository_impl_provider.dart';

import '../get_current_local_location.dart';


part 'get_current_location_provider.g.dart';

@riverpod
GetCurrentLocalLocation getCurrentLocation(ref){
  final locationRepositoryImpl = ref.watch(locationRepositoryImplProvider);
  return GetCurrentLocalLocation(locationRepositoryImpl);
}