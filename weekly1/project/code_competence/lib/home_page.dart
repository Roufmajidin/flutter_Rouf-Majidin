import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _textHelpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Contact Apps"),
        leading: Icon(Icons.person),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 400,
                  child: Image.asset(
                    'assets/ilustrasi-apps.png',
                  )),
              Center(
                child: Text(
                  "Welcome, dengan aplikasi contact ini kita bisa menyimpan kontak dengan banyak sekali lho",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: Colors.amber,
                        letterSpacing: .5,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              formInput(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget formInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contact Us",
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 16),
            children: <TextSpan>[
              TextSpan(
                  text:
                      "Need to get in touch with us? Either fill out the form with your inquiry find the ",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: "department email ",
                  style: TextStyle(color: Colors.blue)),
              TextSpan(
                text: "you'd like to contact bellow",
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text('First Name'),
                subtitle: TextFormField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: ListTile(
                title: Text('Last Name'),
                subtitle: TextFormField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
              ),
            ),
          ],
        ),
        ListTile(
          title: Text('Email'),
          subtitle: TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ),
        ),
        ListTile(
          title: Text('What can we help you with?'),
          subtitle: TextFormField(
            controller: _textHelpController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            log("Nama : ${_firstNameController.text} ${_lastNameController.text}  ");
            log("Email : ${_emailController.text}  ");
            showDialogWidget(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Container(
              // height: 100,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        )
      ],
    );
  }

  void showDialogWidget(index) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Center(child: Text("Alert Dialog")),
            actions: [
              TextButton(
                // style:
                // ButtonStyle(backgroundColor: Colors.amberAccent),
                onPressed: () {},
                child: const Text('Ya'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Tidak'),
              ),
            ],
            content: Container(
                height: 300,
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Nama : ${_firstNameController.text} ${_lastNameController.text}  "),
                    Text("Email : ${_emailController.text}  "),
                    Text("How can help you ? : ${_textHelpController.text}  ")
                  ],
                )),
          );
        });
  }
}
