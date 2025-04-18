import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import '../../../../core/error/failure.dart';
import '../repositories/location_repository.dart';

class GetCurrentLocalLocation {
  final LocationRepository repository;

  GetCurrentLocalLocation(this.repository);

  Future<Either<Failure, Position>> call() async {
    return await repository.getCurrentLocalLocation();
  }
}
