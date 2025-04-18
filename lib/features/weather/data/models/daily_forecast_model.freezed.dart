// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyForecastModel {

 DateTime get date; double get maxTemperature; double get minTemperature; int get precipitationProbability; double get precipitationSum; double get maxWindSpeed; int get cloudCoverMean; double get shortwaveRadiationSum;
/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyForecastModelCopyWith<DailyForecastModel> get copyWith => _$DailyForecastModelCopyWithImpl<DailyForecastModel>(this as DailyForecastModel, _$identity);

  /// Serializes this DailyForecastModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyForecastModel&&(identical(other.date, date) || other.date == date)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.precipitationProbability, precipitationProbability) || other.precipitationProbability == precipitationProbability)&&(identical(other.precipitationSum, precipitationSum) || other.precipitationSum == precipitationSum)&&(identical(other.maxWindSpeed, maxWindSpeed) || other.maxWindSpeed == maxWindSpeed)&&(identical(other.cloudCoverMean, cloudCoverMean) || other.cloudCoverMean == cloudCoverMean)&&(identical(other.shortwaveRadiationSum, shortwaveRadiationSum) || other.shortwaveRadiationSum == shortwaveRadiationSum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,maxTemperature,minTemperature,precipitationProbability,precipitationSum,maxWindSpeed,cloudCoverMean,shortwaveRadiationSum);

@override
String toString() {
  return 'DailyForecastModel(date: $date, maxTemperature: $maxTemperature, minTemperature: $minTemperature, precipitationProbability: $precipitationProbability, precipitationSum: $precipitationSum, maxWindSpeed: $maxWindSpeed, cloudCoverMean: $cloudCoverMean, shortwaveRadiationSum: $shortwaveRadiationSum)';
}


}

/// @nodoc
abstract mixin class $DailyForecastModelCopyWith<$Res>  {
  factory $DailyForecastModelCopyWith(DailyForecastModel value, $Res Function(DailyForecastModel) _then) = _$DailyForecastModelCopyWithImpl;
@useResult
$Res call({
 DateTime date, double maxTemperature, double minTemperature, int precipitationProbability, double precipitationSum, double maxWindSpeed, int cloudCoverMean, double shortwaveRadiationSum
});




}
/// @nodoc
class _$DailyForecastModelCopyWithImpl<$Res>
    implements $DailyForecastModelCopyWith<$Res> {
  _$DailyForecastModelCopyWithImpl(this._self, this._then);

  final DailyForecastModel _self;
  final $Res Function(DailyForecastModel) _then;

/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? maxTemperature = null,Object? minTemperature = null,Object? precipitationProbability = null,Object? precipitationSum = null,Object? maxWindSpeed = null,Object? cloudCoverMean = null,Object? shortwaveRadiationSum = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as double,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as double,precipitationProbability: null == precipitationProbability ? _self.precipitationProbability : precipitationProbability // ignore: cast_nullable_to_non_nullable
as int,precipitationSum: null == precipitationSum ? _self.precipitationSum : precipitationSum // ignore: cast_nullable_to_non_nullable
as double,maxWindSpeed: null == maxWindSpeed ? _self.maxWindSpeed : maxWindSpeed // ignore: cast_nullable_to_non_nullable
as double,cloudCoverMean: null == cloudCoverMean ? _self.cloudCoverMean : cloudCoverMean // ignore: cast_nullable_to_non_nullable
as int,shortwaveRadiationSum: null == shortwaveRadiationSum ? _self.shortwaveRadiationSum : shortwaveRadiationSum // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DailyForecastModel implements DailyForecastModel {
  const _DailyForecastModel({required this.date, required this.maxTemperature, required this.minTemperature, required this.precipitationProbability, required this.precipitationSum, required this.maxWindSpeed, required this.cloudCoverMean, required this.shortwaveRadiationSum});
  factory _DailyForecastModel.fromJson(Map<String, dynamic> json) => _$DailyForecastModelFromJson(json);

@override final  DateTime date;
@override final  double maxTemperature;
@override final  double minTemperature;
@override final  int precipitationProbability;
@override final  double precipitationSum;
@override final  double maxWindSpeed;
@override final  int cloudCoverMean;
@override final  double shortwaveRadiationSum;

/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyForecastModelCopyWith<_DailyForecastModel> get copyWith => __$DailyForecastModelCopyWithImpl<_DailyForecastModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyForecastModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyForecastModel&&(identical(other.date, date) || other.date == date)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.precipitationProbability, precipitationProbability) || other.precipitationProbability == precipitationProbability)&&(identical(other.precipitationSum, precipitationSum) || other.precipitationSum == precipitationSum)&&(identical(other.maxWindSpeed, maxWindSpeed) || other.maxWindSpeed == maxWindSpeed)&&(identical(other.cloudCoverMean, cloudCoverMean) || other.cloudCoverMean == cloudCoverMean)&&(identical(other.shortwaveRadiationSum, shortwaveRadiationSum) || other.shortwaveRadiationSum == shortwaveRadiationSum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,maxTemperature,minTemperature,precipitationProbability,precipitationSum,maxWindSpeed,cloudCoverMean,shortwaveRadiationSum);

@override
String toString() {
  return 'DailyForecastModel(date: $date, maxTemperature: $maxTemperature, minTemperature: $minTemperature, precipitationProbability: $precipitationProbability, precipitationSum: $precipitationSum, maxWindSpeed: $maxWindSpeed, cloudCoverMean: $cloudCoverMean, shortwaveRadiationSum: $shortwaveRadiationSum)';
}


}

/// @nodoc
abstract mixin class _$DailyForecastModelCopyWith<$Res> implements $DailyForecastModelCopyWith<$Res> {
  factory _$DailyForecastModelCopyWith(_DailyForecastModel value, $Res Function(_DailyForecastModel) _then) = __$DailyForecastModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double maxTemperature, double minTemperature, int precipitationProbability, double precipitationSum, double maxWindSpeed, int cloudCoverMean, double shortwaveRadiationSum
});




}
/// @nodoc
class __$DailyForecastModelCopyWithImpl<$Res>
    implements _$DailyForecastModelCopyWith<$Res> {
  __$DailyForecastModelCopyWithImpl(this._self, this._then);

  final _DailyForecastModel _self;
  final $Res Function(_DailyForecastModel) _then;

/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? maxTemperature = null,Object? minTemperature = null,Object? precipitationProbability = null,Object? precipitationSum = null,Object? maxWindSpeed = null,Object? cloudCoverMean = null,Object? shortwaveRadiationSum = null,}) {
  return _then(_DailyForecastModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as double,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as double,precipitationProbability: null == precipitationProbability ? _self.precipitationProbability : precipitationProbability // ignore: cast_nullable_to_non_nullable
as int,precipitationSum: null == precipitationSum ? _self.precipitationSum : precipitationSum // ignore: cast_nullable_to_non_nullable
as double,maxWindSpeed: null == maxWindSpeed ? _self.maxWindSpeed : maxWindSpeed // ignore: cast_nullable_to_non_nullable
as double,cloudCoverMean: null == cloudCoverMean ? _self.cloudCoverMean : cloudCoverMean // ignore: cast_nullable_to_non_nullable
as int,shortwaveRadiationSum: null == shortwaveRadiationSum ? _self.shortwaveRadiationSum : shortwaveRadiationSum // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
