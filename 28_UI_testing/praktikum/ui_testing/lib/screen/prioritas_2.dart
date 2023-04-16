import 'package:flutter/material.dart';

class HomePrioritas2 extends StatefulWidget {
  const HomePrioritas2({Key? key}) : super(key: key);

  @override
  State<HomePrioritas2> createState() => _HomePrioritas2State();
}

class _HomePrioritas2State extends State<HomePrioritas2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 65, 98),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/profile.png",
                        height: 55,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Rouf Majidin",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: Colors.green,
                          ),
                          Text(
                            "Mahasiswa",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 140,
                ),
                Row(
                  children: [
                    Container(
                      child: const Text(
                        "|",
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 202, 202, 202)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: const Text("Log out"),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              alignment: Alignment.center,
              height: 200,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 229, 229, 229)),
              child: const Text("Pengumuman Page"),
            ),

            //menu 1

            const SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 80,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 235, 235, 235)),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 34, 74, 107),
                                  size: 20,
                                ),
                                Text(
                                  "profile-Mu",
                                  style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        34,
                                        74,
                                        107,
                                      ),
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 80,
                            padding: EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 235, 235, 235)),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.book,
                                  color: Color.fromARGB(255, 34, 74, 107),
                                  size: 20,
                                ),
                                Text(
                                  "E-leraning",
                                  style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        34,
                                        74,
                                        107,
                                      ),
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 80,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 235, 235, 235)),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.edit,
                                  color: Color.fromARGB(255, 34, 74, 107),
                                  size: 20,
                                ),
                                Text(
                                  "Krs-Online",
                                  style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        34,
                                        74,
                                        107,
                                      ),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                //menu2
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 80,
                            padding: EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 235, 235, 235)),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 34, 74, 107),
                                  size: 20,
                                ),
                                Text(
                                  "Onlie Ujian",
                                  style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        34,
                                        74,
                                        107,
                                      ),
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 80,
                            padding: EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 235, 235, 235)),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.book,
                                  color: Color.fromARGB(255, 34, 74, 107),
                                  size: 20,
                                ),
                                Text(
                                  "E-leraning",
                                  style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        34,
                                        74,
                                        107,
                                      ),
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 80,
                            padding: EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 235, 235, 235)),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.edit,
                                  color: Color.fromARGB(255, 34, 74, 107),
                                  size: 20,
                                ),
                                Text(
                                  "Krs-Online",
                                  style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        34,
                                        74,
                                        107,
                                      ),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 80,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 235, 235, 235)),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 34, 74, 107),
                                  size: 20,
                                ),
                                Text(
                                  "profile-Mu",
                                  style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        34,
                                        74,
                                        107,
                                      ),
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 80,
                            padding: EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 235, 235, 235)),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.book,
                                  color: Color.fromARGB(255, 34, 74, 107),
                                  size: 20,
                                ),
                                Text(
                                  "E-leraning",
                                  style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        34,
                                        74,
                                        107,
                                      ),
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 80,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 235, 235, 235)),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.edit,
                                  color: Color.fromARGB(255, 34, 74, 107),
                                  size: 20,
                                ),
                                Text(
                                  "Krs-Online",
                                  style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        34,
                                        74,
                                        107,
                                      ),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                //menu 3

                //menu2
              ],
            ),
          ],
        ),
      ),
    );
  }
}
