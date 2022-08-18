// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PixelfordImage _$PixelfordImageFromJson(Map<String, dynamic> json) =>
    PixelfordImage(
      id: json['id'] as String,
      filename: json['filename'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      urlFullSize: json['url_full_size'] as String,
      urlMediumSize: json['url_medium_size'] as String,
      urlSmallSize: json['url_small_size'] as String,
    );

Map<String, dynamic> _$PixelfordImageToJson(PixelfordImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'title': instance.title,
      'description': instance.description,
      'url_full_size': instance.urlFullSize,
      'url_medium_size': instance.urlMediumSize,
      'url_small_size': instance.urlSmallSize,
    };
