import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl =
      'https://dummyjson.com/products'; //'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get() async {
    var response = await dio.get(
      _baseUrl,
    );
    return response.data;
  }
}
