import 'package:dio/dio.dart';

class ApiServices {
  static const _baseURL = 'https://stephen-king-api.onrender.com/api/books/';
  static final Dio dio = Dio();

  ApiServices(Dio dio);

  static Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseURL$endPoint');
    print(response.data.runtimeType); // لمعرفة نوع البيانات
print(response.data); // لطباعة البيانات الفعلية

    return response.data;
    
  }
}