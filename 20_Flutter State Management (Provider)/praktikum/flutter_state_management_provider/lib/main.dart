import 'package:flutter/material.dart';
import 'package:flutter_state_management_provider/provider/form_manager.dart';
import 'package:flutter_state_management_provider/provider/image_manager.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
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
        debugShowCheckedModeBanner: false,
        title: 'Tugas Section 20 Rouf Majidin',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
