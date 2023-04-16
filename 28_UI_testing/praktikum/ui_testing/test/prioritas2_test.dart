import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing/screen/prioritas_2.dart';

void main() {
  group("TEST ELEMENT (SOAL PRIORITAS 2)", () {
    testWidgets("test text Nama User", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePrioritas2(),
      ));
      expect(find.text("Rouf Majidin"), findsOneWidget);
    });
    testWidgets("Test Image Profile", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePrioritas2(),
      ));
      Finder imageP = find.byType(Image);

      log("test input form");
      expect(imageP, findsOneWidget);
    });
    testWidgets("test Logout button", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePrioritas2(),
      ));
      expect(find.text("Log out"), findsOneWidget);
    });
    testWidgets("test Pengumuman Widget", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePrioritas2(),
      ));

      expect(find.text("Pengumuman Page"), findsOneWidget);
    });
  });
}
