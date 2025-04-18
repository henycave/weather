// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrentWeather {

 double get currentTemperature; double get rain; double get uvIndex; bool get isDay; AirQuality get airQuality; double? get grassPollen; double? get birchPollen; double? get olivePollen;
/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentWeatherCopyWith<CurrentWeather> get copyWith => _$CurrentWeatherCopyWithImpl<CurrentWeather>(this as CurrentWeather, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentWeather&&(identical(other.currentTemperature, currentTemperature) || other.currentTemperature == currentTemperature)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex)&&(identical(other.isDay, isDay) || other.isDay == isDay)&&(identical(other.airQuality, airQuality) || other.airQuality == airQuality)&&(identical(other.grassPollen, grassPollen) || other.grassPollen == grassPollen)&&(identical(other.birchPollen, birchPollen) || other.birchPollen == birchPollen)&&(identical(other.olivePollen, olivePollen) || other.olivePollen == olivePollen));
}


@override
int get hashCode => Object.hash(runtimeType,currentTemperature,rain,uvIndex,isDay,airQuality,grassPollen,birchPollen,olivePollen);

@override
String toString() {
  return 'CurrentWeather(currentTemperature: $currentTemperature, rain: $rain, uvIndex: $uvIndex, isDay: $isDay, airQuality: $airQuality, grassPollen: $grassPollen, birchPollen: $birchPollen, olivePollen: $olivePollen)';
}


}

/// @nodoc
abstract mixin class $CurrentWeatherCopyWith<$Res>  {
  factory $CurrentWeatherCopyWith(CurrentWeather value, $Res Function(CurrentWeather) _then) = _$CurrentWeatherCopyWithImpl;
@useResult
$Res call({
 double currentTemperature, double rain, double uvIndex, bool isDay, AirQuality airQuality, double? grassPollen, double? birchPollen, double? olivePollen
});




}
/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._self, this._then);

  final CurrentWeather _self;
  final $Res Function(CurrentWeather) _then;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentTemperature = null,Object? rain = null,Object? uvIndex = null,Object? isDay = null,Object? airQuality = null,Object? grassPollen = freezed,Object? birchPollen = freezed,Object? olivePollen = freezed,}) {
  return _then(_self.copyWith(
currentTemperature: null == currentTemperature ? _self.currentTemperature : currentTemperature // ignore: cast_nullable_to_non_nullable
as double,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double,uvIndex: null == uvIndex ? _self.uvIndex : uvIndex // ignore: cast_nullable_to_non_nullable
as double,isDay: null == isDay ? _self.isDay : isDay // ignore: cast_nullable_to_non_nullable
as bool,airQuality: null == airQuality ? _self.airQuality : airQuality // ignore: cast_nullable_to_non_nullable
as AirQuality,grassPollen: freezed == grassPollen ? _self.grassPollen : grassPollen // ignore: cast_nullable_to_non_nullable
as double?,birchPollen: freezed == birchPollen ? _self.birchPollen : birchPollen // ignore: cast_nullable_to_non_nullable
as double?,olivePollen: freezed == olivePollen ? _self.olivePollen : olivePollen // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc


class _CurrentWeather implements CurrentWeather {
  const _CurrentWeather({required this.currentTemperature, required this.rain, required this.uvIndex, required this.isDay, required this.airQuality, this.grassPollen, this.birchPollen, this.olivePollen});
  

@override final  double currentTemperature;
@override final  double rain;
@override final  double uvIndex;
@override final  bool isDay;
@override final  AirQuality airQuality;
@override final  double? grassPollen;
@override final  double? birchPollen;
@override final  double? olivePollen;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentWeatherCopyWith<_CurrentWeather> get copyWith => __$CurrentWeatherCopyWithImpl<_CurrentWeather>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentWeather&&(identical(other.currentTemperature, currentTemperature) || other.currentTemperature == currentTemperature)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex)&&(identical(other.isDay, isDay) || other.isDay == isDay)&&(identical(other.airQuality, airQuality) || other.airQuality == airQuality)&&(identical(other.grassPollen, grassPollen) || other.grassPollen == grassPollen)&&(identical(other.birchPollen, birchPollen) || other.birchPollen == birchPollen)&&(identical(other.olivePollen, olivePollen) || other.olivePollen == olivePollen));
}


@override
int get hashCode => Object.hash(runtimeType,currentTemperature,rain,uvIndex,isDay,airQuality,grassPollen,birchPollen,olivePollen);

@override
String toString() {
  return 'CurrentWeather(currentTemperature: $currentTemperature, rain: $rain, uvIndex: $uvIndex, isDay: $isDay, airQuality: $airQuality, grassPollen: $grassPollen, birchPollen: $birchPollen, olivePollen: $olivePollen)';
}


}

/// @nodoc
abstract mixin class _$CurrentWeatherCopyWith<$Res> implements $CurrentWeatherCopyWith<$Res> {
  factory _$CurrentWeatherCopyWith(_CurrentWeather value, $Res Function(_CurrentWeather) _then) = __$CurrentWeatherCopyWithImpl;
@override @useResult
$Res call({
 double currentTemperature, double rain, double uvIndex, bool isDay, AirQuality airQuality, double? grassPollen, double? birchPollen, double? olivePollen
});




}
/// @nodoc
class __$CurrentWeatherCopyWithImpl<$Res>
    implements _$CurrentWeatherCopyWith<$Res> {
  __$CurrentWeatherCopyWithImpl(this._self, this._then);

  final _CurrentWeather _self;
  final $Res Function(_CurrentWeather) _then;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentTemperature = null,Object? rain = null,Object? uvIndex = null,Object? isDay = null,Object? airQuality = null,Object? grassPollen = freezed,Object? birchPollen = freezed,Object? olivePollen = freezed,}) {
  return _then(_CurrentWeather(
currentTemperature: null == currentTemperature ? _self.currentTemperature : currentTemperature // ignore: cast_nullable_to_non_nullable
as double,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double,uvIndex: null == uvIndex ? _self.uvIndex : uvIndex // ignore: cast_nullable_to_non_nullable
as double,isDay: null == isDay ? _self.isDay : isDay // ignore: cast_nullable_to_non_nullable
as bool,airQuality: null == airQuality ? _self.airQuality : airQuality // ignore: cast_nullable_to_non_nullable
as AirQuality,grassPollen: freezed == grassPollen ? _self.grassPollen : grassPollen // ignore: cast_nullable_to_non_nullable
as double?,birchPollen: freezed == birchPollen ? _self.birchPollen : birchPollen // ignore: cast_nullable_to_non_nullable
as double?,olivePollen: freezed == olivePollen ? _self.olivePollen : olivePollen // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
