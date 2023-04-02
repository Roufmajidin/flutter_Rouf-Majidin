import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animation/eksplorasi/eksplorasi_page.dart';
import 'package:flutter_animation/prioritas_1/home_page.dart';

import 'package:provider/provider.dart';
import 'package:validators/validators.dart';

import '../models/model_contacts.dart';
import '../provider/form_manager.dart';

class DetailEdit extends StatelessWidget {
  DetailEdit(
      {super.key,
      required this.indexData,
      required this.name,
      required this.phone});
  // ignore: prefer_typing_uninitialized_variables
  final indexData;
  final name;
  final phone;

  // final _nameController = TextEditingController();

  var _nameController = TextEditingController();

  var _phoneController = TextEditingController();
  String statusUpdate = "";
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<FormManager>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 135, 92),
        title: const Text("Form Contacts"),
        centerTitle: true,
      ),
      body: Consumer<FormManager>(
        builder: (context, contactProvider, _) => SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          child: SizedBox(
            height: 800,
            child: Column(
              children: [
                tulisanAtasWidget(
                  context,
                  indexData,
                  contactProvider,
                ),
                formWidget(context, contactProvider, indexData),

                //  tombol logic submit dan update

                Consumer<FormManager>(
                  builder: (context, contactProvider, _) => Container(
                    padding: const EdgeInsets.only(right: 21),
                    alignment: Alignment.topRight,
                    child: MaterialButton(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () async {
                        // kontak.add(Kontak("name", "0891298389"));
                        int index = indexData;

                        // scontactProvider.update(index);
                        // name = '';
                        contactProvider.update(
                            index, _nameController.text, _phoneController.text);
                        statusUpdate = 'berhasil';
                        if (statusUpdate == "berhasil") {
                          AlertDialog alert = AlertDialog(
                            title: Text("Sukses"),
                            content: Text("Sukses Mengedit Nama $name"),
                          );
                          await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert;
                            },
                          ).then((value) => Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                transitionDuration: const Duration(seconds: 1),
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        EksplorasiPage(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  return SlideInRight(child: child);
                                },
                              )));
                        } else {}
                        // log("Berhasil Update nama : $nm ");
                        // log("Berhasil Update phone : $phn ");
                      },
                      child: const Text(
                        "Update",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                //list kontak
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget formWidget(BuildContext context, contactProvider, indexData) {
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
                    controller: _nameController
                      ..text =
                          contactProvider.contacts[indexData].name.toString(),
                    maxLength: 20,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      filled: true,
                      hintText: "Insert Your Name",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),

                  // text field nya
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],

                    controller: _phoneController
                      ..text = contactProvider.contacts[indexData].phoneNumber
                          .toString(),

                    // initialValue: '+62',
                    maxLength: 20,
                    decoration: const InputDecoration(
                      labelText: 'Nomor',
                      filled: true,
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget tulisanAtasWidget(BuildContext context, indexData, contactProvider) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(12)),
          child: Icon(Icons.edit),
        ),
        Padding(
          padding: EdgeInsets.only(top: 17, bottom: 17),
          child: Center(
            child: Text(
              "Edit Kontak ${contactProvider.contacts[indexData].name}",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
