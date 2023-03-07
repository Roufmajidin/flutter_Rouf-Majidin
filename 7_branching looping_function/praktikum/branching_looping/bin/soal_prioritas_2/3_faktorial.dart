import 'dart:io';

void main() {
  print("masukkan angka dibawah :");
  var f = stdin.readLineSync();
  int f_convert = int.parse(f.toString());
  int result = 1;
  for (int i = 1; i <= f_convert; i++) {
    result *= i;
  }

  print('Factorial dari $f_convert :');
  print(result);
}
