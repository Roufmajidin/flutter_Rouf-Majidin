import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../apis/services.dart';
import 'package:http/http.dart' as http;

class SoalEksplorasi extends StatefulWidget {
  const SoalEksplorasi({super.key});

  @override
  State<SoalEksplorasi> createState() => _SoalEksplorasiState();
}

class _SoalEksplorasiState extends State<SoalEksplorasi> {
  @override
  String result = '';
  String nameInputImage = "";
  final service = Services();
  var _nameGenerateImage = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Get Image API (text Input)"),
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
                formWidget(context),
                buttonWidget(context),
                //data Response
                result != ""
                    ? Center(
                        child: SvgPicture.string(
                          result,
                          height: 400,
                        ),
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

// form input
  Widget formWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameGenerateImage..text = nameInputImage,
                    onChanged: (String value) {
                      nameInputImage = value;
                    },
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Masukkan Huruf yang akan di Generate',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ))
        ],
      ),
    );
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
                "Genenerate to Image",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                //panggil generateimage (panggil class Scervies)
                final service = Services();
                final _result =
                    await service.getImageInput(_nameGenerateImage.text);
                result = _result.toString();

                _nameGenerateImage.clear;
                nameInputImage = "";

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
              child: Text("Soal Eksplorasi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Center(
              child: Text("GET Image Berdasarkan Inputan",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
