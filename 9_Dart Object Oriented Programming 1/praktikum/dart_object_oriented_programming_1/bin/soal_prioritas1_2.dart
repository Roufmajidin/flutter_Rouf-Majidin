import 'dart:io';

class Hewan {
  String namaHewan;
  double berat;

  Hewan({required this.namaHewan, required this.berat});
}

class Mobil {
// kapasitas dalam ton
  // var a = Hewan();

  var kapasitasPadaMobil = 1000;

//muatan total
  List<Hewan> muatan = [];

  void tambahMuatan(Hewan hewan) {
    double totalMuatan = 0;
    for (Hewan hewan in muatan) {
      totalMuatan + hewan.berat;
    }
    print("kapasitas Mobil : $kapasitasPadaMobil");
    if (totalMuatan <= kapasitasPadaMobil) {
      muatan.add(hewan);
      totalMuatan += hewan.berat;

      // print("Kapasitas Mobil : $kapasitasPadaMobil");
      print("Kapasitas bobot Total : ${hewan.berat}.... Hewan Bisa Diangkut ");
    } else {
      print(
          "Maaf, Kapasitas Mobil Tidak Mencukupi karena kapasitas Mobil($kapasitasPadaMobil) dan bobot total ($totalMuatan)");
    }
    print("");
    // print('TOTAL MUATAN: $totalMuatan, \n BOBOT MOBIL  : $kapasitasPadaMobil');
  }
}

void main() {
  var m = Mobil();
  // var beratHewan = h.beratHewan();
  // var beratH = stdin.readLineSync();
  // print("Masukkan J");
  Hewan kambing = Hewan(namaHewan: "Kambing", berat: 200);
  m.tambahMuatan(kambing);
  Hewan kebo = Hewan(namaHewan: "Kerbau", berat: 700.0);
  m.tambahMuatan(kebo);
}
