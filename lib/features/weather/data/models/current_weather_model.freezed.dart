// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrentWeatherModel {

// ignore: invalid_annotation_target
@JsonKey(name: 'temperature_2m') double get currentTemperature; double get rain;// ignore: invalid_annotation_target
@JsonKey(name: 'uv_index') double get uvIndex;// ignore: invalid_annotation_target
@JsonKey(name: 'is_day') int get isDay;
/// Create a copy of CurrentWeatherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentWeatherModelCopyWith<CurrentWeatherModel> get copyWith => _$CurrentWeatherModelCopyWithImpl<CurrentWeatherModel>(this as CurrentWeatherModel, _$identity);

  /// Serializes this CurrentWeatherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentWeatherModel&&(identical(other.currentTemperature, currentTemperature) || other.currentTemperature == currentTemperature)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex)&&(identical(other.isDay, isDay) || other.isDay == isDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentTemperature,rain,uvIndex,isDay);

@override
String toString() {
  return 'CurrentWeatherModel(currentTemperature: $currentTemperature, rain: $rain, uvIndex: $uvIndex, isDay: $isDay)';
}


}

/// @nodoc
abstract mixin class $CurrentWeatherModelCopyWith<$Res>  {
  factory $CurrentWeatherModelCopyWith(CurrentWeatherModel value, $Res Function(CurrentWeatherModel) _then) = _$CurrentWeatherModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'temperature_2m') double currentTemperature, double rain,@JsonKey(name: 'uv_index') double uvIndex,@JsonKey(name: 'is_day') int isDay
});




}
/// @nodoc
class _$CurrentWeatherModelCopyWithImpl<$Res>
    implements $CurrentWeatherModelCopyWith<$Res> {
  _$CurrentWeatherModelCopyWithImpl(this._self, this._then);

  final CurrentWeatherModel _self;
  final $Res Function(CurrentWeatherModel) _then;

/// Create a copy of CurrentWeatherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentTemperature = null,Object? rain = null,Object? uvIndex = null,Object? isDay = null,}) {
  return _then(_self.copyWith(
currentTemperature: null == currentTemperature ? _self.currentTemperature : currentTemperature // ignore: cast_nullable_to_non_nullable
as double,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double,uvIndex: null == uvIndex ? _self.uvIndex : uvIndex // ignore: cast_nullable_to_non_nullable
as double,isDay: null == isDay ? _self.isDay : isDay // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CurrentWeatherModel implements CurrentWeatherModel {
  const _CurrentWeatherModel({@JsonKey(name: 'temperature_2m') required this.currentTemperature, required this.rain, @JsonKey(name: 'uv_index') required this.uvIndex, @JsonKey(name: 'is_day') required this.isDay});
  factory _CurrentWeatherModel.fromJson(Map<String, dynamic> json) => _$CurrentWeatherModelFromJson(json);

// ignore: invalid_annotation_target
@override@JsonKey(name: 'temperature_2m') final  double currentTemperature;
@override final  double rain;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'uv_index') final  double uvIndex;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'is_day') final  int isDay;

/// Create a copy of CurrentWeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentWeatherModelCopyWith<_CurrentWeatherModel> get copyWith => __$CurrentWeatherModelCopyWithImpl<_CurrentWeatherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrentWeatherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentWeatherModel&&(identical(other.currentTemperature, currentTemperature) || other.currentTemperature == currentTemperature)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex)&&(identical(other.isDay, isDay) || other.isDay == isDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentTemperature,rain,uvIndex,isDay);

@override
String toString() {
  return 'CurrentWeatherModel(currentTemperature: $currentTemperature, rain: $rain, uvIndex: $uvIndex, isDay: $isDay)';
}


}

/// @nodoc
abstract mixin class _$CurrentWeatherModelCopyWith<$Res> implements $CurrentWeatherModelCopyWith<$Res> {
  factory _$CurrentWeatherModelCopyWith(_CurrentWeatherModel value, $Res Function(_CurrentWeatherModel) _then) = __$CurrentWeatherModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'temperature_2m') double currentTemperature, double rain,@JsonKey(name: 'uv_index') double uvIndex,@JsonKey(name: 'is_day') int isDay
});




}
/// @nodoc
class __$CurrentWeatherModelCopyWithImpl<$Res>
    implements _$CurrentWeatherModelCopyWith<$Res> {
  __$CurrentWeatherModelCopyWithImpl(this._self, this._then);

  final _CurrentWeatherModel _self;
  final $Res Function(_CurrentWeatherModel) _then;

/// Create a copy of CurrentWeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentTemperature = null,Object? rain = null,Object? uvIndex = null,Object? isDay = null,}) {
  return _then(_CurrentWeatherModel(
currentTemperature: null == currentTemperature ? _self.currentTemperature : currentTemperature // ignore: cast_nullable_to_non_nullable
as double,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double,uvIndex: null == uvIndex ? _self.uvIndex : uvIndex // ignore: cast_nullable_to_non_nullable
as double,isDay: null == isDay ? _self.isDay : isDay // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
