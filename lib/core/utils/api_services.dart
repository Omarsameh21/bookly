import 'package:dio/dio.dart';

class ApiServices {
  static const _baseURL = 'https://stephen-king-api.onrender.com/api/books/';
  static final Dio dio = Dio();

  static Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseURL$endPoint');
    return response.data;
  }
}