import 'package:flutter/material.dart';

class HomePagePrioritas1 extends StatefulWidget {
  const HomePagePrioritas1({super.key});

  @override
  State<HomePagePrioritas1> createState() => _HomePagePrioritas1State();
}

class _HomePagePrioritas1State extends State<HomePagePrioritas1> {
  // final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hallo"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 17),
              child: Icon(Icons.task)),
          const Padding(
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

          // text field nya
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
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

          Container(
            padding: const EdgeInsets.only(right: 21),
            alignment: Alignment.topRight,
            child: MaterialButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              onPressed: () {
                // kontak.add(Kontak("name", "0891298389"));
              },
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          //list kontak
        ],
      )),
    );
  }
}
