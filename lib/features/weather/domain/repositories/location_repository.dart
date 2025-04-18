import 'package:geolocator/geolocator.dart';
import '../../../../core/error/failure.dart';
import 'package:dartz/dartz.dart';
import '../entities/geocoding.dart';

abstract class LocationRepository {
  Future<Either<Failure, Position>> getCurrentLocalLocation();
  Future<Either<Failure, List<Geocoding>>> getRemoteLocation(String query);
  Future<Either<Failure, void>> saveLocation(Geocoding location);
  Either<Failure, List<Geocoding>> getSavedLocations();
  Future<Either<Failure, void>> removeLocation(String name);
}
