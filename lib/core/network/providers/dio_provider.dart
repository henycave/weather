import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dio_client.dart';

part 'dio_provider.g.dart';


@riverpod
Dio dio(ref){
  final dio = Dio();
  dio.options.connectTimeout = const Duration(seconds: 5);
  dio.options.receiveTimeout = const Duration(seconds: 3);
  return dio;
}

@riverpod
DioClient dioClient(ref){
  final dio = ref.watch(dioProvider);
  return DioClient(dio);
}