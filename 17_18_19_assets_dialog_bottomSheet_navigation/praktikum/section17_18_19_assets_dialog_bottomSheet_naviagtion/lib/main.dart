import 'package:flutter/material.dart';
import 'package:section17_assets_dialog_bottomSheet_naviagtion/prioritas_1/detail_page.dart';
import 'package:section17_assets_dialog_bottomSheet_naviagtion/prioritas_1/galery.dart';
import 'package:section17_assets_dialog_bottomSheet_naviagtion/prioritas_2/home_page_prioritas_2.dart';
import 'package:section17_assets_dialog_bottomSheet_naviagtion/prioritas_2/page/flutter_layout.dart';
import 'package:section17_assets_dialog_bottomSheet_naviagtion/prioritas_2/page/introduction_flutter.dart';
import 'package:section17_assets_dialog_bottomSheet_naviagtion/prioritas_2/page/professional-skill.dart';
import 'package:section17_assets_dialog_bottomSheet_naviagtion/prioritas_2/page/soal_cli_barcode.dart';
import 'eksplorasi/homepage_eskplorasi.dart';
import 'prioritas_2/page/flutter_form.dart';
import 'prioritas_2/page/platform_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        // Hompage (halaman galery) prioritas 1
        '/': (context) => const HomePage(),

        // Hompage (halaman galery) prioritas 2
        // '/': (context) => const HomePagePrioritas2(),
        // eksplorasi
        // '/': (context) => const HomePageEksplorasi(),

        '/introduction-flutter': (context) => const IntroductionFlutter(
              title: 'introduction FLutter',
            ),
        '/soal-cli-barcode': (context) => const barcodeLatihan(
              title: 'Barcode FLutter',
            ),
        '/platform-widget': (context) => PlatformWidget(
              title: 'Platform Widget',
            ),
        '/professional-skill': (context) => ProfessionalSkill(
              title: 'Professional Skill Mentoring',
            ),
        '/flutter-layout': (context) => FlutterLayouts(
              title: 'Flutter Layouts',
            ),
        '/flutter-form': (context) => const AdvanceFormEksplorasi(
              title: 'Flutter Form',
            ),
        '/asset-dialog-bottom-sheet': (context) => const HomePage(),

        '/detail-page': (context) => const DetailPage()
      },
      // home: HomePage()
    );
  }
}
