import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

import '../../domain/entities/geocoding.dart';

part 'geocoding_model.freezed.dart';
part 'geocoding_model.g.dart';

@freezed
@HiveType(typeId: 0, adapterName: 'GeocodingModelAdapter')
abstract class GeocodingModel with _$GeocodingModel {
  const factory GeocodingModel({
    // ignore: invalid_annotation_target
    @HiveField(0) @JsonKey(name: 'name') required String name,
    // ignore: invalid_annotation_target
    @HiveField(1) @JsonKey(name: 'latitude') required double latitude,
    // ignore: invalid_annotation_target
    @HiveField(2) @JsonKey(name: 'longitude') required double longitude,
  }) = _GeocodingModel;

  factory GeocodingModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodingModelFromJson(json);
}

extension GeocodingModelMapper on GeocodingModel {
  Geocoding toEntity() {
    return Geocoding(
      name: name,
      latitude: latitude,
      longitude: longitude,
    );
  }

  static GeocodingModel fromEntity(Geocoding entity) {
    return GeocodingModel(
      name: entity.name,
      latitude: entity.latitude,
      longitude: entity.longitude,
    );
  }
}
