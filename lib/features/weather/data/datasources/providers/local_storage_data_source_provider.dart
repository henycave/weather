import 'package:hive_ce/hive.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/features/weather/data/datasources/local_storage_data_source.dart';
import 'package:weather/features/weather/data/models/geocoding_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';



part 'local_storage_data_source_provider.g.dart';

@riverpod
LocalStorageDataSource localStorageDataSource(ref){
  final box = Hive.box<GeocodingModel>(kLocationBox);
  return LocalStorageDataSource(box);
}