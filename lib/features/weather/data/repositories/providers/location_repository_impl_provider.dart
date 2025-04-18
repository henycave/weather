import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/core/services/providers/location_service_provider.dart';
import 'package:weather/features/weather/data/datasources/providers/local_storage_data_source_provider.dart';
import 'package:weather/features/weather/data/datasources/providers/remote_location_data_source_provider.dart';
import 'package:weather/features/weather/data/repositories/location_repository_impl.dart';


part 'location_repository_impl_provider.g.dart';

@riverpod
LocationRepositoryImpl locationRepositoryImpl(ref){
  final locationService = ref.watch(locationServiceProvider);
  final remoteLocationDataSource = ref.watch(remoteLocationDataSourceProvider);
  final localStorageDataSource = ref.watch(localStorageDataSourceProvider);
  return LocationRepositoryImpl(locationService, remoteLocationDataSource, localStorageDataSource);
}