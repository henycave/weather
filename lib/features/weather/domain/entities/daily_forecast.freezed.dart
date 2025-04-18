// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DailyForecast {

 DateTime get date; double get maxTemperature; double get minTemperature; int get precipitationProbability; double get precipitationSum; double get maxWindSpeed; double get shortwaveRadiationSum; int get cloudCoverMean;
/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyForecastCopyWith<DailyForecast> get copyWith => _$DailyForecastCopyWithImpl<DailyForecast>(this as DailyForecast, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyForecast&&(identical(other.date, date) || other.date == date)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.precipitationProbability, precipitationProbability) || other.precipitationProbability == precipitationProbability)&&(identical(other.precipitationSum, precipitationSum) || other.precipitationSum == precipitationSum)&&(identical(other.maxWindSpeed, maxWindSpeed) || other.maxWindSpeed == maxWindSpeed)&&(identical(other.shortwaveRadiationSum, shortwaveRadiationSum) || other.shortwaveRadiationSum == shortwaveRadiationSum)&&(identical(other.cloudCoverMean, cloudCoverMean) || other.cloudCoverMean == cloudCoverMean));
}


@override
int get hashCode => Object.hash(runtimeType,date,maxTemperature,minTemperature,precipitationProbability,precipitationSum,maxWindSpeed,shortwaveRadiationSum,cloudCoverMean);

@override
String toString() {
  return 'DailyForecast(date: $date, maxTemperature: $maxTemperature, minTemperature: $minTemperature, precipitationProbability: $precipitationProbability, precipitationSum: $precipitationSum, maxWindSpeed: $maxWindSpeed, shortwaveRadiationSum: $shortwaveRadiationSum, cloudCoverMean: $cloudCoverMean)';
}


}

/// @nodoc
abstract mixin class $DailyForecastCopyWith<$Res>  {
  factory $DailyForecastCopyWith(DailyForecast value, $Res Function(DailyForecast) _then) = _$DailyForecastCopyWithImpl;
@useResult
$Res call({
 DateTime date, double maxTemperature, double minTemperature, int precipitationProbability, double precipitationSum, double maxWindSpeed, double shortwaveRadiationSum, int cloudCoverMean
});




}
/// @nodoc
class _$DailyForecastCopyWithImpl<$Res>
    implements $DailyForecastCopyWith<$Res> {
  _$DailyForecastCopyWithImpl(this._self, this._then);

  final DailyForecast _self;
  final $Res Function(DailyForecast) _then;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? maxTemperature = null,Object? minTemperature = null,Object? precipitationProbability = null,Object? precipitationSum = null,Object? maxWindSpeed = null,Object? shortwaveRadiationSum = null,Object? cloudCoverMean = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as double,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as double,precipitationProbability: null == precipitationProbability ? _self.precipitationProbability : precipitationProbability // ignore: cast_nullable_to_non_nullable
as int,precipitationSum: null == precipitationSum ? _self.precipitationSum : precipitationSum // ignore: cast_nullable_to_non_nullable
as double,maxWindSpeed: null == maxWindSpeed ? _self.maxWindSpeed : maxWindSpeed // ignore: cast_nullable_to_non_nullable
as double,shortwaveRadiationSum: null == shortwaveRadiationSum ? _self.shortwaveRadiationSum : shortwaveRadiationSum // ignore: cast_nullable_to_non_nullable
as double,cloudCoverMean: null == cloudCoverMean ? _self.cloudCoverMean : cloudCoverMean // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _DailyForecast implements DailyForecast {
  const _DailyForecast({required this.date, required this.maxTemperature, required this.minTemperature, required this.precipitationProbability, required this.precipitationSum, required this.maxWindSpeed, required this.shortwaveRadiationSum, required this.cloudCoverMean});
  

@override final  DateTime date;
@override final  double maxTemperature;
@override final  double minTemperature;
@override final  int precipitationProbability;
@override final  double precipitationSum;
@override final  double maxWindSpeed;
@override final  double shortwaveRadiationSum;
@override final  int cloudCoverMean;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyForecastCopyWith<_DailyForecast> get copyWith => __$DailyForecastCopyWithImpl<_DailyForecast>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyForecast&&(identical(other.date, date) || other.date == date)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.precipitationProbability, precipitationProbability) || other.precipitationProbability == precipitationProbability)&&(identical(other.precipitationSum, precipitationSum) || other.precipitationSum == precipitationSum)&&(identical(other.maxWindSpeed, maxWindSpeed) || other.maxWindSpeed == maxWindSpeed)&&(identical(other.shortwaveRadiationSum, shortwaveRadiationSum) || other.shortwaveRadiationSum == shortwaveRadiationSum)&&(identical(other.cloudCoverMean, cloudCoverMean) || other.cloudCoverMean == cloudCoverMean));
}


@override
int get hashCode => Object.hash(runtimeType,date,maxTemperature,minTemperature,precipitationProbability,precipitationSum,maxWindSpeed,shortwaveRadiationSum,cloudCoverMean);

@override
String toString() {
  return 'DailyForecast(date: $date, maxTemperature: $maxTemperature, minTemperature: $minTemperature, precipitationProbability: $precipitationProbability, precipitationSum: $precipitationSum, maxWindSpeed: $maxWindSpeed, shortwaveRadiationSum: $shortwaveRadiationSum, cloudCoverMean: $cloudCoverMean)';
}


}

/// @nodoc
abstract mixin class _$DailyForecastCopyWith<$Res> implements $DailyForecastCopyWith<$Res> {
  factory _$DailyForecastCopyWith(_DailyForecast value, $Res Function(_DailyForecast) _then) = __$DailyForecastCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double maxTemperature, double minTemperature, int precipitationProbability, double precipitationSum, double maxWindSpeed, double shortwaveRadiationSum, int cloudCoverMean
});




}
/// @nodoc
class __$DailyForecastCopyWithImpl<$Res>
    implements _$DailyForecastCopyWith<$Res> {
  __$DailyForecastCopyWithImpl(this._self, this._then);

  final _DailyForecast _self;
  final $Res Function(_DailyForecast) _then;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? maxTemperature = null,Object? minTemperature = null,Object? precipitationProbability = null,Object? precipitationSum = null,Object? maxWindSpeed = null,Object? shortwaveRadiationSum = null,Object? cloudCoverMean = null,}) {
  return _then(_DailyForecast(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as double,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as double,precipitationProbability: null == precipitationProbability ? _self.precipitationProbability : precipitationProbability // ignore: cast_nullable_to_non_nullable
as int,precipitationSum: null == precipitationSum ? _self.precipitationSum : precipitationSum // ignore: cast_nullable_to_non_nullable
as double,maxWindSpeed: null == maxWindSpeed ? _self.maxWindSpeed : maxWindSpeed // ignore: cast_nullable_to_non_nullable
as double,shortwaveRadiationSum: null == shortwaveRadiationSum ? _self.shortwaveRadiationSum : shortwaveRadiationSum // ignore: cast_nullable_to_non_nullable
as double,cloudCoverMean: null == cloudCoverMean ? _self.cloudCoverMean : cloudCoverMean // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
