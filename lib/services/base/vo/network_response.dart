// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class NetworkResponse<T> extends Equatable {
 
  const NetworkResponse( {
    required this.data,
    required this.statusCode,
  });

 /// Contains the data response from the network or API.
  final T data;

  /// Contains the status code of the network response.
  final int? statusCode;

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [data, statusCode];
}
