import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Welcome to the my Apps",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Enjoy & Eksplore this",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            elevation: 0.0,
            backgroundColor: Color.fromARGB(255, 35, 122, 80).withOpacity(0.9),
            brightness: Brightness.light,
          ),
        ),
        drawer: Drawer(
          width: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 22, 69, 47),
                    borderRadius: BorderRadius.circular(5)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
                child: const Text(
                  "About us",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 35, 122, 80),
                    borderRadius: BorderRadius.circular(5)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
                child: const Text(
                  "Contact Us",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 35, 122, 80),
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
        body: const BodyWidget(),
        bottomNavigationBar: const BottomBawah());
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> myListProduk = [
      {
        'namaProduk': "NVidia Graphics",
        'imageAssetLink': "assets/images/3.png",
        "harga": "2.400.000"
      },
      {
        'namaProduk': "Keyboard Mc",
        'imageAssetLink': "assets/images/5.png",
        "harga": "400.000"
      },
      {
        'namaProduk': "Fan Cooling",
        'imageAssetLink': "assets/images/4.png",
        "harga": "320.000"
      },
      {
        'namaProduk': "Ram SODIMM",
        'imageAssetLink': "assets/images/6.png",
        "harga": "630.000"
      },
      {
        'namaProduk': "Corsair",
        'imageAssetLink': "assets/images/1.png",
        "harga": "250.000"
      },
      {
        'namaProduk': "MSI Mobo",
        'imageAssetLink': "assets/images/2.png",
        "harga": "150.000"
      },
    ];
    List<dynamic> kategori = [
      {
        'namaProduk': "Mouse",
        'imageAssetLink': "assets/images/kategori/1.png",
        "harga": "200.000"
      },
      {
        'namaProduk': "Cpu Core i5",
        'imageAssetLink': "assets/images/kategori/2.png",
        "harga": "5.500.000"
      },
      {
        'namaProduk': "Monitor",
        'imageAssetLink': "assets/images/kategori/3.png",
        "harga": "3.400.000"
      },
      {
        'namaProduk': "Headset",
        'imageAssetLink': "assets/images/kategori/4.png",
        "harga": "630.000"
      },
      {
        'namaProduk': "Keyboard Gamming",
        'imageAssetLink': "assets/images/kategori/5.png",
        "harga": "320.000"
      },
    ];
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Abous Us',
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  height: 260,
                  child: listProduk1(context, myListProduk)),
              Container(
                padding: const EdgeInsets.only(left: 40, top: 10),
                alignment: Alignment.centerRight,
                child: const Text(
                  "More produk",
                  style: TextStyle(
                      fontFamily: 'Sofia Sans Condensed',
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              const Text(
                'Terpupuler',
                style: TextStyle(fontSize: 18.0),
              ),
              Container(
                  padding: const EdgeInsets.only(bottom: 5, top: 12),
                  height: 260,
                  child: listProduk2(context, kategori)),
            ])));
  }
}

Widget listProduk1(BuildContext context, myListProduk) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: myListProduk.length,
    // itemCount: data.size,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(left: 9),
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          width: 200,
          decoration: BoxDecoration(
              color: const Color.fromARGB(248, 18, 114, 59),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  myListProduk[index]['namaProduk'],
                  style: const TextStyle(
                      fontFamily: 'Sofia Sans Condensed',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                      fit: BoxFit.cover,
                      height: 150,
                      myListProduk[index]['imageAssetLink'].toString())),
              InkWell(
                onTap: () {
                  print("object");
                },
                child: Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 14, 91, 47),
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'Rp. ${myListProduk[index]['harga'].toString()}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto Condensed'),
                            ),
                            const Text(
                              "Add to Cart",
                              style: TextStyle(
                                color: Colors.amberAccent,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      );
    },

    // list view bawah
  );
}

Widget listProduk2(BuildContext context, kategori) {
  return ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount: kategori.length,
    // itemCount: data.size,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 9),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
              color: const Color.fromARGB(248, 18, 114, 59),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                      fit: BoxFit.cover,
                      height: 100,
                      kategori[index]['imageAssetLink'].toString())),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    kategori[index]['namaProduk'],
                    style: const TextStyle(
                        fontFamily: 'Sofia Sans Condensed',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'Rp. ${kategori[index]['harga'].toString()}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto Condensed'),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  print("object");
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 14, 91, 47),
                        borderRadius: BorderRadius.circular(4)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                          color: Colors.amberAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      );
    },

    // list view bawah
  );
}

class BottomBawah extends StatelessWidget {
  const BottomBawah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      backgroundColor: const Color.fromARGB(248, 18, 114, 59),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      currentIndex: 0,
      onTap: (index) {},
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'About Us',
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
