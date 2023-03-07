import 'dart:convert';

import 'dart:io';

void main() {
// var a = stdin()
  print("Masukkan Nilai (misal A/B atau C) :");
  var inputan_nilai = stdin.readLineSync();
  var nilai = int.parse(inputan_nilai.toString());
  // var line = stdin.readLineSync(encoding: utf8);
  if (nilai > 70) {
    print("Nilai anda A");
  } else if (nilai > 40 && nilai < 70) {
    print("Nilai Anda B");
  } else if (nilai < 40) {
    print("Maaf, Nilai Anda C");
  } else {
    print("");
  }
}
