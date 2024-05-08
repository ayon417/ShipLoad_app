// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:shipload_app/core/core.dart';
import 'package:shipload_app/utils/logger.dart';

class ApiClient {
  static const String TOP_HEADLINES = 'top-headlines';

  final Dio dio = Dio();

  ApiClient() {
    // dio.options.baseUrl = Environment.value.baseUrl!;
    dio.options.connectTimeout = const Duration(milliseconds: 20000);
    dio.options.receiveTimeout = const Duration(milliseconds: 20000);
    // if (Environment.value.environmentType != EnvType.PRODUCTION) {
    //   dio.interceptors.add(
    //     PrettyDioLogger(
    //       requestHeader: true,
    //       requestBody: true,
    //       responseHeader: true,
    //       responseBody: false,
    //     ),
    //   );
    // }

    // data.headers['Cookie'] = "jwt=" + AppConstants.AUTH_TOKEN;
  }

  Future<Response<Map<String, dynamic>>> post(
    String path,
    dynamic data,
  ) async {
    try {
      return await dio.post(
        path,
        data: data,
        options: Options(headers: {"Cookie": "jwt=${AppConstants.token}"}),
      );
    } on DioError catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> postWithToken(
    String path,
    dynamic data,
    String token,
  ) async {
    try {
      return await dio.post(
        path,
        data: data,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
    } on DioError catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> put(String path, dynamic data) async {
    try {
      return await dio.put(path, data: data);
    } on DioError catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> putwithToken(
    String path,
    dynamic data,
    String token,
  ) async {
    try {
      return await dio.put(
        path,
        data: data,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
        ),
      );
    } on DioError catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> delete(String path) async {
    try {
      return await dio.delete(path);
    } on DioError catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> deleteWithToken(
    String path,
    dynamic data,
    String token,
  ) async {
    try {
      return await dio.delete(
        path,
        data: data,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
    } on DioError catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> get(String path) async {
    try {
      return await dio.get(path);
    } on DioError catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> getWithToken(
    String path,
    String token,
  ) async {
    try {
      return await dio.get(
        path,
        options: Options(
          headers: {
            'Authorization':
                'Bearer $token', // Include the access token in the 'Authorization' header
          },
        ),
      );
    } on DioError catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }
}

class MultiPartClient extends http.BaseClient {
  final http.Client _httpClient = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.persistentConnection = false;

    request.headers["Content-Type"] = "application/json";
    print(request.headers.toString());

    print(request.url.toString());
    // Future<http.StreamedResponse> response = _httpClient.send(request);
    // alice.onHttpClientRequest(request.)
    // debugPrint(request.url.toString());
    // alice.onHttpResponse(await http.Response.fromStream(await response));
    return _httpClient.send(request);
  }
}
