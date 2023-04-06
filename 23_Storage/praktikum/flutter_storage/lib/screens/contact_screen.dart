import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_storage/models/contact_model.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:validators/validators.dart';

import '../helper/db_manager.dart';

class contactSccreen extends StatelessWidget {
  contactSccreen(
      {super.key, required DBManager manager, required this.reversed});
  late SharedPreferences loginData;
  String username = "";
  final bool reversed;
  var indexName = 0;

  String id = '';
  String name = '';

  String phone = '';

  var _nameController = TextEditingController();
  var _phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<DBManager>(builder: (context, manager, child) {
      final contactModels = manager.contactModels;

      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: contactModels.length,
          itemBuilder: (context, index) {
            final item = contactModels[index];
            return Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(87, 167, 167, 167),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 8.0,
                        ),
                        title: Text(
                          item.name,
                          style: const TextStyle(fontSize: 18),
                        ),
                        subtitle: Text("Phone : ${item.phoneNumber}"),
                        trailing: SizedBox(
                          width: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  final contact = ContactModel(
                                      id: item.id,
                                      name: item.name,
                                      phoneNumber: item.phoneNumber);

                                  log(index.toString());

                                  id = item.id;
                                  name = item.name;
                                  phone = item.phoneNumber;
                                  _showDialog(context, contact);
                                },
                                child: Icon(
                                  FlutterRemix.edit_2_fill,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      backgroundColor:
                                          const Color.fromARGB(255, 6, 135, 92)
                                              .withOpacity(0.8),
                                      content: const Text(
                                          'Sukses Menghapus Contacts'),
                                      duration: const Duration(seconds: 3),
                                      action: SnackBarAction(
                                        textColor: Colors.white,
                                        label: 'Deleted Sukses!',
                                        onPressed: () {},
                                      ),
                                    ),
                                  );
                                  final contactToDelete = ContactModel(
                                      id: item.id,
                                      name: item.name,
                                      phoneNumber: item.phoneNumber);

                                  log(index.toString());
                                  Provider.of<DBManager>(context, listen: false)
                                      .deleteContact(item.id, contactToDelete);
                                },
                                child: const Icon(
                                  FlutterRemix.delete_bin_fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      );
    });
  }

  Future<void> _showDialog(context, contact) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Contatcs $name'),
          content: SingleChildScrollView(
            child: SizedBox(
              width: 400,
              // form widget
              child: textFormWidget(context),
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
                onPressed: () {
                  final contactToUpdate = ContactModel(
                    id: id,
                    name: name,
                    phoneNumber: phone,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: const Color.fromARGB(255, 6, 135, 92)
                          .withOpacity(0.8),
                      content: const Text('Sukses Mengupdate Contacts'),
                      duration: const Duration(seconds: 3),
                      action: SnackBarAction(
                        textColor: Colors.white,
                        label: 'Updated Sukses!',
                        onPressed: () {},
                      ),
                    ),
                  );
                  Provider.of<DBManager>(context, listen: false)
                      .updateContact(id, contactToUpdate);
                  Navigator.of(context).pop();
                  id = "";
                  name = "";
                  phone = "";
                  _nameController.clear();
                  _phoneController.clear();
                  log(_nameController.text);
                  log("ID is : ${id}");
                  log(name);
                  log(phone);
                },
                child: const Text("Update"))
          ],
        );
      },
    );
  }

  Widget textFormWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController..text = name,
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                  controller: _phoneController..text = phone.toString(),
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

                  // initialValue: '+62',
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    labelText: 'Nomor',
                    filled: true,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ))
      ],
    );
  }
}
