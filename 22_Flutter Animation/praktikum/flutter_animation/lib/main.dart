import 'package:flutter/material.dart';
import 'package:flutter_animation/prioritas_1/galery.dart';
import 'package:flutter_animation/prioritas_1/home_page.dart';
import 'package:flutter_animation/eksplorasi/eksplorasi_page.dart';

import 'package:provider/provider.dart';

import 'prioritas_2/form_page.dart';
import 'provider/form_manager.dart';
import 'provider/image_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FormManager()),
        ChangeNotifierProvider(create: (_) => ImageManager()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        // prioritas 1
        // home: HomePage(),

        // prioritas 2
        // home: FormPage(),

        // eksplorasi
        home: EksplorasiPage(),
      ),
    );
  }
}
