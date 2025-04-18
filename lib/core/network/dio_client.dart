import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '../error/failure.dart';

class DioClient {
  final Dio dio;

  DioClient(this.dio);

  Future<Either<Failure, T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      final data = fromJson(response.data);
      return right(data);
    } on DioException catch (e) {
      return left(_handleDioError(e));
    }
  }

  Failure _handleDioError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return NetworkFailure('Connection timed out');
    } else if (e.type == DioExceptionType.badResponse) {
      final statusCode = e.response?.statusCode;
      if (statusCode == 404) {
        return ServerFailure('Resource not found (404)');
      } else if (statusCode == 401) {
        return ServerFailure('Unauthorized request (401)');
      } else {
        return ServerFailure('Server error: $statusCode');
      }
    }else if (e.type == DioExceptionType.cancel) {
      return NetworkFailure('Request was cancelled');
    } else if (e.type == DioExceptionType.unknown) {
      return ServerFailure('Unexpected server error');
    }else {
      return ServerFailure('Something went wrong');
    }
  }
}
