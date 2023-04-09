import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intro_and_advance_rest_api/models/contact_models.dart';
import 'package:http/http.dart' as http;

final Dio dio = Dio();

class Services {
  // baca data
  Future readUser() async {
    try {
      final Dio dio = Dio();
      final Response response = await dio.get(
          "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts");

      log("Fetch data kedalam Json");
      debugPrint(response.data.toString());
      return response.data;
    } catch (e) {
      // print(e);
      rethrow;
    }
  }

  // generate image
  String imgUrl = '';
  Future getImage() async {
    final Response response =
        await dio.get('https://api.dicebear.com/6.x/bottts/svg');

    // final UserModels userModels = UserModels.fromJson(response.data);
    log("fetching Gambar");
    imgUrl = response.data;

    log(imgUrl);
    return response;
  }

  Future getImageInput(String inputNameImage) async {
    final Response response = await dio
        .get('https://api.dicebear.com/6.x/pixel-art/svg?seed=$inputNameImage');

    // final UserModels userModels = UserModels.fromJson(response.data);
    imgUrl = response.data;
    log("input is : $inputNameImage");
    log(response.data);
    return response;
  }

  // metode POST Prioritas 1
  Future createUser({
    required String name,
    required String phone,
  }) async {
    final Response response = await dio.post(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
        data: {'name': name, 'phone': phone});

    final UserModels userModels = UserModels.fromJson(response.data);
    log('POST DATA');
    log('Isi Body : ${response.data.toString()}');
    return response.data;
  }

  Future update({
    required String name,
    required String phone,
  }) async {
    try {
      int id = 1;
      final Response response = await dio.put(
        'https://jsonplaceholder.typicode.com/posts/$id',
        data: {
          "id": 1,
          "title": 'foo',
          "body": 'bar',
          "userId": 1,
        },
      );

      log("Method PUT ini langsung klik tombol PUT (karena di deklarasikan pada BODY)");
      log("Anda Memilih PUT dengan ID : $id");
      log(response.data.toString());

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
