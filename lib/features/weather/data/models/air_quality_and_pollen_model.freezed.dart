// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_quality_and_pollen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AirQualityAndPollenModel {

// ignore: invalid_annotation_target
@JsonKey(name: 'european_aqi') int get europeanAqi;// ignore: invalid_annotation_target
@JsonKey(name: 'grass_pollen') double? get grassPollen;// ignore: invalid_annotation_target
@JsonKey(name: 'birch_pollen') double? get birchPollen;// ignore: invalid_annotation_target
@JsonKey(name: 'olive_pollen') double? get olivePollen;
/// Create a copy of AirQualityAndPollenModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AirQualityAndPollenModelCopyWith<AirQualityAndPollenModel> get copyWith => _$AirQualityAndPollenModelCopyWithImpl<AirQualityAndPollenModel>(this as AirQualityAndPollenModel, _$identity);

  /// Serializes this AirQualityAndPollenModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AirQualityAndPollenModel&&(identical(other.europeanAqi, europeanAqi) || other.europeanAqi == europeanAqi)&&(identical(other.grassPollen, grassPollen) || other.grassPollen == grassPollen)&&(identical(other.birchPollen, birchPollen) || other.birchPollen == birchPollen)&&(identical(other.olivePollen, olivePollen) || other.olivePollen == olivePollen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,europeanAqi,grassPollen,birchPollen,olivePollen);

@override
String toString() {
  return 'AirQualityAndPollenModel(europeanAqi: $europeanAqi, grassPollen: $grassPollen, birchPollen: $birchPollen, olivePollen: $olivePollen)';
}


}

/// @nodoc
abstract mixin class $AirQualityAndPollenModelCopyWith<$Res>  {
  factory $AirQualityAndPollenModelCopyWith(AirQualityAndPollenModel value, $Res Function(AirQualityAndPollenModel) _then) = _$AirQualityAndPollenModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'european_aqi') int europeanAqi,@JsonKey(name: 'grass_pollen') double? grassPollen,@JsonKey(name: 'birch_pollen') double? birchPollen,@JsonKey(name: 'olive_pollen') double? olivePollen
});




}
/// @nodoc
class _$AirQualityAndPollenModelCopyWithImpl<$Res>
    implements $AirQualityAndPollenModelCopyWith<$Res> {
  _$AirQualityAndPollenModelCopyWithImpl(this._self, this._then);

  final AirQualityAndPollenModel _self;
  final $Res Function(AirQualityAndPollenModel) _then;

/// Create a copy of AirQualityAndPollenModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? europeanAqi = null,Object? grassPollen = freezed,Object? birchPollen = freezed,Object? olivePollen = freezed,}) {
  return _then(_self.copyWith(
europeanAqi: null == europeanAqi ? _self.europeanAqi : europeanAqi // ignore: cast_nullable_to_non_nullable
as int,grassPollen: freezed == grassPollen ? _self.grassPollen : grassPollen // ignore: cast_nullable_to_non_nullable
as double?,birchPollen: freezed == birchPollen ? _self.birchPollen : birchPollen // ignore: cast_nullable_to_non_nullable
as double?,olivePollen: freezed == olivePollen ? _self.olivePollen : olivePollen // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AirQualityAndPollenModel implements AirQualityAndPollenModel {
  const _AirQualityAndPollenModel({@JsonKey(name: 'european_aqi') required this.europeanAqi, @JsonKey(name: 'grass_pollen') this.grassPollen, @JsonKey(name: 'birch_pollen') this.birchPollen, @JsonKey(name: 'olive_pollen') this.olivePollen});
  factory _AirQualityAndPollenModel.fromJson(Map<String, dynamic> json) => _$AirQualityAndPollenModelFromJson(json);

// ignore: invalid_annotation_target
@override@JsonKey(name: 'european_aqi') final  int europeanAqi;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'grass_pollen') final  double? grassPollen;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'birch_pollen') final  double? birchPollen;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'olive_pollen') final  double? olivePollen;

/// Create a copy of AirQualityAndPollenModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AirQualityAndPollenModelCopyWith<_AirQualityAndPollenModel> get copyWith => __$AirQualityAndPollenModelCopyWithImpl<_AirQualityAndPollenModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AirQualityAndPollenModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AirQualityAndPollenModel&&(identical(other.europeanAqi, europeanAqi) || other.europeanAqi == europeanAqi)&&(identical(other.grassPollen, grassPollen) || other.grassPollen == grassPollen)&&(identical(other.birchPollen, birchPollen) || other.birchPollen == birchPollen)&&(identical(other.olivePollen, olivePollen) || other.olivePollen == olivePollen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,europeanAqi,grassPollen,birchPollen,olivePollen);

@override
String toString() {
  return 'AirQualityAndPollenModel(europeanAqi: $europeanAqi, grassPollen: $grassPollen, birchPollen: $birchPollen, olivePollen: $olivePollen)';
}


}

/// @nodoc
abstract mixin class _$AirQualityAndPollenModelCopyWith<$Res> implements $AirQualityAndPollenModelCopyWith<$Res> {
  factory _$AirQualityAndPollenModelCopyWith(_AirQualityAndPollenModel value, $Res Function(_AirQualityAndPollenModel) _then) = __$AirQualityAndPollenModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'european_aqi') int europeanAqi,@JsonKey(name: 'grass_pollen') double? grassPollen,@JsonKey(name: 'birch_pollen') double? birchPollen,@JsonKey(name: 'olive_pollen') double? olivePollen
});




}
/// @nodoc
class __$AirQualityAndPollenModelCopyWithImpl<$Res>
    implements _$AirQualityAndPollenModelCopyWith<$Res> {
  __$AirQualityAndPollenModelCopyWithImpl(this._self, this._then);

  final _AirQualityAndPollenModel _self;
  final $Res Function(_AirQualityAndPollenModel) _then;

/// Create a copy of AirQualityAndPollenModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? europeanAqi = null,Object? grassPollen = freezed,Object? birchPollen = freezed,Object? olivePollen = freezed,}) {
  return _then(_AirQualityAndPollenModel(
europeanAqi: null == europeanAqi ? _self.europeanAqi : europeanAqi // ignore: cast_nullable_to_non_nullable
as int,grassPollen: freezed == grassPollen ? _self.grassPollen : grassPollen // ignore: cast_nullable_to_non_nullable
as double?,birchPollen: freezed == birchPollen ? _self.birchPollen : birchPollen // ignore: cast_nullable_to_non_nullable
as double?,olivePollen: freezed == olivePollen ? _self.olivePollen : olivePollen // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
