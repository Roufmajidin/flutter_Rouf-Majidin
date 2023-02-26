import 'dart:io';

void main() {
  int value = 9;
  int spaces = 0;
  int zero = value;

  for (int i = 1; i <= value; i++) {
    for (int j = 1; j <= spaces; j++) {
      stdout.write('  ');
    }

    for (int k = 1; k <= zero; k++) {
      stdout.write('0 ');
    }

    if (i < (value / 2).ceil()) {
      spaces++;
      zero -= 2;
    } else {
      spaces--;
      zero += 2;
    }

    print('');
  }
}
