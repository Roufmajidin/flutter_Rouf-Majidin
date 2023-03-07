import 'dart:io';

void main(List<String> args) {
  stdout.write('Tabel Perkalian\n');
  for (int i = 1; i <= 9; i++);
  stdout.write('');
  stdout.write('\n');

  for (int a = 1; a <= 9; a++) {
    stdout.write(a);
    for (int i = 1; i <= 9; i++) {
      int hsl = i * a;
      stdout.write(' $hsl ');
    }
    stdout.write('\n');
  }
}
