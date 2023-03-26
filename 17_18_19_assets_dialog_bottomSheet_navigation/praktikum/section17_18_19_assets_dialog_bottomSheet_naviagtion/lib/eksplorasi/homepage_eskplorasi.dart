import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:section17_assets_dialog_bottomSheet_naviagtion/prioritas_1/data_gambar.dart';

class HomePageEksplorasi extends StatefulWidget {
  const HomePageEksplorasi({super.key});

  @override
  State<HomePageEksplorasi> createState() => _HomePageEksplorasiState();
}

class _HomePageEksplorasiState extends State<HomePageEksplorasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Galery"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: gambar.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  log("message");
                  log(index.toString());
                  //halaman selanjutnya berdasarkan gmabar ditekan
                  log("Masuk ke Halaman Detail Page");
                  Navigator.pushNamed(context, '/detail-page',
                      arguments: gambar[index]);
                },
                child: Container(
                  // height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(gambar[index]),
                          fit: BoxFit.fitWidth)),
                ),
              );
            }),
      ),
    );
  }
}
