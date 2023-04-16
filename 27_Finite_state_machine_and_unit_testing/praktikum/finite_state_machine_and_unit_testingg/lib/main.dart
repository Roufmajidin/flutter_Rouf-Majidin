import 'package:finite_state_machine_and_unit_testingg/models/api/api_food.dart';
import 'package:finite_state_machine_and_unit_testingg/view/contact/home_page_contact.dart';
import 'package:finite_state_machine_and_unit_testingg/view/home_page.dart';
import 'package:finite_state_machine_and_unit_testingg/view_model/contact_provider.dart';
import 'package:finite_state_machine_and_unit_testingg/view_model/food_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routes/routes.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';

@GenerateMocks([ApiFood])
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FoodProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ContactProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Tugas Finite State',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          // PRIORITAS 1
          Routes.home: (context) => const Homepage(),

          // PRIORITAS 2
          // Routes.home: (context) => const HomePageContact(),
        },
      ),
    );
  }
}
