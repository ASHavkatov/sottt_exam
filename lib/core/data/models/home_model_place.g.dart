// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModelPlace _$HomeModelPlaceFromJson(Map<String, dynamic> json) =>
    HomeModelPlace(
      title: json['title'] as String,
      image: json['image'] as String,
      distance: (json['distance'] as num).toInt(),
    );

Map<String, dynamic> _$HomeModelPlaceToJson(HomeModelPlace instance) =>
    <String, dynamic>{
      'title': instance.title,
      'distance': instance.distance,
      'image': instance.image,
    };
