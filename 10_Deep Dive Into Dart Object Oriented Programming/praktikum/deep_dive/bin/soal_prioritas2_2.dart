import 'soal_prioritas2_1.dart';

void main() {
  double x = 24;
  double y = 60;

  KelipatanPersekutuanTerbesar kelipatanTerbesar =
      KelipatanPersekutuanTerbesar(x, y);
  KelipatanPersekutuanTerkecil kelipatanTerkecil =
      KelipatanPersekutuanTerkecil(x, y);
  print("hasil FPB $x dan $y :");
  print(kelipatanTerbesar.hasil());
  print("");
  print("Hasil KPK : ${kelipatanTerkecil.hasil()}");
}
