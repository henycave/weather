import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_weather_model.freezed.dart';
part 'current_weather_model.g.dart';


@freezed
abstract class CurrentWeatherModel with _$CurrentWeatherModel{
  const factory CurrentWeatherModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'temperature_2m') required double currentTemperature,
    required double rain,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'uv_index') required double uvIndex,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'is_day') required int isDay,
})= _CurrentWeatherModel;


  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherModelFromJson(json);
}