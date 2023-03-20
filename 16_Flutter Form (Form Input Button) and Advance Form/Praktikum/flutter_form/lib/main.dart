import 'package:flutter/material.dart';
// tugas // FORM
import 'package:flutter_form/tugas_form/prioritas_1/home_page.dart';
import 'package:flutter_form/tugas_form/prioritas_2/home_page.dart';
import 'package:flutter_form/tugas_form/eksplorasi/home_page.dart';
//
// tugas advance form
import 'package:flutter_form/tugas_advance_form/prioritas_1/picker.dart';
import 'package:flutter_form/tugas_advance_form/prioritas_2/home_page.dart';
import 'package:flutter_form/tugas_advance_form/eksplorasi/list.dart';
//

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Form',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,

        // SOAL_TUGAS FORM
        // home: const HomePagePrioritas1());
        // home: const HomePageFormPrioritas2());
        // home: const EksplorasiSoalForm());

        // SOAL_ADVANCE_FORM

        // prioritas 1
        // home: const PickerWidget());
        // prioritas 2
        // home: const AdvanceFormPrioritas2());

        home: const AdvanceFormEksplorasi());
  }
}
