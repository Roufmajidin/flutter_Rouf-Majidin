import 'package:flutter/material.dart';
import 'package:platform_widget/prioritas1_no2/material_page.dart';

class App_prioritas1no2 extends StatelessWidget {
  const App_prioritas1no2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const myPage(),
    );
  }
}
