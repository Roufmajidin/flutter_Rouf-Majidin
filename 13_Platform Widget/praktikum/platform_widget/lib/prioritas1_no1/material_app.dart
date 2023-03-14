import 'package:flutter/material.dart';
import 'package:platform_widget/prioritas1_no1/material_page.dart';

class App_prioritas1_no1 extends StatelessWidget {
  const App_prioritas1_no1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const myMaterialPage(),
    );
  }
}
