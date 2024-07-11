import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter/data/gateways/local/preferences_local_gateway.dart';
import 'package:test_app_flutter/di/injection.dart';

class DioHelper {
  static const baseUrl = 'https://api.spaceflightnewsapi.net/v4/';
  static Duration timeout = Duration(milliseconds: 30000);

  static Dio getAuthDio() {
    Dio dio = Dio()
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ))
      ..options.receiveDataWhenStatusError = true
      ..options.baseUrl = baseUrl
      ..options.sendTimeout = timeout
      ..options.connectTimeout = timeout
      ..options.receiveTimeout = timeout;
    return dio;
  }

  static Dio getDio({
    required PreferencesLocalGateway preferencesLocalGateway,
    required GlobalKey<NavigatorState> navigatorKey,
    bool needAuthorization = true,
  }) {
    Dio dio = Dio()
      ..options.headers = {"Accept": "application/json"}
      ..options.receiveDataWhenStatusError = true
      ..options.baseUrl = baseUrl
      ..options.sendTimeout = timeout
      ..options.connectTimeout = timeout
      ..options.receiveTimeout = timeout;
    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
          handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) async {
          handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) async {},
      ),
    );
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
    return dio;
  }
}
