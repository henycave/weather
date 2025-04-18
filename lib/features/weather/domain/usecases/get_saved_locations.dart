import 'package:dartz/dartz.dart';
import 'package:weather/features/weather/domain/repositories/location_repository.dart';

import '../../../../core/error/failure.dart';
import '../entities/geocoding.dart';

class GetSavedLocations {
  final LocationRepository repository;

  GetSavedLocations(this.repository);

  Either<Failure, List<Geocoding>> call() {
    return repository.getSavedLocations();
  }
}
