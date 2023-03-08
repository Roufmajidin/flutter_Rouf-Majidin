class Hitung {}

class Matematika {
  double hasil() {
    return 0;
  }
}

class KelipatanPersekutuanTerbesar implements Matematika {
  double x;
  double y;
  KelipatanPersekutuanTerbesar(this.x, this.y);

  @override
  double hasil() {
    while (y != 0.0) {
      double z = x % y;
      x = y;
      y = z;
    }
    // print(x);
    return x;
  }
}

class KelipatanPersekutuanTerkecil implements Matematika {
// KelipatanPersekutuanTerbesar tt = KelipatanPersekutuanTerbesar();
  double x;
  double y;
  kpk() {
    while (y != 0) {
      double z = x % y;
      // checking
      // 24 /2 = 12 sisa 0
      // 12/2 = 6 sisa 0
      // break
      x = y;
      y = z;
      // print("z : $z");
    }
    // print("nilai y : $y");
    print("nilai FPB : $x");
    return x;
  }

  KelipatanPersekutuanTerkecil(this.x, this.y);
  @override
  double hasil() {
    var rumus = (x * y) / kpk();
    return rumus.toDouble();
  }
}
