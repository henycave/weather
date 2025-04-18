// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocoding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeocodingModel {

// ignore: invalid_annotation_target
@HiveField(0)@JsonKey(name: 'name') String get name;// ignore: invalid_annotation_target
@HiveField(1)@JsonKey(name: 'latitude') double get latitude;// ignore: invalid_annotation_target
@HiveField(2)@JsonKey(name: 'longitude') double get longitude;
/// Create a copy of GeocodingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeocodingModelCopyWith<GeocodingModel> get copyWith => _$GeocodingModelCopyWithImpl<GeocodingModel>(this as GeocodingModel, _$identity);

  /// Serializes this GeocodingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeocodingModel&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,latitude,longitude);

@override
String toString() {
  return 'GeocodingModel(name: $name, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $GeocodingModelCopyWith<$Res>  {
  factory $GeocodingModelCopyWith(GeocodingModel value, $Res Function(GeocodingModel) _then) = _$GeocodingModelCopyWithImpl;
@useResult
$Res call({
@HiveField(0)@JsonKey(name: 'name') String name,@HiveField(1)@JsonKey(name: 'latitude') double latitude,@HiveField(2)@JsonKey(name: 'longitude') double longitude
});




}
/// @nodoc
class _$GeocodingModelCopyWithImpl<$Res>
    implements $GeocodingModelCopyWith<$Res> {
  _$GeocodingModelCopyWithImpl(this._self, this._then);

  final GeocodingModel _self;
  final $Res Function(GeocodingModel) _then;

/// Create a copy of GeocodingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GeocodingModel implements GeocodingModel {
  const _GeocodingModel({@HiveField(0)@JsonKey(name: 'name') required this.name, @HiveField(1)@JsonKey(name: 'latitude') required this.latitude, @HiveField(2)@JsonKey(name: 'longitude') required this.longitude});
  factory _GeocodingModel.fromJson(Map<String, dynamic> json) => _$GeocodingModelFromJson(json);

// ignore: invalid_annotation_target
@override@HiveField(0)@JsonKey(name: 'name') final  String name;
// ignore: invalid_annotation_target
@override@HiveField(1)@JsonKey(name: 'latitude') final  double latitude;
// ignore: invalid_annotation_target
@override@HiveField(2)@JsonKey(name: 'longitude') final  double longitude;

/// Create a copy of GeocodingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeocodingModelCopyWith<_GeocodingModel> get copyWith => __$GeocodingModelCopyWithImpl<_GeocodingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeocodingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeocodingModel&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,latitude,longitude);

@override
String toString() {
  return 'GeocodingModel(name: $name, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$GeocodingModelCopyWith<$Res> implements $GeocodingModelCopyWith<$Res> {
  factory _$GeocodingModelCopyWith(_GeocodingModel value, $Res Function(_GeocodingModel) _then) = __$GeocodingModelCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0)@JsonKey(name: 'name') String name,@HiveField(1)@JsonKey(name: 'latitude') double latitude,@HiveField(2)@JsonKey(name: 'longitude') double longitude
});




}
/// @nodoc
class __$GeocodingModelCopyWithImpl<$Res>
    implements _$GeocodingModelCopyWith<$Res> {
  __$GeocodingModelCopyWithImpl(this._self, this._then);

  final _GeocodingModel _self;
  final $Res Function(_GeocodingModel) _then;

/// Create a copy of GeocodingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_GeocodingModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
