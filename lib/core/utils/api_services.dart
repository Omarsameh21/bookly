import 'package:dio/dio.dart';

class ApiServices {
  final _baseURL = 'https://stephen-king-api.onrender.com/api/books';
  final Dio dio;
  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({required endPoint}) async {
    var response = await dio.get('$_baseURL$endPoint');

    return response.data;
  }
}
