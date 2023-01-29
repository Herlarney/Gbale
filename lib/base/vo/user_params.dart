// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserParam extends Equatable {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  const UserParam({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  /// This method will be used to convert the [UserParams]
  /// to a [Map<String, dynamic>]
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password
    };
  }

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [firstName, lastName, email, password];
}
