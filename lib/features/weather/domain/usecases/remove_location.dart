import 'package:dartz/dartz.dart';
import 'package:weather/features/weather/domain/repositories/location_repository.dart';
import '../../../../core/error/failure.dart';

class RemoveLocation {
  final LocationRepository repository;

  RemoveLocation(this.repository);

  Future<Either<Failure, void>> call(String name) async {
    return await repository.removeLocation(name);
  }
}
