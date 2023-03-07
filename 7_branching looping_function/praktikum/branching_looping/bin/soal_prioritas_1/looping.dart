import 'dart:io';

void main() {
  print("masukkan Nilai Perulangan :");
  var inputan_nilai = stdin.readLineSync();

  var nilai = int.parse(inputan_nilai.toString());
  print("Anda Memasukkan Angka Perulang $nilai ");
  for (var i = 0; i < nilai; i++) {
    print(i);
  }
}
