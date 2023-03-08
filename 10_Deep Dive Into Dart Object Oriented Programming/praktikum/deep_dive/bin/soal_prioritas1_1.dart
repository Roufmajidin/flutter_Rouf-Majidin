class BangunRuang {
  double panjang = 20;
  double lebar = 12;
  double tinggi = 3;

  // BangunRuang(
  //     {required this.panjang, required this.lebar, required this.tinggi});

  double volume() {
    return 0;
  }

  // var volume =
}

class Kubus extends BangunRuang {
  // Kubus({required super.panjang, required super.lebar, required super.tinggi});
  Kubus({required this.sisi});
  double sisi;

  // double sisi = ;

  // Kubus(this.sisi);
  // Kubus():Super*
  // Kubus({required this.sisi});

  @override
  double volume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  // Balok({required super.panjang, required super.lebar, required super.tinggi});

  // var panjang = BangunRuang().panjang;
  // var lebar = BangunRuang().lebar;
  // double lebar;
  // Balok(this.panjang, this.lebar);
  @override
  double volume() {
    return panjang * lebar * tinggi;
  }
}
