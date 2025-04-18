import 'package:dartz/dartz.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/features/weather/data/models/geocoding_model.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';

class RemoteLocationDataSource {
  final DioClient dioClient;

  RemoteLocationDataSource(this.dioClient);

  Future<Either<Failure, List<GeocodingModel>>> getRemoteLocation({
    required String query
  }) async {
    return await dioClient.get(
      kGeocodingURL,
      queryParameters: {
        'name': query,
        'count': 10,
      },
      fromJson: (json) {
        final List<dynamic> results = json['results'] ?? [];
        return results.map((item) => GeocodingModel.fromJson(item as Map<String, dynamic>)).toList();
      },
    );
  }
}
