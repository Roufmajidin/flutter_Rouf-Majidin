import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class barcodeLatihan extends StatefulWidget {
  const barcodeLatihan({super.key, required this.title});

  final String title;

  @override
  State<barcodeLatihan> createState() => _barcodeLatihanState();
}

class _barcodeLatihanState extends State<barcodeLatihan> {
//

//
  @override
  Widget build(BuildContext context) {
    List myList = [
      SfBarcodeGenerator(
        value: 'Alterra Academy',
        showValue: true,
        symbology: Code128(module: 2),
      ),
      SfBarcodeGenerator(
        value: 'Flutter Asik',
        showValue: true,
        symbology: Code128(module: 2),
      ),
      SfBarcodeGenerator(
        value: 'Rouf Majidin',
        showValue: true,
        symbology: Code128(module: 2),
      )
    ];

    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(
        title: Center(child: Text("Flutter Barcode")),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: ListView.builder(
            itemCount: myList.length,
            itemBuilder: (context, index) {
              return Container(
                // width: 300,
                height: 100,
                // width: 200,
                child: ListTile(
                  subtitle: myList[index],
                ),
              );
            }),
      ),
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
