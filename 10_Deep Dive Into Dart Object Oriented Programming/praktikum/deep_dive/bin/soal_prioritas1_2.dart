import 'soal_prioritas1_1.dart';

void main() {
  Kubus kubus = Kubus(sisi: 8);
  Balok balok = Balok();
  print("Luas Kubus adalah ${kubus.volume().toInt()}");
  print("Luas Balok adalah ${balok.volume().toInt()}");
}
