class Kalkulator {
  int a = 20;
  int b = 10;
  penjumlahan() {
    print("Anda Memilih Penjumlahan");
    print("$a + $b = ");
    print(a + b);
  }

  pengurangan() {
    print("Anda Memilih Pengurangan");

    print("$a - $b = ");

    print(a - b);
  }

  perkalian() {
    print("Anda Memilih Perklian");

    print("$a x $b = ");
    print(a * b);
  }

  pembagian() {
    print("Anda Memilih Pembagian");

    print("$a / $b = ");
    print(a / b);
    // return a / b;
  }
}

void main() {
  var k = Kalkulator();

  // k.penjumlahan();
  // k.perkalian();
  // k.pengurangan();
  k.pembagian();
}
