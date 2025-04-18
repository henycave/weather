import 'package:geolocator/geolocator.dart';

class Geocoding {
  final String name;
  final double latitude;
  final double longitude;

  Geocoding({
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  factory Geocoding.fromPosition(Position position, {String name = 'local'}) {
    return Geocoding(
      name: name,
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }

}