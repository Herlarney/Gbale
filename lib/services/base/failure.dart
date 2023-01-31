// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

// This Failure Class will hold all possible errors in the app
class Failure with EquatableMixin implements Exception {

  Failure({
    required this.devMessage,
    required this.prettMessage,
    this.code, 
  });

  /// This would hold a error message for the developer
   final String devMessage;

   /// This will hold a defined error message for the user
   final String prettMessage;

  /// optonal network status code parameter 
  final int? code; 
 
  @override
  List<Object?> get props => [devMessage, code];
}
