import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platform_widget/color/color.dart';

class myEksplorasiPage extends StatelessWidget {
  const myEksplorasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> myList = [
      {'nama': "Learn Flutter"},
      {'nama': "Learn ReactJS"},
      {'nama': "Learn VueJS"},
      {'nama': "LEarn Tailwind CSS"},
      {'nama': "Learn UI/UX"},
      {'nama': "Learn Figma"},
      {'nama': "Learn Digital Marketing"},
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("My Flutter App"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Cari Data',
              onPressed: () {},
            ), //IconButton
          ], //<Widget>[]
          backgroundColor: AppTheme.primaryColor,
          elevation: 50.0,

          systemOverlayStyle: SystemUiOverlayStyle.light,
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
                      height: 80,
                      // width: 200,
                      child:
                          // Text(myList[index]['nama'])
                          ListTile(
                        shape: const Border(
                            bottom: BorderSide(color: Color(0xFFCCCCCC))),
                        title: Text(
                          myList[index]['nama'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 54, 54, 54),
                              fontSize: 18),
                        ),
                      ));
                }),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            myList.add({"nama": "asas"});
            print(myList);
          },
          backgroundColor: AppTheme.secondaryColor,
          child: const Icon(Icons.add, color: Colors.black),
        ),
        bottomNavigationBar: bottomBawah());
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
      selectedItemColor: AppTheme.textColor,
      backgroundColor: AppTheme.primaryColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      currentIndex: 0,
      onTap: (index) {},
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: AppTheme.textColor,
          ),
          label: 'Favorites',
        ),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: 'Search  '),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
            label: 'Information'),
      ],
    );
  }
}
