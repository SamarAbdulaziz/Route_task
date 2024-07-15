import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl =
      'https://dummyjson.com/products'; //'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get() async{
    try {
      var response = await dio.get(
        '$_baseUrl/search?q= /',

        // queryParameters: {'search': value},
      );
      print(response.data.toString());
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(
            'Failed to load data. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load data. Error:');
    }
  }
}

