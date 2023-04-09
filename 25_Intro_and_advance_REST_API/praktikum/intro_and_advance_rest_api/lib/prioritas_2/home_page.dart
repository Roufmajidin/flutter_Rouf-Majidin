import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../apis/services.dart';
import 'package:http/http.dart' as http;

class HomePagePrioritas2 extends StatefulWidget {
  const HomePagePrioritas2({super.key});

  @override
  State<HomePagePrioritas2> createState() => _HomePagePrioritas2State();
}

class _HomePagePrioritas2State extends State<HomePagePrioritas2> {
  @override
  String result = '';

  String name = '';
  String email = '';

  String phone = '';
  var _nameController = TextEditingController();

  var _nomorController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  var data;
  final service = Services();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Get Image API"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 135, 92),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          child: SizedBox(
            height: 800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                tulisanAtasWidget(context),
                buttonWidget(context),

                //data Response
                result != ""
                    ? SvgPicture.string(
                        result,
                        height: 400,
                      )
                    : const Center(
                        child: Text(
                          "Gambar belum terfetching",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      )
              ],
            ),
          ),
        ));
  }

//button widget
  Widget buttonWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              // minWidth: 400,
              height: 50,
              color: const Color.fromARGB(255, 6, 135, 92),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Get Image",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                //get data (panggil class Scervies)
                final service = Services();
                final _result = await service.getImage();
                result = _result.toString();

                setState(() {});
              }),
        ],
      ),
    );
  }

  Widget tulisanAtasWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Column(
        children: const [
          Center(
              child: Text("Prioritas 2",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Center(
              child: Text("GET DATA FROM API",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
