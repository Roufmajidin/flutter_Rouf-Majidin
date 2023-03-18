import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
// sample data for list view
  static const data = [
    {"nama_ikon": Icons.abc},
    {"nama_ikon": Icons.baby_changing_station},
    {"nama_ikon": Icons.cabin},
    {"nama_ikon": Icons.dangerous_outlined},
    {"nama_ikon": Icons.earbuds},
    {"nama_ikon": Icons.face_retouching_natural},
    {"nama_ikon": Icons.g_mobiledata_outlined},
    {"nama_ikon": Icons.hail_sharp},
    {"nama_ikon": Icons.ice_skating},
    {"nama_ikon": Icons.javascript},
    {"nama_ikon": Icons.kayaking},
    {"nama_ikon": Icons.label_important},
    {"nama_ikon": Icons.mail},
    {"nama_ikon": Icons.offline_bolt},
    {"nama_ikon": Icons.padding_outlined},
    {"nama_ikon": Icons.qr_code},
    {"nama_ikon": Icons.radio},
    {"nama_ikon": Icons.safety_check},
    {"nama_ikon": Icons.tab_rounded},
    {"nama_ikon": Icons.u_turn_left_sharp},
    {"nama_ikon": Icons.vaccines},
    {"nama_ikon": Icons.wallet},
    {"nama_ikon": Icons.one_x_mobiledata},
    {"nama_ikon": Icons.zoom_in_map},
    {"nama_ikon": Icons.nature},
    {"nama_ikon": Icons.offline_bolt},
    {"nama_ikon": Icons.padding_outlined},
    {"nama_ikon": Icons.qr_code},
    {"nama_ikon": Icons.radio},
    {"nama_ikon": Icons.offline_bolt},
    {"nama_ikon": Icons.padding_outlined},
    {"nama_ikon": Icons.qr_code},
    {"nama_ikon": Icons.radio},
    {"nama_ikon": Icons.safety_check},
    {"nama_ikon": Icons.tab_rounded},
    {"nama_ikon": Icons.u_turn_left_sharp},
    {"nama_ikon": Icons.vaccines},
    {"nama_ikon": Icons.wallet},
    {"nama_ikon": Icons.one_x_mobiledata},
    {"nama_ikon": Icons.zoom_in_map},
    {"nama_ikon": Icons.safety_check},
    {"nama_ikon": Icons.tab_rounded},
    {"nama_ikon": Icons.u_turn_left_sharp},
    {"nama_ikon": Icons.vaccines},
    {"nama_ikon": Icons.wallet},
    {"nama_ikon": Icons.one_x_mobiledata},
    {"nama_ikon": Icons.zoom_in_map},
    {"nama_ikon": Icons.offline_bolt},
    {"nama_ikon": Icons.padding_outlined},
    {"nama_ikon": Icons.qr_code},
    {"nama_ikon": Icons.radio},
    {"nama_ikon": Icons.safety_check},
    {"nama_ikon": Icons.tab_rounded},
    {"nama_ikon": Icons.u_turn_left_sharp},
    {"nama_ikon": Icons.vaccines},
    {"nama_ikon": Icons.wallet},
    {"nama_ikon": Icons.one_x_mobiledata},
    {"nama_ikon": Icons.zoom_in_map},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GridView Flutter"),
        ),
        body: Stack(
          children: [
            GridView.builder(
                padding: EdgeInsets.all(12),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 40,
                    // childAspectRatio: 2 / 2,

                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50)),
                      // width: 200,
                      child: Icon(
                        data[index]['nama_ikon'],
                        color: Colors.white,
                      ));
                  // Text(myList[index]['nama'])
                }),
          ],
        ));

    // body_satu(),
  }
}
