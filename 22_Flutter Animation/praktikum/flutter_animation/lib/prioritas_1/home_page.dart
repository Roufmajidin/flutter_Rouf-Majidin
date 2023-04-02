import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_animation/prioritas_1/animation_container.dart';
import 'package:flutter_animation/prioritas_2/form_page.dart';

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
        backgroundColor: Color.fromARGB(255, 6, 135, 92),
        centerTitle: true,
        title: const Text("Flutter Animation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            imageIlustrasi(context),
            teksJudul(context),
            gridViewWidget(context),
          ],
        ),
      ),
    );
  }

  Widget teksJudul(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Text(
            "Tugas Sction 20",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
              width: 300,
              child: Text("Tugas Section 22 (Flutter Animations) ",
                  style: TextStyle(fontSize: 16))),
        ),
      ],
    );
  }

  Widget imageIlustrasi(BuildContext context) {
    return SizedBox(
      height: 300,
      child: FadeIn(
        animate: true,
        delay: const Duration(microseconds: 4000),
        duration: const Duration(seconds: 2),
        child: Image.asset(
          'assets/images/ilustrasi_home.jpg',
          scale: 0.1,
        ),
      ),
    );
  }

  Widget gridViewWidget(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        childAspectRatio: (2 / 2),
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          GestureDetector(
            onTap: () {
              log("Ke halaaman Detail");
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(seconds: 1),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      AnimationPageContainer(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return SlideInLeft(child: child);
                  },
                ),
              );
            },
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  // height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 6, 135, 92)),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Tugas Animation",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Text(
                        "Animation Image",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(79, 179, 179, 179)),
                  child: const Text(
                    "Detail",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              log("Ke halaman Form");
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(seconds: 1),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      FormPage(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return SlideInRight(child: child);
                  },
                ),
              );
            },
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                alignment: Alignment.center,
                // height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 6, 135, 92)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Tugas Animation",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      "Form",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(79, 179, 179, 179)),
                child: const Text(
                  "Detail",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
