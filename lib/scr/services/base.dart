import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants/constants.dart';

class NetworkBase {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: AppConstant.baseUrl,
    ),
  );

  static void networkBaseInitialization() {
    dio.interceptors.add(
      PrettyDioLogger(
        compact: true,
        responseBody: true,
        request: true,
        requestBody: true,
        error: true,
      ),
    );
  }
}
