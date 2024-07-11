import 'package:json_annotation/json_annotation.dart';
import 'package:test_app_flutter/domain/entities/news.dart';

part 'articles_response.g.dart';

@JsonSerializable()
class ArticlesResponse {
  ArticlesResponse({
    required this.count,
    this.next,
    this.previous,
    this.results,
  });

  final int count;
  final String? next;
  final String? previous;
  final List<News>? results;


  factory ArticlesResponse.fromJson(Map<String, dynamic> json) => _$ArticlesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticlesResponseToJson(this);
}