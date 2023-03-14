import 'package:flutter/material.dart';
import 'package:platform_widget/eksplorasi/material_page.dart';

class App_soalEksplorasi extends StatelessWidget {
  const App_soalEksplorasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const myEksplorasiPage(),
    );
  }
}
