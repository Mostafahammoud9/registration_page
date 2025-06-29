import 'package:dio/dio.dart';
class DioCLient{
  Dio getInstance(){
    return Dio(
      BaseOptions(
        baseUrl: 'http://music.xpertbotacademy.online/api',
        connectTimeout: Duration(seconds: 5),
        receiveTimeout: Duration(seconds: 5),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
    ),
    );
  }
}