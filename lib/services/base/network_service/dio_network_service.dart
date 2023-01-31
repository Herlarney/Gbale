import 'package:dio/dio.dart';
import 'package:gbale/app_folder/app.logger.dart';
import 'package:gbale/core/constants/gbale_strings.dart';
import 'package:gbale/core/utilities/dio_interceptors.dart';
import 'package:gbale/services/base/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:gbale/services/base/network_service/i_network_service.dart';
import 'package:gbale/services/base/vo/network_response.dart';

/// This is the implementation of the [INetworkService] interface.
class DioNetworkService extends INetworkService {
  DioNetworkService() {
    _dio.interceptors.add(DioInterceptor());
    _dio.options.sendTimeout = 50000;
    _dio.options.receiveTimeout = 50000;
    _dio.options.connectTimeout = 50000;
    _log.i('Dio Network Service');
  }

  final Dio _dio = Dio();
  final _log = getLogger('DioNetworkService');
  @override
  Future<Either<Failure, NetworkResponse<T>>> get<T>(
      {required Uri uri, Map<String, dynamic>? headers}) async {
    try {
      _log.v('Fetching data from $uri...');
      final response = await _dio.getUri<T>(uri,
          options: Options(
            headers: headers,
          ));
      _log.v('Data fetched successfully');
      return right(
        NetworkResponse<T>(
          data: response.data as T,
          statusCode: response.statusCode,
        ),
      );
    } on DioError catch (error) {
      return left(_handleApiError(error));
    }
  }

  @override
  Future<Either<Failure, NetworkResponse<T>>> post<T>(
      {required Uri uri,
      required Map<String, dynamic> body,
      Map<String, dynamic>? headers}) async {
    try {
      _log.v('Fetching data from $uri...');
      final response = await _dio.postUri<T>(uri,
          data: body, options: Options(headers: headers));
      _log.v('Data fetched successfully');
      return right(NetworkResponse<T>(
          data: response.data as T, statusCode: response.statusCode));
    } on DioError catch (error) {
      return left(_handleApiError(error));
    }
  }

  @override
  Future<Either<Failure, NetworkResponse<T>>> delete<T>(Uri uri,
      {Map<String, dynamic>? headers}) async {
    try {
      _log.v('Fetching data from $uri...');
      final response =
          await _dio.deleteUri<T>(uri, options: Options(headers: headers));
      return right(NetworkResponse<T>(
          data: response.data as T, statusCode: response.statusCode));
    } on DioError catch (error) {
      return left(_handleApiError(error));
    }
  }

  @override
  Future<Either<Failure, NetworkResponse<T>>> patch<T>(
      {required Uri uri,
      required Map<String, dynamic> body,
      Map<String, dynamic>? headers}) async {
    try {
      _log.v('Fetching data from $uri...');
      final response = await _dio.patchUri<T>(
        uri,
        data: body,
        options: Options(headers: headers),
      );
      _log.v('Data fetched successfully');
      return right(NetworkResponse<T>(
          data: response.data as T, statusCode: response.statusCode));
    } on DioError catch (error) {
      return left(_handleApiError(error));
    }
  }

  @override
  Future<Either<Failure, NetworkResponse<T>>> put<T>(
      {required Uri uri,
      required Map<String, dynamic> body,
      Map<String, dynamic>? headers}) async {
    try {
      _log.v('Fetching data from $uri...');
      final response = await _dio.putUri<T>(uri,
          data: body,
          options: Options(
            headers: headers,
          ));
      return right(NetworkResponse<T>(
          data: response.data as T, statusCode: response.statusCode));
    } on DioError catch (error) {
      return left(_handleApiError(error));
    }
  }

  Failure _handleApiError(DioError error) {
    _log.e('DioError Handling');
    switch (error.type) {
      case DioErrorType.connectTimeout:
        _log.e('Connection timeout');
        return Failure(
            devMessage: error.message,
            prettMessage: GbaleStrings.connectionTimedOut,
            code: error.response?.statusCode);
      case DioErrorType.sendTimeout:
        _log.e('Request Timeout');
        return Failure(
          devMessage: error.message,
          prettMessage: GbaleStrings.sendTimeOut,
          code: error.response?.statusCode,
        );
      case DioErrorType.receiveTimeout:
        _log.e('Receive Timeout');
        return Failure(
          devMessage: error.message,
          prettMessage: GbaleStrings.receiveTimeOut,
          code: error.response?.statusCode,
        );
      case DioErrorType.response:
        _log.e('Response error');
        return Failure(
          devMessage: error.message,
          prettMessage: GbaleStrings.responseError,
          code: error.response?.statusCode,
        );
      case DioErrorType.cancel:
        return Failure(
          devMessage: error.message,
          prettMessage: GbaleStrings.requestCancelled,
          code: error.response?.statusCode,
        );
      case DioErrorType.other:
        _log.wtf('An error occurred pls see logs');
        return Failure(
          prettMessage: GbaleStrings.somethingWentWrong,
          devMessage: error.message,
          code: error.response?.statusCode,
        );
    }
  }

  @override
  List<Object?> get props => [_log, _dio];
}
