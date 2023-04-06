import 'package:animate_do/animate_do.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  var indexName = 0;

  String name = '';
  String email = '';

  String phone = '';

  var _nameController = TextEditingController();

  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  static final RegExp n = RegExp('[a-zA-Z]');

  late SharedPreferences loginData;
  late bool newUser;
  var formKey = GlobalKey<FormState>();

  void checkLogin() async {
    loginData = await SharedPreferences.getInstance();
    newUser = loginData.getBool("login") ?? true;

    if (newUser == false) {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
          (route) => false);
    }
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(255, 6, 135, 92),
        //   title: const Text("Form Contacts"),
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const ScrollPhysics(),
      child: SizedBox(
        height: 800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 200,
            ),
            tulisanAtasWidget(context),
            const SizedBox(
              height: 20,
            ),
            formWidget(context),

            //  tombol logic submit dan update

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: MaterialButton(
                minWidth: 400,
                height: 50,
                color: const Color.fromARGB(255, 6, 135, 92),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  final isValid = formKey.currentState!.validate();

                  String username = _nameController.text;
                  String email = _emailController.text;
                  loginData.setBool('login', false);
                  loginData.setString('username', username);
                  loginData.setString('email', email);
                  if (isValid) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(seconds: 1),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const HomePage(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return SlideInUp(child: child);
                        },
                      ),
                      (route) => false,
                    );
                  }
                },
              ),
            ),

            //list kontak
          ],
        ),
      ),
    ));
  }

  Widget tulisanAtasWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60, bottom: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Welcome",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Text("Silahkan Login untuk menjelajah ke Aplikasi ini ",
              style: TextStyle(fontSize: 16)),
        ],
      ),
    );
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
                    controller: _nameController..text = name,
                    onChanged: (String value) {
                      name = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "nama tidak boleh kosong";
                      }
                      // if (n.hasMatch(value)) {
                      //   return "Nama harus benar";
                      // }
                    },
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nama',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // text field nya
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (String value) {
                      phone = value;
                    },
                    validator: (value) {
                      var _isValid =
                          EmailValidator.validate(_emailController.text);
                      if (!_isValid) {
                        // print("harus email");
                        return "Email harus terdapat @";
                      }
                    },
                    controller: _emailController,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // text field nya
                  TextFormField(
                    validator: (value) {
                      if (_passwordController.text.length <= 8) {
                        return "Password harus 8/lebih karaktek input";
                      }
                    },

                    controller: _passwordController,

                    // initialValue: '+62',
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
