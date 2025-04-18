import 'package:dartz/dartz.dart';
import 'package:hive_ce/hive.dart';
import 'package:weather/features/weather/data/models/geocoding_model.dart';

import '../../../../core/error/failure.dart';

class LocalStorageDataSource {
  final Box<GeocodingModel> box;

  LocalStorageDataSource(this.box);

  Future<Either<Failure, void>> saveLocation(GeocodingModel location) async {
    try {
      await box.put(location.name, location);
      return Right(null);
    } catch (e) {
      return Left(StorageFailure("Can not access local storage"));
    }
  }

  Future<Either<Failure, void>> removeLocation(String name) async {
    try {
      await box.delete(name);
      return Right(null);
    } catch (e) {
      return Left(StorageFailure("Can not access local storage"));
    }
  }

  Either<Failure, List<GeocodingModel>> getSavedLocations() {
    try {
      final models = box.values.toList();
      return Right(models);
    } catch (e) {
      return Left(StorageFailure("Can not access local storage"));
    }
  }
}
