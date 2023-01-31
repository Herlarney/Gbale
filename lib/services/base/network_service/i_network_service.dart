import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:gbale/services/base/failure.dart';
import 'package:gbale/services/base/vo/network_response.dart';

// This interface is used to abstract the network service implementation.
/// This is the network service interface that decribes http methods.
abstract class INetworkService extends Equatable {
  /// This method will make a get request to the provided [uri]
  Future<Either<Failure, NetworkResponse<T>>> get<T>(
      {required Uri uri, Map<String, dynamic>? headers});

  /// This method will make a post request to the provided [uri]
  Future<Either<Failure, NetworkResponse<T>>> post<T>(
      {
        required Uri uri,   
        required Map<String, dynamic> body,  
        Map<String, dynamic>? headers
        });

  /// This method will amke a post request to the required [uri]
  Future<Either<Failure, NetworkResponse<T>>> put<T>(
      {required Uri uri,
      required Map<String, dynamic> body,
      Map<String, dynamic>? headers});

  /// This method will make a post request to the required [uri]
  Future<Either<Failure, NetworkResponse<T>>> patch<T>(
      {required Uri uri,
      required Map<String, dynamic> body,
      Map<String, dynamic>? headers});

  /// This method will make a post request to the required [uri]
  Future<Either<Failure, NetworkResponse<T>>> delete<T>(
      Uri uri, 
      {
         Map<String, dynamic>? headers
      }
    );
}
