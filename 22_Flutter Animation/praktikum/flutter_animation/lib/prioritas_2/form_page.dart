import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animation/prioritas_1/home_page.dart';

import 'package:provider/provider.dart';
import 'package:validators/validators.dart';

import '../models/model_contacts.dart';
import '../provider/form_manager.dart';

class FormPage extends StatefulWidget {
  FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // final _nameController = TextEditingController();
  var indexName = 0;

  String name = '';

  String phone = '';

  var _nameController = TextEditingController();

  var _phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<FormManager>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 135, 92),
        title: const Text("Form Contacts"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(seconds: 1),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      HomePage(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return SlideInDown(child: child);
                  },
                ));
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Consumer<FormManager>(
        builder: (context, contactProvider, _) => SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          child: SizedBox(
            height: 800,
            child: Column(
              children: [
                tulisanAtasWidget(context),
                formWidget(context, contactProvider),

                //  tombol logic submit dan update
                if (contactProvider.name == "")
                  Consumer<FormManager>(
                    builder: (context, contactProvider, _) => Container(
                      padding: const EdgeInsets.only(right: 21),
                      alignment: Alignment.topRight,
                      child: MaterialButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          contactProvider.add(GetContact(
                              name: _nameController.text,
                              phoneNumber: _phoneController.text));
                          contactProvider.name = '';
                          contactProvider.phoneNumber = '';
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                else
                  Consumer<FormManager>(
                    builder: (context, contactProvider, _) => Container(
                      padding: const EdgeInsets.only(right: 21),
                      alignment: Alignment.topRight,
                      child: MaterialButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          // kontak.add(Kontak("name", "0891298389"));
                          int index = indexName;

                          // scontactProvider.update(index);
                          // name = '';
                          contactProvider.update(index, _nameController.text,
                              _phoneController.text);
                          indexName = 0;
                          // phone = '';
                          contactProvider.name = '';
                          contactProvider.phoneNumber = '';
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
                const Text(
                  "Data Kontak",
                  style: TextStyle(
                      fontSize: 18, textBaseline: TextBaseline.alphabetic),
                ),
                listKontak(context, contactProvider),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget formWidget(BuildContext context, contactProvider) {
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
                      ..text = contactProvider.name.toString(),
                    onChanged: (String value) {
                      contactProvider.name = value;
                    },
                    validator: (value) {
                      if (contactProvider.name != "") {
                        if (value!.isEmpty)
                          return 'Enter valid email';
                        else if (value.length <= 2) {
                          return "harus lebih dari 2";
                        } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                          return 'Nama tidak nboleh Angka';
                        } else if (!isUppercase(value[0])) {
                          return "Nama harus kapital";
                        } else {
                          return null;
                        }
                      } else {}
                    },
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
                    onChanged: (String value) {
                      contactProvider.phoneNumber = value;
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    validator: (value) {
                      if (contactProvider.name != "") {
                        if (value == "") {
                          return "Tidak Boleh Kosong";
                        } else if (value!.length <= 8 ||
                            value.length <= 10 ||
                            isAlpha(r'a-zA-Z')) {
                          return "Nomor harus lebih dari 8 atau 15 dan tidak boleh huruf";
                        } else if (isAlpha(r'a-zA-Z')) {
                          return "Tidak boleh Huruf";
                        } else {
                          return null;
                        }
                      } else {}
                    },

                    controller: _phoneController
                      ..text = contactProvider.phoneNumber.toString(),

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

  Widget listKontak(BuildContext context, contactProvider) {
    return Consumer<FormManager>(
      builder: (context, contactProvider, _) => Flexible(
        fit: FlexFit.tight,
        // height: 900,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: contactProvider.contacts.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 218, 218),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        contactProvider.contacts[index].name[0],
                        style: const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    )),
                title: Text(contactProvider.contacts[index].name),
                subtitle: Text(contactProvider.contacts[index].phoneNumber),
                trailing: SizedBox(
                  height: 50,
                  width: 50,
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            print(
                                "Kontak Terpilih adalah ${contactProvider.contacts[index].name}");

                            // kontak[index] = Kontak("name", "phone");
                            indexName += index;
                            // contactProvider.getEdit
                            var a = contactProvider.name =
                                contactProvider.contacts[index].name;
                            var b = contactProvider.phoneNumber =
                                contactProvider.contacts[index].phoneNumber;
                            contactProvider.changeString(a, b);
                          },
                          child: const Icon(Icons.edit)),
                      InkWell(
                          onTap: () {
                            log("deleteed $index");
                            contactProvider.deleteContact(index);
                          },
                          child: const Icon(Icons.delete)),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  Widget tulisanAtasWidget(BuildContext context) {
    return Column(
      children: const [
        Padding(
            padding: EdgeInsets.only(top: 12, bottom: 17),
            child: Icon(Icons.task)),
        Padding(
          padding: EdgeInsets.only(top: 17, bottom: 17),
          child: Center(
            child: Text(
              "Create new Contacts",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
            width: 300,
            child: Text(
                "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ",
                style: TextStyle(fontSize: 16))),
      ],
    );
  }
}
