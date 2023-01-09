

import 'package:axpos_project/util/debug.dart';
import 'package:axpos_project/util/string_utils.dart';
import 'package:dio/dio.dart';

import 'api_error.dart';
import 'http_status.dart';

class ApiConnection {
  late Dio _dio;

  ApiConnection() {
    _dio = Dio(exportOption());
  }

  BaseOptions baseOptions = BaseOptions(
    baseUrl: AppStringUtils.domain,
    connectTimeout: 30000,
    receiveTimeout: 30000,
    responseType: ResponseType.json,
  );

  BaseOptions exportOption() {
    final Map<String, dynamic> header = {'Accept': 'application/json'};
    baseOptions.headers.addAll(header);
    return baseOptions;
  }

  Dio init() => _dio;

  Future<APIError> errorResponse(Object obj) async {
    if (obj.runtimeType is DioError) {
      final res = (obj as DioError).response;
      Debug.logMessage(message: "API Error: ${res?.statusCode} -> ${res?.statusMessage}");

      int statusCode = res?.statusCode ?? 0;
      AppHttpStatus httpStatusCode = AppHttpStatus(code: statusCode);

      return APIError(httpStatusCode.code, httpStatusCode.description);
    }

    return APIError(null, "It could not be processed normally. \nPlease try again.");
  }
}
