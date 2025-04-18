import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/features/weather/data/datasources/local_storage_data_source.dart';
import 'package:weather/features/weather/data/datasources/remote_location_data_source.dart';
import 'package:weather/features/weather/data/models/geocoding_model.dart';
import 'package:weather/features/weather/domain/entities/geocoding.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/services/location_service.dart';
import '../../domain/repositories/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationService locationService;
  final RemoteLocationDataSource remoteLocationDataSource;
  final LocalStorageDataSource localStorageDataSource;

  LocationRepositoryImpl(this.locationService, this.remoteLocationDataSource, this.localStorageDataSource);

  @override
  Future<Either<Failure, Position>> getCurrentLocalLocation() async {
    return await locationService.getCurrentPosition();
  }

  @override
  Future<Either<Failure, List<Geocoding>>> getRemoteLocation(String query) async {
    final result =  await remoteLocationDataSource.getRemoteLocation(query: query);
    return result.map(
          (models) => models.map((model) => model.toEntity()).toList(),
    );
  }

  @override
  Either<Failure, List<Geocoding>> getSavedLocations() {
    final result = localStorageDataSource.getSavedLocations();
    return result.map(
          (models) => models.map((e) => e.toEntity()).toList(),
    );
  }

  @override
  Future<Either<Failure, void>> saveLocation(Geocoding location) async{
    final locationModel = GeocodingModelMapper.fromEntity(location);
    return await localStorageDataSource.saveLocation(locationModel);
  }

  @override
  Future<Either<Failure, void>> removeLocation(String name) async{
    return await localStorageDataSource.removeLocation(name);
  }
}
