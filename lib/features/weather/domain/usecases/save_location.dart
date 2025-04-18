import 'package:dartz/dartz.dart';
import 'package:weather/features/weather/domain/repositories/location_repository.dart';
import '../../../../core/error/failure.dart';
import '../entities/geocoding.dart';

class SaveLocation {
  final LocationRepository repository;

  SaveLocation(this.repository);

  Future<Either<Failure, void>> call(Geocoding location) async {
    return await repository.saveLocation(location);
  }
}
