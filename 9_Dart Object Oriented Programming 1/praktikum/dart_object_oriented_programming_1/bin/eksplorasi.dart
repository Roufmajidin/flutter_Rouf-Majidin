import 'dart:math';

class Toko {
  var databuku = [
    {
      'ID': "23-B",
      'Judul': "Senja Kita",
      'Penerbit': "CV. Media",
      'harga': 12000,
      'Kategori': "Fiksi",
    },
    {
      'ID': "23-A",
      'Judul': "Cara Memasak",
      'Penerbit': "CV. Sejahtera Abadi",
      'harga': 12000,
      'Kategori': "Non-Fiksi",
    },
  ];
  readBuku() {
    // print(buku);

    print("Data Buku Sekarang : ${databuku.length} Unit");
    // print(databuku);
    print("");

    databuku.forEach((element) {
      print(element.values);
    });
    print("==========================================================");
    print("");
  }

  tambahBuku(
      String id, String judul, String penerbit, var harga, String kategori) {
    databuku.add({
      'ID': id,
      'Judul': judul,
      'Penerbit': penerbit,
      'harga': harga,
      'Kategori': kategori,
    });
    print("BUKU : '${judul}'  DITAMBAHKAN");
    readBuku();
  }

  hapusBuku(int index) {
    // var buku = [];

    print('ANDA MENGHAPUS : ${databuku[0]['Judul']}');
    // print("Dihapus menjadi :");
    databuku.remove(databuku[index]);
    readBuku();

    // print(databuku);
  }
}

void main() async {
  var c = Toko();
  c.readBuku();

  var buku = c.databuku;
  await Future.delayed(Duration(seconds: 1), (() {
    c.tambahBuku("d-2", "Dimana ada kamu", "Cv.Dua Ribuan", 140000, "Fiksi");
    // print(buku);
  }));

  //prnt databuku

  //stdin
  //vari stdin
  await Future.delayed(Duration(seconds: 1), () {
    c.hapusBuku(0);
    // print(c.databuku);
  });

  // // buku.forEach((element) {
  // //   print(element);
  // // });
}
