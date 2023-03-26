import 'package:flutter/material.dart';
import 'package:section17_assets_dialog_bottomSheet_naviagtion/prioritas_1/data_gambar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    // final a = Get.arg
    final index = ModalRoute.of(context)!.settings.arguments as String;
    // final image
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Gambar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Detail Gambar",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(index),
          ],
        ),
      ),
    );
  }
}
