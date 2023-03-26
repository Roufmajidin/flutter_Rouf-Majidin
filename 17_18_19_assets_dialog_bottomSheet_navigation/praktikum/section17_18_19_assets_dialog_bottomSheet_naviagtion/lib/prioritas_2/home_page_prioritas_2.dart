import 'dart:developer';

import 'package:flutter/material.dart';

class HomePagePrioritas2 extends StatefulWidget {
  const HomePagePrioritas2({super.key});

  @override
  State<HomePagePrioritas2> createState() => _HomePagePrioritas2State();
}

class _HomePagePrioritas2State extends State<HomePagePrioritas2> {
  List section = [
    {
      'nomor_section': 11,
      'judul_section': 'Introduction flutter',
      'link_page': '/introduction-flutter',
    },
    {
      'nomor_section': 12,
      'judul_section': 'Instalation CLI & Package Management in Flutter',
      'link_page': '/soal-cli-barcode',
    },
    {
      'nomor_section': 13,
      'judul_section': 'Platform Widget',
      'link_page': '/platform-widget',
    },
    {
      'nomor_section': 14,
      'judul_section': 'Professional Skill',
      'link_page': '/professional-skill',
    },
    {
      'nomor_section': 15,
      'judul_section': 'Flutter Layout',
      'link_page': '/flutter-layout',
    },
    {
      'nomor_section': 16,
      'judul_section': 'Flutter Form (Form Input Button) & Advance Form',
      'link_page': '/flutter-form',
    },
    {
      'nomor_section': 17,
      'judul_section': 'Assets, Dialog Bottomsheet, Navigation',
      'link_page': '/asset-dialog-bottom-sheet',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Page Section"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: section.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  log("index ${index} ditekan");
                  log("section ${section[index]['judul_section']} ditekan");
                  Navigator.pushNamed(
                    context,
                    section[index]['link_page'].toString(),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  // height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.amberAccent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        section[index]['nomor_section'].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        section[index]['judul_section'].toString(),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
