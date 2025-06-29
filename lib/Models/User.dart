import 'dart:convert';

class User{
  final String email;
  final String password;
  final String? phone;
  final String? name;

  User ({required this.email, required this.password, this.phone, this.name});


  Map<  String, dynamic >toMap(){
    return {
      'email': email,
      'password': password,
      'phone': phone,
      'name': name
      };
  }
  String toJson()=> jsonEncode(toMap());


}