import 'package:flutter/material.dart';

class myPage extends StatelessWidget {
  const myPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> myList = [
      {'nama': "Leanne Graham", 'kontak': "121212121212"},
      {'nama': "Ervin Howwel", 'kontak': "121212121212"},
      {'nama': "Clementine Bauch", 'kontak': "121212121212"},
      {'nama': "Patricia Lebsack", 'kontak': "121212121212"},
      {'nama': "Chelsey Dietrich", 'kontak': "121212121212"},
      {'nama': "Mrs. Denniis", 'kontak': "121212121212"},
      {'nama': "Kurtis Wesnt", 'kontak': "121212121212"},
      {'nama': "Rouf Majidin", 'kontak': "121212121212"},
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
                padding: EdgeInsets.only(left: 12),
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
        body: Stack(
          children: [
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Container(
                      // width: 300,
                      height: 100,
                      // width: 200,
                      child:
                          // Text(myList[index]['nama'])
                          ListTile(
                        leading: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              myList[index]['nama'][0],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            )),
                        title: Text(
                          myList[index]['nama'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        subtitle: Text(
                          myList[index]['kontak'],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ));
                }),
          ],
        ),
        // body_satu(),
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
