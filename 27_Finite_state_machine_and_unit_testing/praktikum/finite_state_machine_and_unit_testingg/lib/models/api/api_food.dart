import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:finite_state_machine_and_unit_testingg/models/food_models.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiFood {
  static const String baseurl =
      "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice";
  static const String food = "/foods";
  Future<List<FoodModels>> getMockingApiTest() async {
    final response =
        await Dio(BaseOptions(connectTimeout: Duration(seconds: 3000))).get(
            'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods');
    final List<dynamic> body = jsonDecode(response.data);
    List<FoodModels> foodMocking = (response.data as List<FoodModels>)
        .map((e) => FoodModels(id: e.id, name: e.name))
        .toList();
    return foodMocking;
  }

  static Future<List<FoodModels>> getFoods() async {
    final response = await http.get(Uri.parse('$baseurl$food'));

    if (response.statusCode == 200) {
      final List<dynamic> body = jsonDecode(response.body);

      final List<FoodModels> foods =
          body.map((e) => FoodModels.fromJson(e)).toList();
      return foods;
    } else {
      throw "Tidak dapat menemukan data";
    }
  }
}
