import 'package:flutter/material.dart';

class ProfessionalSkill extends StatelessWidget {
  String title;

  ProfessionalSkill({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
          child: Center(
              child: Text(
        "Section 14 ini diisi Mentoring Professional skill ",
        style: TextStyle(fontSize: 18),
      ))),
      // body_satu(),
    );
  }
}
