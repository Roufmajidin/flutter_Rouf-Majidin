import 'dart:developer';

import 'package:flutter/material.dart';

import '../apis/services.dart';

class HomePagePrioritas1 extends StatefulWidget {
  const HomePagePrioritas1({super.key});

  @override
  State<HomePagePrioritas1> createState() => _HomePagePrioritas1State();
}

class _HomePagePrioritas1State extends State<HomePagePrioritas1> {
  @override
  String? result;
  String name = '';
  String email = '';
  String phone = '';
  var _nameController = TextEditingController();

  var _nomorController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const ScrollPhysics(),
      child: SizedBox(
        height: 800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            tulisanAtasWidget(context),
            const SizedBox(
              height: 20,
            ),
            formWidget(context),

            buttonWidget(context),
            //data Response
            Center(
              child: Text(
                result ?? "".toString(),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    ));
  }

//button widget
  Widget buttonWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
              // minWidth: 400,
              height: 50,
              color: const Color.fromARGB(255, 6, 135, 92),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "POST",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                final service = Services();

                final _result = await service.createUser(
                    name: _nameController.text, phone: _nomorController.text);
                result = _result.toString();

                setState(() {});
              }),
          MaterialButton(
              // minWidth: 400,
              height: 50,
              color: Color.fromARGB(255, 6, 8, 135),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "FETCH",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                final service = Services();

                final _result = await service.readUser();
                result = _result.toString();
                setState(() {});
              }),
          MaterialButton(
              // minWidth: 400,
              height: 50,
              color: const Color.fromARGB(255, 6, 135, 92),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "PUT",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                final service = Services();

                final _result = await service.update(
                    name: _nameController.text, phone: _nomorController.text);
                // service.getR();
                result = _result.toString();
                setState(() {});
              }),
          MaterialButton(
              // minWidth: 400,
              height: 50,
              color: const Color.fromARGB(255, 135, 6, 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "DELETE",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                setState(() {});
              }),
        ],
      ),
    );
  }

  Widget tulisanAtasWidget(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(50),
      child: Center(
          child: Text("Prioritas 1",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
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
                    controller: _nomorController,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nomor',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // text field nya
                ],
              ))
        ],
      ),
    );
  }
}
