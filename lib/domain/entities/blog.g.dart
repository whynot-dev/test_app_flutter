// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blog _$BlogFromJson(Map<String, dynamic> json) => Blog(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      url: json['url'] as String,
      imageUrl: json['image_url'] as String,
      newsSite: json['news_site'] as String,
      summary: json['summary'] as String,
      publishedAt: DateTime.parse(json['published_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      isFeatured: json['featured'] as bool,
    );

Map<String, dynamic> _$BlogToJson(Blog instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'image_url': instance.imageUrl,
      'news_site': instance.newsSite,
      'summary': instance.summary,
      'published_at': instance.publishedAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'featured': instance.isFeatured,
    };
