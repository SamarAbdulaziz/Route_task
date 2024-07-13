import 'package:flutter/material.dart';
import 'package:route_tech_summit_task/core/utils/api_service.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
  ApiService apiService = ApiService(Dio());
  apiService.get();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
