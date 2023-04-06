import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_storage/screens/add_contact.dart';
import 'package:flutter_storage/screens/contact_screen.dart';
import 'package:flutter_storage/screens/login_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../helper/db_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences loginData;
  String username = "";
  String email = "";
  // bool isChecked = false;

  // void ubahStatus(index, value) {
  //   isChecked = value!;
  // }

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username').toString();
      email = loginData.getString('email').toString();
    });
  }

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
    final manager = Provider.of<DBManager>(context, listen: false);
    return Consumer<DBManager>(
      builder: (context, manager, child) {
        if (manager.contactModels.isNotEmpty) {
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
        } else {
          const Text("Masih kosong");
        }
        return const SizedBox(
            height: 300, child: Center(child: Text("Kontak Masih Kosong !")));
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
              Text(
                username,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                email,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
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
            ElevatedButton(
                onPressed: () {
                  loginData.setBool("login", true);
                  loginData.remove("username");
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: const Text("Logout"))
          ],
        );
      },
    );
  }
}
