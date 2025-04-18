import 'package:dartz/dartz.dart';
import 'package:weather/features/weather/domain/entities/geocoding.dart';
import '../../../../core/error/failure.dart';
import '../repositories/location_repository.dart';

class GetRemoteLocation {
  final LocationRepository repository;

  GetRemoteLocation(this.repository);

  Future<Either<Failure, List<Geocoding>>> call(String query) async {
    return await repository.getRemoteLocation(query);
  }
}
