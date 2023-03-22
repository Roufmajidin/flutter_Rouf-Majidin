import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';

class AdvanceFormEksplorasi extends StatefulWidget {
  const AdvanceFormEksplorasi({super.key});

  @override
  State<AdvanceFormEksplorasi> createState() => _AdvanceFormEksplorasiState();
}

class _AdvanceFormEksplorasiState extends State<AdvanceFormEksplorasi> {
  // final _nameController = TextEditingController();

  // tampung
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.orange;
  var image = '';
//
  var indexKontak = 0;
  var listName = '';
  var listPhone = '';

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  // final formKey = GlobalKey<FormState>();
  final List<Kontak> kontak = [
    Kontak('Rouf Majidin', '+62 83133978010', Colors.amber),
    Kontak('Ahmad Alif', '+62 83133978010', Colors.red),
  ];

  void _simpan() {
    setState(() {
      kontak.add(
          Kontak(_nameController.text, _phoneController.text, _currentColor));

      log("Sesudah Submit");
      log("nama : ${_nameController.text}");
      log("nomor_telp : ${_nameController.text}");
      log("Color : ${_currentColor}");
      log("Waktu Dipilih : ${DateFormat('dd-MM-yyyy').format(_dueDate)}");
      // log(image);
      _nameController.clear();
      _phoneController.clear();
      listName = '';
      listPhone = '';
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
      kontak[id] =
          Kontak(_nameController.text, _phoneController.text, _currentColor);
      _nameController.clear();
      listName = "";
      listPhone = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Interaktif Widget's"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            textAtas(context),
            const SizedBox(
              height: 20,
            ),
            inputanForm(context),
            dateWidget(context),
            colorWidget(context),
            fileWidget(context),
            tombolSubmit(context),
            SizedBox(
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
                                  color: kontak[index].color,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Text(
                                  kontak[index].name[0].toString(),
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
                                    child: const Icon(Icons.edit)),
                                InkWell(
                                    onTap: () {
                                      print("delete");
                                      _delete(index);
                                    },
                                    child: const Icon(Icons.delete)),
                              ],
                            ),
                          ),
                        ));
                  }),
            )
          ],
        ),
      )),
    );
  }

// class text judul
  Widget textAtas(BuildContext context) {
    return Column(children: const [
      Icon(Icons.task),
      Center(
        child: Text(
          "Create new Contacts",
          style: TextStyle(fontSize: 18),
        ),
      ),
      SizedBox(
          width: 300,
          child: Text(
              "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ",
              style: TextStyle(fontSize: 16))),

      // text field nya
    ]);
  }

  Widget inputanForm(BuildContext context) {
    return Column(
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
          controller: _phoneController..text = listPhone,
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
    );
  }

// class pick
  Widget dateWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Date",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textColor),
            ),
            TextButton(
              child: const Text(
                "Select",
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () async {
                final selectDate = await showDatePicker(
                    context: context,
                    initialDate: currentDate,
                    firstDate: DateTime(1990),
                    lastDate: DateTime(currentDate.year + 5));
                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  } else {}
                });
              },
            )
          ],
        ),
        Text(
          DateFormat('dd-MM-yyyy').format(_dueDate),
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppTheme.textColor),
        ),
      ],
    );
  }

  Widget colorWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Color",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.textColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: _currentColor,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("memilih Warna");
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Pilih Warna"),
                        content: ColorPicker(
                            pickerColor: _currentColor,
                            onColorChanged: (color) {
                              setState(() {
                                _currentColor = color;
                              });
                            }),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Save"))
                        ],
                      );
                    });
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: _currentColor,
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  "Pick Colors",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget fileWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pick File",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.textColor),
        ),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  _pickFile();
                },
                child: Text("Pick and Open File")))
      ],
    );
  }

  // end of pick
// submit
  Widget tombolSubmit(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 21),
      alignment: Alignment.topRight,
      child: MaterialButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        onPressed: () {
          // kontak.add(Kontak("name", "0891298389"));

          listName == "" ? _simpan() : _update();
        },
        child: Text(
          listName == "" ? "Submit" : "Update",
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  // fungsi pick file
  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result == null) null;
    final file = result!.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
    image = file.name;
    log(image);
  }
  // end of fungsi
// end clas

}

class Kontak {
  String name;
  String phone;
  Color color;
  Kontak(this.name, this.phone, this.color);
}

class AppTheme {
  static final Color textColor = Color.fromARGB(255, 69, 69, 69);

  static final ThemeData themeData = ThemeData(
    primaryColor: textColor,
  );
}
