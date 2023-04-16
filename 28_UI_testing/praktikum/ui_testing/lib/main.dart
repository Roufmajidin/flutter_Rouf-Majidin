import 'package:flutter/material.dart';
import 'package:ui_testing/screen/soal_eksplorasi/home_page.dart';

import 'screen/home_page.dart';
import 'screen/prioritas_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Form',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,

        // home: const HomePage());
        // home: const HomePrioritas2());
        home: const HomeSoalEksplorasi());
  }
}
