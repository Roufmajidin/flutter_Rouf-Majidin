import 'package:flutter/material.dart';
// import ''
import 'package:badges/badges.dart' as badges;

class badgeLatihan extends StatefulWidget {
  const badgeLatihan({super.key});

  @override
  State<badgeLatihan> createState() => _badgeLatihanState();
}

class _badgeLatihanState extends State<badgeLatihan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(
        title: Center(child: Text("Ini Badges")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Badges",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 124, 33),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Badges",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
