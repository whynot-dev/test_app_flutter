import 'package:dartz/dartz.dart';
import 'package:test_app_flutter/core/failures.dart';
import 'package:test_app_flutter/core/network/network_info.dart';
import 'package:test_app_flutter/core/repositories/base_repository.dart';
import 'package:test_app_flutter/data/gateways/remote/articles_remote_gateway.dart';
import 'package:test_app_flutter/domain/entities/blog.dart';
import 'package:test_app_flutter/domain/entities/network/response/articles_response.dart';
import 'package:test_app_flutter/domain/entities/network/response/blogs_response.dart';
import 'package:test_app_flutter/domain/entities/news.dart';

class ArticlesRepository extends BaseRepository {
  ArticlesRepository(
    NetworkInfo networkInfo, {
    required this.articlesRemoteGateway,
  }) : super(networkInfo);

  ArticlesRemoteGateway articlesRemoteGateway;

  Future<Either<ArticlesResponse, Failure>> getNews({
    required int limit,
    required int offset,
    String? search,
  }) async {
    try {
      final result = await sendRequest(
        articlesRemoteGateway.getNews(limit: limit, offset: offset, search: search),
      );
      return result.fold(
        (response) => Left(response),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<BlogsResponse, Failure>> getBlogs({
    required int limit,
    required int offset,
    String? search,
  }) async {
    try {
      final result = await sendRequest(
        articlesRemoteGateway.getBlogs(limit: limit, offset: offset, search: search),
      );
      return result.fold(
            (response) => Left(response),
            (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<News, Failure>> getNewsDetail({
    required int id,
  }) async {
    try {
      final result = await sendRequest(
        articlesRemoteGateway.getNewsDetails(id: id),
      );
      return result.fold(
        (response) => Left(response),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<Blog, Failure>> getBlogDetail({
    required int id,
  }) async {
    try {
      final result = await sendRequest(
        articlesRemoteGateway.getBlogDetail(id: id),
      );
      return result.fold(
            (response) => Left(response),
            (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }
}
