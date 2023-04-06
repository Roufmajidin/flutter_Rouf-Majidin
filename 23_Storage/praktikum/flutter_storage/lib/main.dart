import 'package:flutter/material.dart';
import 'package:flutter_storage/screens/add_contact.dart';
import 'package:flutter_storage/screens/home_page.dart';
import 'package:flutter_storage/screens/login_page.dart';
import 'package:provider/provider.dart';

import 'helper/db_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DBManager(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contact Management',
        routes: {
          '/': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
          '/add-contact': (context) => AddContact(),
          // '/add-task': (context) => AddTask(),
        },
      ),
    );
  }
}
