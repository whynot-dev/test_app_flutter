import 'package:json_annotation/json_annotation.dart';

part 'blog.g.dart';

@JsonSerializable()
class Blog {
  Blog({
    required this.id,
    required this.title,
    required this.url,
    required this.imageUrl,
    required this.newsSite,
    required this.summary,
    required this.publishedAt,
    required this.updatedAt,
    required this.isFeatured,
  });

  final int id;
  final String title;
  final String url;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'news_site')
  final String newsSite;
  final String summary;
  @JsonKey(name: 'published_at')
  final DateTime publishedAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @JsonKey(name: 'featured')
  final bool isFeatured;

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);

  Map<String, dynamic> toJson() => _$BlogToJson(this);
}
