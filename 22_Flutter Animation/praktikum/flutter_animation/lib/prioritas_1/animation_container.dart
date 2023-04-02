import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationPageContainer extends StatefulWidget {
  AnimationPageContainer({super.key});
  @override
  State<AnimationPageContainer> createState() => _AnimationPageContainerState();
}

class _AnimationPageContainerState extends State<AnimationPageContainer> {
  @override
  bool isUbah = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text("Animations"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  height: isUbah ? 200 : 100,
                  width: isUbah ? 200 : 100,
                  child: Image.asset(
                    'assets/images/9.jpg',
                    scale: 0.1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                log("Ubah Ukuran");
                setState(() {
                  if (isUbah == true) {
                    isUbah = false;
                  } else {
                    isUbah = true;
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Ubah"),
              ),
            ),
          )
        ],
      )),
    );
  }
}
