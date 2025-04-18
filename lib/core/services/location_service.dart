import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

import '../error/failure.dart';

class LocationService {
  Future<Either<Failure, Position>> getCurrentPosition() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Left(LocationFailure('Location services are disabled.'));
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Left(LocationFailure('Location permissions are denied'));
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Left(
            LocationFailure('Location permissions are permanently denied.'));
      }

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      return Right(position);
    }catch (e){
      return Left(LocationFailure(e.toString()));
    }
  }
}
