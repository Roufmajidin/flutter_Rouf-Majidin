import "dart:collection";
import 'package:collection/collection.dart';

void main() async {
  await prioritas2();
}

prioritas2() {
  final mahasiswa = <String, dynamic>{
    "nama": "Rouf",
    "universitas": " UniversitasCatur Insan Cendekia",
    "detail": {
      "kota": "Cirebon",
      "no_hp": 000000000000000000,
    }
  };

  print(mahasiswa.values);
  // print(mahasiswa);
  // mahasiswa.forEach((element.k) {
  //   print(element);

  // });

  // for (var element in mahasiswa.values) {
  //   // print('Asal : ${element['universitas']}');
  // }
}


// end prioritas 2

