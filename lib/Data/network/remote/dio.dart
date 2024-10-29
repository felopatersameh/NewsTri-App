import 'package:dio/dio.dart';

import 'dio_points.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: DioPoints.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ),
    );
  }

  static Future<Response> getData({
    required String path,
    String? token,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    options ??= Options();
    if (token != null) {
      options.headers = {
        'Authorization': 'Bearer $token',
      };
    }
    return await dio.get(
      path,
      queryParameters: queryParameters,
      options: options,
    );
  }
}
