// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blogs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlogsResponse _$BlogsResponseFromJson(Map<String, dynamic> json) =>
    BlogsResponse(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Blog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BlogsResponseToJson(BlogsResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
