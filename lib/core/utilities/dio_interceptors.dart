import 'package:dio/dio.dart';
import 'package:gbale/app_folder/app.logger.dart';

/// This is a custom interceptor that will be used to intercept all the network calls;
class DioInterceptor implements Interceptor {
  final _log = getLogger('DioInterceptor');

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    _log
      ..i('ENDPOINT: ${err.requestOptions.uri}')
      ..i('STATUSCODE: ${err.error}')
      ..i('MESSAGE ${err.response?.data ?? err.message}');
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _log
      ..i('ENDPOINT: ${options.uri}')
      ..i('METHOD: ${options.method}')
      ..i('DATA ${options.data ?? options.queryParameters}');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _log
      ..i('ENDPOINT: ${response.requestOptions.uri}')
      ..i('DATA : ${response.data}')
      ..i('STATUSCODE : ${response.statusCode}');
    handler.next(response);
  }
}
