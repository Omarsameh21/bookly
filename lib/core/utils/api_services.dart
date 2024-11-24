import 'package:dio/dio.dart';

class ApiServices {
  static const _baseURL = 'https://stephen-king-api.onrender.com/api/';
  static final Dio dio = Dio();

  ApiServices(Dio dio);

  static Future<Map<String, dynamic>> get({required String endPoint}) async {
    try {
      var response = await dio.get('$_baseURL$endPoint');
      return response.data;
    } catch (e) {
      print('Error: $e');
      return {};
    }
  }
}
