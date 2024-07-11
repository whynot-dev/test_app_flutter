import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_app_flutter/core/network/network_info.dart';


import '../failures.dart';

class BaseRepository {
  final NetworkInfo networkInfo;

  BaseRepository(this.networkInfo);

  Future<Either<M, Failure>> sendRequest<M>(Future<HttpResponse<M>> request) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await request;

        if (result.response.statusCode.toString().startsWith('2')) {
          return Left(result.data);
        } else {
          return Right(Failure.request(
            code: result.response.statusCode,
            message: result.response.statusMessage,
          ));
        }
      } on DioException catch (error) {
        return Right(Failure.request(
          code: error.response?.statusCode,
          message: error.response?.statusMessage,
        ));
      } on Exception catch (error) {
        return Right(Failure.undefined(error: error));
      }
    } else {
      return Right(Failure.network());
    }
  }
}
