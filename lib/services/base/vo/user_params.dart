// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserParam extends Equatable {
 
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

 /// This is the user firstName
  final String firstName;

 /// This is the user lastNmae 
  final String lastName;

 /// This is the user email
  final String email;

 /// This is the user password 
  final String password;

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [firstName, lastName, email, password];
}
