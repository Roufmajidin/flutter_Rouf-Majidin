import 'dart:io';

void main() {
  stdout.write('Masukkan Angka: ');
  var a = stdin.readLineSync();
  // convert var ke int
  int angka = int.parse(a.toString());

  if (angka % 2 == 0) {
    print('$angka bilangan Genap');
  } else {
    print('$angka bilangan Prima');
  }
}
