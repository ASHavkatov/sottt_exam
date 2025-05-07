// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
  id: (json['id'] as num).toInt(),
  category: json['category'] as String,
  image: json['image'] as String,
  price: (json['price'] as num).toInt(),
  currency: json['currency'] as String,
  area: (json['area'] as num).toDouble(),
  numOfRooms: (json['numOfRooms'] as num).toInt(),
  totalFloors: (json['totalFloors'] as num).toInt(),
  floor: (json['floor'] as num).toInt(),
  nearestPopularPlace: HomeModelPlace.fromJson(
    json['nearestPopularPlace'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
  'id': instance.id,
  'category': instance.category,
  'image': instance.image,
  'price': instance.price,
  'currency': instance.currency,
  'area': instance.area,
  'numOfRooms': instance.numOfRooms,
  'totalFloors': instance.totalFloors,
  'floor': instance.floor,
  'nearestPopularPlace': instance.nearestPopularPlace,
};
