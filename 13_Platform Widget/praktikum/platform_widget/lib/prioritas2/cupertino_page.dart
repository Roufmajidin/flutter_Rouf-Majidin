import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myCupertinoPage extends StatelessWidget {
  const myCupertinoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoApp"),
      ),
      child: isiBody(),
    );
  }
}

class isiBody extends StatelessWidget {
  const isiBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'This is Cupertino App',
      style: TextStyle(fontSize: 20.0),
    ));
  }
}
