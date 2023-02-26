import 'dart:io';

void main() {
  // panggil function lingkaran
  lingkaran();
}

lingkaran() {
  stdout.write('Silakan masukkan Luas Lingkaran: ');
  var jari_jari = stdin.readLineSync();
  // convert var ke int
  int r = int.parse(jari_jari.toString());
  var luas = 3.14 * r * r;

  print('Luas Lingkaran dg jari-jari $r adalah : $luas');
}
