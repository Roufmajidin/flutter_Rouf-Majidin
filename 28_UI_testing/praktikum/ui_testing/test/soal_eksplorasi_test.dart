import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing/screen/soal_eksplorasi/home_page.dart';

void main() {
  group("Soal Eksplorasi", () {
    testWidgets("test Container", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomeSoalEksplorasi(),
      ));
      Finder container = find.byType(Container);

      expect(container, findsOneWidget);
    });
  });
}
