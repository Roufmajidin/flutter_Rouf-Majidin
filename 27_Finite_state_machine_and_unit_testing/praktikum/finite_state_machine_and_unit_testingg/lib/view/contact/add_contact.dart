import 'package:animate_do/animate_do.dart';
import 'package:finite_state_machine_and_unit_testingg/view/contact/home_page_contact.dart';
import 'package:finite_state_machine_and_unit_testingg/view_model/contact_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:validators/validators.dart';

import '../../models/contact_model.dart';

// ignore: must_be_immutable
class AddContact extends StatelessWidget {
  AddContact({super.key});
  var indexName = 0;

  String name = '';

  String phone = '';

  var _nameController = TextEditingController();
  var _phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widgetAtas(context),
          formWidget(context),
        ],
      ),
    ));
  }

  Widget widgetAtas(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 6, 135, 92),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        height: 200,
        width: 720,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(seconds: 1),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const HomePageContact(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return SlideInDown(child: child);
                        },
                      ),
                      (route) => false,
                    );
                  },
                  child: Icon(Icons.arrow_back_ios, color: Colors.white)),
              const Text(
                "Add Contacts",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 50),
            ],
          ),
        ));
  }

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
                    controller: _nameController..text = phone,
                    onChanged: (String value) {
                      name = value;
                    },
                    validator: (value) {
                      if (name != "") {
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
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      filled: true,
                      hintText: "Insert Your Name",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // text field nya
                  TextFormField(
                    onChanged: (String value) {
                      phone = value;
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    validator: (value) {
                      if (name != "") {
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

                    controller: _phoneController..text = phone.toString(),

                    // initialValue: '+62',
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nomor',
                      filled: true,
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor:
                                const Color.fromARGB(255, 6, 135, 92)
                                    .withOpacity(0.8),
                            content: const Text('Sukses Menambahkan Contacts'),
                            duration: const Duration(seconds: 3),
                            action: SnackBarAction(
                              textColor: Colors.white,
                              label: 'Sukses !',
                              onPressed: () {},
                            ),
                          ),
                        );
                        final contactToAdd = ContactModel(
                          id: const Uuid().v1().toString(),
                          name: name,
                          phoneNumber: phone,
                        );
                        Provider.of<ContactProvider>(context, listen: false)
                            .addContact(contactToAdd);

                        // back ke halaman home

                        Navigator.pushAndRemoveUntil(
                          context,
                          PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 1),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const HomePageContact(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return SlideInDown(child: child);
                            },
                          ),
                          (route) => false,
                        );
                      },
                      child: const Text("Tambah"))
                ],
              ))
        ],
      ),
    );
  }
}
