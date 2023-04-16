import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing/screen/home_page.dart';

void main() {
  group("TEST SEMUA ELEMENT (SOAL PRIORITAS 1)", () {
    testWidgets("text Judul", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));
      log("test text judul");
      expect(find.text("Create new Contacts"), findsOneWidget);
    });
    testWidgets("Text Deskripsi element widget", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));

      expect(
          find.text(
            "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ",
          ),
          findsNWidgets(1));
    });
    testWidgets("Form Input Element", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));
      Finder inputForm = find.byType(TextFormField);

      log("test input form");
      expect(inputForm, findsNWidgets(2));
    });

    testWidgets("Submit button Element", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));

      log("test submit button");
      expect(find.text("Submit"), findsOneWidget);
    });
    testWidgets("List View element widget", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));
      Finder listView = find.byType(ListView);

      log("test List View");
      expect(listView, findsOneWidget);
    });
    testWidgets("AppBar element widget", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));
      Finder appBar = find.byType(AppBar);

      log("test Appbar");
      expect(appBar, findsOneWidget);
    });
  });
}
