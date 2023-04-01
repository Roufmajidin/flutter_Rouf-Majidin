import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_management_provider/pages/detail_page.dart';
import 'package:flutter_state_management_provider/provider/image_manager.dart';
import 'package:provider/provider.dart';

class GaleryPage extends StatefulWidget {
  const GaleryPage({super.key});

  @override
  State<GaleryPage> createState() => _GaleryPageState();
}

class _GaleryPageState extends State<GaleryPage> {
  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<ImageManager>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 135, 92),
        centerTitle: true,
        title: const Text("My Galery"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: manager.gambar.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  log("message");
                  log(index.toString());
                  showModalBottom(index, manager);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(manager.gambar[index]),
                          fit: BoxFit.fitWidth)),
                ),
              );
            }),
      ),
    );
  }

  void showModalBottom(index, manager) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        context: context,
        builder: (context) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    // Text("")
                    Stack(alignment: Alignment.bottomCenter, children: [
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage(manager.gambar[index]),
                                fit: BoxFit.fitWidth)),
                      ),
                      GestureDetector(
                        onTap: () => showDialogWidget(index, manager),
                        child: Container(
                          alignment: Alignment.center,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromRGBO(8, 168, 117, 0.655)),
                          child: const Text(
                            "Detail",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w700,
                                fontSize: 24),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ));
  }

  void showDialogWidget(index, manager) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              insetPadding: const EdgeInsets.all(40),
              title: const Center(child: Text("Lanjut Melihat Image?")),
              actions: [
                TextButton(
                  onPressed: () {
                    log("Masuk ke Halaman Detail Page");
                    // Navigator.pushNamed(context, '/detail-page',
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(seconds: 1),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  DetailPage(indexImage: index),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return SlideInDown(child: child);
                          },
                        ));
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
              content: Image.asset(manager.gambar[index]));
        });
  }
}
