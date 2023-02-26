import 'dart:io';

void main() {
  for (int a = 1; a < 9; a++) {
    for (int b = 8; b >= a; b--) {
      stdout.write(" ");
    }

    for (int i = 1; i < a * 2; i++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
  // stdout.write(" \n");
}
