import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_bloc/contact_bloc.dart';
import 'package:state_management_bloc/contact_event.dart';
import 'package:state_management_bloc/contact_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexName = 0;

  String name = '';
  String phone = '';

  var _nameController = TextEditingController();
  var _phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("State Management (BLOC)"),
          centerTitle: true,
        ),
        body: BlocBuilder<ContactBloc, ContactState>(builder: (context, state) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: Image.asset(
                      'assets/images/ilustrasi_home.jpg',
                      scale: 0.1,
                    ),
                  ),

                  // Text("${state.contacts['nama']}"),
                  formWidget(context),

                  const SizedBox(
                    height: 20,
                  ),
                  //  tombol logic submit dan update

                  name == ""
                      ? Container(
                          padding: const EdgeInsets.only(right: 21),
                          alignment: Alignment.topRight,
                          child: MaterialButton(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            onPressed: () {
                              context.read<ContactBloc>().add(AddData(
                                  nama: _nameController.text,
                                  phoneNumber: _phoneController.text));
                              // ketika submit sukses
                              name = "";
                              phone = "";
                            },
                            child: const Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.only(right: 21),
                          alignment: Alignment.topRight,
                          child: MaterialButton(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            onPressed: () {
                              int index = indexName;

                              // context.read<ContactBloc>().add(UpdateData(
                              //     indexData: index,
                              //     nama: _nameController.text,
                              //     phoneNumber: _phoneController.text));
                            },
                            child: const Text(
                              "Update",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),

                  //list kontak
                  const Text(
                    "Data Kontak",
                    style: TextStyle(
                        fontSize: 18, textBaseline: TextBaseline.alphabetic),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  listKontak(
                    context,
                  ),
                ],
              ),
            ),
          );
        }));
  }

//list kontak
  Widget listKontak(BuildContext context) {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        return Container(
          height: 200,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: state.contacts.length,
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
                          state.contacts[index].name[0],
                          style: const TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      )),
                  title: Text(state.contacts[index].name),
                  subtitle: Text(state.contacts[index].phoneNumber),
                  trailing: SizedBox(
                    height: 50,
                    width: 50,
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              print(
                                  "Kontak Terpilih adalah ${state.contacts[index].name}");

                              // kontak[index] = Kontak("name", "phone");
                              setState(() {
                                indexName += index;
                                name = state.contacts[index].name;
                                phone = state.contacts[index].phoneNumber;
                              });
                            },
                            child: const Icon(Icons.edit)),
                        InkWell(
                            onTap: () {
                              log("deleteed $index");
                            },
                            child: const Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              }),
        );
      },
    );
  }

// widget form input
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
                    controller: _nameController..text = name,
                    onChanged: (String value) {
                      name = value;
                    },
                    // validator: (value) {
                    //   if (contactProvider.name != "") {
                    //     if (value!.isEmpty)
                    //       return 'Enter valid email';
                    //     else if (value.length <= 2) {
                    //       return "harus lebih dari 2";
                    //     } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                    //       return 'Nama tidak nboleh Angka';
                    //     } else if (!isUppercase(value[0])) {
                    //       return "Nama harus kapital";
                    //     } else {
                    //       return null;
                    //     }
                    //   } else {}
                    // },
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
                    onChanged: (String value) {},
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    // validator: (value) {
                    //   if (contactProvider.name != "") {
                    //     if (value == "") {
                    //       return "Tidak Boleh Kosong";
                    //     } else if (value!.length <= 8 ||
                    //         value.length <= 10 ||
                    //         isAlpha(r'a-zA-Z')) {
                    //       return "Nomor harus lebih dari 8 atau 15 dan tidak boleh huruf";
                    //     } else if (isAlpha(r'a-zA-Z')) {
                    //       return "Tidak boleh Huruf";
                    //     } else {
                    //       return null;
                    //     }
                    //   } else {}
                    // },

                    controller: _phoneController..text = phone,

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
}
