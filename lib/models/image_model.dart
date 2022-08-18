import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

@JsonSerializable()
class PixelfordImage {
  String id;
  String filename;
  String title;
  String description;

  @JsonKey(name: 'url_full_size')
  String urlFullSize;

  @JsonKey(name: 'url_medium_size')
  String urlMediumSize;

  @JsonKey(name: 'url_small_size')
  String urlSmallSize;

  PixelfordImage({
    required this.id,
    required this.filename,
    required this.title,
    required this.description,
    required this.urlFullSize,
    required this.urlMediumSize,
    required this.urlSmallSize,
  });

  // Connect the generated [_$PersonFromJson] function to the `fromJson` factory.
  factory PixelfordImage.fromJson(Map<String, dynamic> json) => _$PixelfordImageFromJson(json);

  // Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PixelfordImageToJson(this);

}