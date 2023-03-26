import 'package:flutter/material.dart';

class FlutterLayouts extends StatefulWidget {
  String title;

  FlutterLayouts({super.key, required this.title});

  @override
  State<FlutterLayouts> createState() => _FlutterLayoutsState();
}

class _FlutterLayoutsState extends State<FlutterLayouts> {
// sample data for list view
  static const data = [
    {"username": "PurplePenguin22", "phone": "(555) 123-4567"},
    {"username": "GreenGiraffe99", "phone": "(555) 234-5678"},
    {"username": "SilverSunshine11", "phone": "(555) 345-6789"},
    {"username": "BlueButterfly44", "phone": "(555) 456-7890"},
    {"username": "GoldenDragonfly77", "phone": "(555) 567-8901"},
    {"username": "RedRainbow66", "phone": "(555) 678-9012"},
    {"username": "OrangeMeadow55", "phone": "(555) 789-0123"},
    {"username": "YellowNightfall33", "phone": "(555) 890-1234"},
    {"username": "BlackStarlight88", "phone": "(555) 901-2345"},
    {"username": "PinkMoonstone77", "phone": "(555) 012-3456"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("JSON ListView in Flutter "),
        ),
        body: Stack(
          children: [
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: data.length,
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
                              data[index]['username']![0],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )),
                        title: Text(
                          data[index]['username']!,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        subtitle: Text(
                          data[index]['phone']!,
                          style: const TextStyle(),
                        ),
                      ));
                }),
          ],
        ));
  }
}
