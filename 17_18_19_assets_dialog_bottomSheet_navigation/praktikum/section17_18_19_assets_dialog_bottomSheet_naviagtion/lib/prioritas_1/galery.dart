import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:section17_assets_dialog_bottomSheet_naviagtion/prioritas_1/data_gambar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  showModalBottomSheet(
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      context: context,
                      builder: (context) => SizedBox(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  // Text("")
                                  GestureDetector(
                                    onTap: () {
                                      // show dialognya
                                      log("Gambar pada bottomsheet ditekan");
                                      showDialogWidget(index);
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          image: DecorationImage(
                                              image: AssetImage(gambar[index]),
                                              fit: BoxFit.fitWidth)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
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

  void showDialogWidget(index) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              insetPadding: const EdgeInsets.all(40),
              title: const Center(child: Text("Detail Image")),
              actions: [
                TextButton(
                  // style:
                  // ButtonStyle(backgroundColor: Colors.amberAccent),
                  onPressed: () {
                    log("Masuk ke Halaman Detail Page");
                    Navigator.pushNamed(context, '/detail-page',
                        arguments: gambar[index]);
                  },
                  child: const Text('Ya'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Tidak'),
                ),
              ],
              content: Image.asset(gambar[index]));
        });
  }
}
