import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:finite_state_machine_and_unit_testingg/view_model/contact_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'add_contact.dart';
import 'contact_screen.dart';

class HomePageContact extends StatefulWidget {
  const HomePageContact({super.key});

  @override
  State<HomePageContact> createState() => _HomePageContactState();
}

class _HomePageContactState extends State<HomePageContact> {
  late SharedPreferences loginData;
  String username = "";
  String email = "";
  // bool isChecked = false;

  // void ubahStatus(index, value) {
  //   isChecked = value!;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widgetAtas(context),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 20),
            child: Text(
              "Your Contacts",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          contactWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(seconds: 1),
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AddContact(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideInRight(child: child);
              },
            ),
            (route) => false,
          );
        },
        backgroundColor: const Color.fromARGB(255, 6, 135, 92),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget contactWidget() {
    final manager = Provider.of<ContactProvider>(context, listen: false);
    return Consumer<ContactProvider>(
      builder: (context, manager, child) {
        if (manager.state == ContactState.loading) {
          return CircularProgressIndicator();
        } else if (manager.state == ContactState.loaded) {
          return Expanded(
            // height: 600,
            child: SizedBox(
              height: 600,
              child: contactSccreen(
                manager: manager,
                reversed: true,
              ),
            ),
          );
        }
        if (manager.state == ContactState.error) {
          return const Center(child: Text("Gagal Mengambil Data"));
        } else {
          return SizedBox(
              height: 200,
              child: const Center(child: Text("Kontak Masih Kosong")));
        }
      },
    );
  }

  Widget widgetAtas(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 6, 135, 92),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        height: 300,
        width: 720,
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20, bottom: 10),
                alignment: Alignment.topRight,
                child: GestureDetector(
                    onTap: () {
                      logoutWdiget(context);
                    },
                    child: const Icon(Icons.person, color: Colors.white)),
              ),
              const Center(
                child: Text(
                  "Contact Mangement",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Welcome ",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 242, 242, 242),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
  }

  Future<void> logoutWdiget(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const SingleChildScrollView(
            child: SizedBox(
              width: 400,
              // form widget
              child: Text("Apakah Anda Yakin akan Logout ?"),
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Logout"))
          ],
        );
      },
    );
  }
}