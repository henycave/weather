import 'package:weather/features/weather/data/datasources/remote_location_data_source.dart';
import '../../../../../core/network/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';



part 'remote_location_data_source_provider.g.dart';

@riverpod
RemoteLocationDataSource remoteLocationDataSource(ref){
  final dioClient = ref.watch(dioClientProvider);
  return RemoteLocationDataSource(dioClient);
}