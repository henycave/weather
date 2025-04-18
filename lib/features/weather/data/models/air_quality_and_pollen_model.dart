import 'package:freezed_annotation/freezed_annotation.dart';

part 'air_quality_and_pollen_model.freezed.dart';
part 'air_quality_and_pollen_model.g.dart';

@freezed
abstract class AirQualityAndPollenModel with _$AirQualityAndPollenModel {
  const factory AirQualityAndPollenModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'european_aqi') required int europeanAqi,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'grass_pollen') double? grassPollen,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'birch_pollen') double? birchPollen,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'olive_pollen') double? olivePollen,
  }) = _AirQualityAndPollenModel;

  factory AirQualityAndPollenModel.fromJson(Map<String, dynamic> json) =>
      _$AirQualityAndPollenModelFromJson(json);
}
