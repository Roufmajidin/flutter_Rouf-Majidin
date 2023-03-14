import 'package:flutter/material.dart';

class myMaterialPage extends StatelessWidget {
  const myMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> myList = [
      {'nama': "Rouf Majidin", 'kontak': "121212121212"},
      {'nama': "Risdiani", 'kontak': "121212121212"},
      {'nama': "Alif Majidin", 'kontak': "121212121212"},
      {'nama': "Risdiani Majidin", 'kontak': "121212121212"},
      {'nama': "Rouf Majidin", 'kontak': "121212121212"},
      {'nama': "Risdiani", 'kontak': "121212121212"},
      {'nama': "Alif Majidin", 'kontak': "121212121212"},
      {'nama': "Rouf Majidin", 'kontak': "121212121212"},
      {'nama': "Risdiani", 'kontak': "121212121212"},
      {'nama': "Alif Majidin", 'kontak': "121212121212"},
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text("MaterialApp"),
        ),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.only(left: 12),
                child: const Text(
                  "Home",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.only(left: 12),
                child: const Text(
                  "Settings",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
        body: const body_satu(),
        bottomNavigationBar: const bottomBawah());
  }
}

class body_satu extends StatelessWidget {
  const body_satu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'This is Material App',
      style: TextStyle(fontSize: 20.0),
    ));
  }
}

class bottomBawah extends StatelessWidget {
  const bottomBawah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color.fromARGB(255, 2, 233, 36),
      backgroundColor: const Color.fromARGB(255, 59, 59, 59),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      currentIndex: 0,
      onTap: (index) {},
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color.fromARGB(255, 2, 233, 36),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'Account'),
      ],
    );
  }
}
