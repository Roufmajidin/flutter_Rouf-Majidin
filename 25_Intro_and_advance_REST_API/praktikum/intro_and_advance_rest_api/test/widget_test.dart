// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:intro_and_advance_rest_api/main.dart';

void main() async {
  final Dio dio = Dio();

  // runApp(const MyApp());
  var response = await dio.get(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/');

  print("ok");
  print(response);
}
