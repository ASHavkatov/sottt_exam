import 'package:json_annotation/json_annotation.dart';
part 'home_model_place.g.dart';

@JsonSerializable()
class HomeModelPlace {
  final String title;
  final int distance;
  final String image;

  HomeModelPlace({
    required this.title,
    required this.image,
    required this.distance,
  });

  factory HomeModelPlace.fromJson(Map<String, dynamic>json)=> _$HomeModelPlaceFromJson(json);
  Map<String, dynamic>toJson()=> _$HomeModelPlaceToJson(this);
}
