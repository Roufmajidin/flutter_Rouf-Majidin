import 'package:flutter/cupertino.dart';
import 'package:platform_widget/prioritas2/cupertino_page.dart';

class cupertinoApp extends StatelessWidget {
  const cupertinoApp({super.key});
  final _themeDart = const CupertinoThemeData.raw(
    Brightness.dark,
    null,
    null,
    null,
    null,
    null,
  );
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: _themeDart,
      home: const myCupertinoPage(),
    );
  }
}
