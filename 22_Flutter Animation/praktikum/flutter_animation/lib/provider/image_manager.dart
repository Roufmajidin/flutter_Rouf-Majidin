import 'package:flutter/material.dart';

class ImageManager extends ChangeNotifier {
  List<String> gambar = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/9.jpg',
  ];

  List<String> get imageItem => gambar;

  void addItem(String imageName) {
    gambar.add(imageName);
    notifyListeners();
  }
}
