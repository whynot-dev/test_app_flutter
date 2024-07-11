import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_app_flutter/domain/entities/blog.dart';
import 'package:test_app_flutter/domain/entities/network/response/articles_response.dart';
import 'package:test_app_flutter/domain/entities/network/response/blogs_response.dart';
import 'package:test_app_flutter/domain/entities/news.dart';

part 'articles_remote_gateway.g.dart';

@RestApi()
abstract class ArticlesRemoteGateway {
  factory ArticlesRemoteGateway(Dio dio, {String? baseUrl}) = _ArticlesRemoteGateway;

  @GET('articles')
  Future<HttpResponse<ArticlesResponse>> getNews({
    @Query('limit') required int limit,
    @Query('offset') required int offset,
    @Query('search') String? search,
  });

  @GET('blogs')
  Future<HttpResponse<BlogsResponse>> getBlogs({
    @Query('limit') required int limit,
    @Query('offset') required int offset,
    @Query('search') String? search,
  });

  @GET('articles/{id}/')
  Future<HttpResponse<News>> getNewsDetails({
    @Path('id') required int id,
  });

  @GET('blogs/{id}/')
  Future<HttpResponse<Blog>> getBlogDetail({
    @Path('id') required int id,
  });


}
