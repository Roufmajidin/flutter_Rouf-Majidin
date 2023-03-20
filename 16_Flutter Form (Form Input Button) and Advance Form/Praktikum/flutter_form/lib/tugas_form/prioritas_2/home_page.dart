import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class HomePageFormPrioritas2 extends StatefulWidget {
  const HomePageFormPrioritas2({super.key});

  @override
  State<HomePageFormPrioritas2> createState() => _HomePageFormPrioritas2State();
}

class _HomePageFormPrioritas2State extends State<HomePageFormPrioritas2> {
  // final _nameController = TextEditingController();
  var indexKontak = 0;
  var listName = '';
  var listPhone = '';

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  late List<Kontak> kontak = [
    Kontak('Rouf Majidin', '+62 83133978010'),
    Kontak('Ahmad Alif', '+62 83133978010'),
    Kontak('Iko Vicky', '+62 83133978010'),
    Kontak('Yoni', '+62 83133978010'),
    Kontak('Fernand', '+62 83133978010')
  ];

  void _simpan() {
    setState(() {
      kontak.add(Kontak(_nameController.text, _phoneController.text));
      _nameController.clear();
      _phoneController.clear();
      kontak.forEach((element) {
        print(element.name);
      });
    });
  }

  void _delete(index) {
    setState(() {
      kontak.removeAt(index);
      // print("Terhapus ${kontak[index].name!}");
    });
  }

  void _update() {
    int id = indexKontak;
    setState(() {
      kontak[id] = Kontak(_nameController.text, _phoneController.text);
      _nameController.clear();
      listName = "";
      listPhone = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hallo"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Column(
            children: const [
              Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 17),
                  child: Icon(Icons.task)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 17, bottom: 17),
            child: Center(
              child: Text(
                "Create new Contacts",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
              width: 300,
              child: Text(
                  "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ",
                  style: TextStyle(fontSize: 16))),

          // text field nya
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController..text = listName,
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
                  controller: _phoneController
                    ..text = listPhone.contains("+62")
                        ? listPhone
                        : "+62 ${listPhone}",
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
            ),
          ),

          listName == ""
              ? Container(
                  padding: const EdgeInsets.only(right: 21),
                  alignment: Alignment.topRight,
                  child: MaterialButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                      // kontak.add(Kontak("name", "0891298389"));

                      _simpan();
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
                      // kontak.add(Kontak("name", "0891298389"));

                      _update();
                    },
                    child: const Text(
                      "Update",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

          //list kontak
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: kontak.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        // width: 300,
                        height: 80,
                        // width: 200,
                        child:
                            // Text(myList[index]['nama'])
                            ListTile(
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 218, 218, 218),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Text(
                                  kontak[index].name[0],
                                  style: const TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          title: Text(kontak[index].name),
                          subtitle: Text(kontak[index].phone),
                          trailing: SizedBox(
                            height: 50,
                            width: 50,
                            child: Row(
                              children: [
                                InkWell(
                                    onTap: () {
                                      print(
                                          "Kontak Terpilih adalah ${kontak[index].name}");

                                      setState(() {
                                        // kontak[index] = Kontak("name", "phone");
                                        indexKontak += index;
                                        listName = kontak[index].name;
                                        listPhone = kontak[index].phone;
                                      });
                                    },
                                    child: Icon(Icons.edit)),
                                InkWell(
                                    onTap: () {
                                      print("delete");
                                      _delete(index);
                                    },
                                    child: Icon(Icons.delete)),
                              ],
                            ),
                          ),
                        ));
                  }),
            ),
          )
        ],
      )),
    );
  }
}

class Kontak {
  String name;
  String phone;
  Kontak(this.name, this.phone);
}
