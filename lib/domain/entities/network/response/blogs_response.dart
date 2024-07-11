import 'package:json_annotation/json_annotation.dart';
import 'package:test_app_flutter/domain/entities/blog.dart';

part 'blogs_response.g.dart';

@JsonSerializable()
class BlogsResponse {
  BlogsResponse({
    required this.count,
    this.next,
    this.previous,
    this.results,
  });

  final int count;
  final String? next;
  final String? previous;
  final List<Blog>? results;


  factory BlogsResponse.fromJson(Map<String, dynamic> json) => _$BlogsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BlogsResponseToJson(this);
}