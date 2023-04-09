import 'package:flutter/material.dart';
import 'package:intro_and_advance_rest_api/prioritas_1/home_page.dart';
import 'package:intro_and_advance_rest_api/prioritas_2/home_page.dart';
import 'package:intro_and_advance_rest_api/eksplorasi/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intro and Advance REST API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // prioritas 1
      home: const HomePagePrioritas1(),

      // prioritas2
      // home: const HomePagePrioritas2(),

      // soal eksplorasi
      // home: const SoalEksplorasi(),
    );
  }
}
