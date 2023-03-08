class Hewan {
  var berat = 0.0;
  var jumlah = 0.0;
  List listhewan = [
    // beratHewan skala kg ..
    {
      'nama': "Kambing",
      'beratHewan': 350,
      'jumlah': 7,
    },
    {
      'nama': "kerbau",
      'beratHewan': 1200,
      'jumlah': 3,
    },
  ];
}

void main() {
  var hewan = Hewan();
  /* add value berat dan jumlahHewan di class Hewan
  BERDASARKAN hewan di list hewan  */
  hewan.listhewan.forEach((element) {
    hewan.jumlah += element['jumlah'];
    hewan.berat += element['beratHewan'];
  });
  print("jumlah Total Hewan : ${hewan.jumlah.toInt()} ekor");

  print("Total Berat Hewan : ${hewan.berat * hewan.jumlah} kg \n ");
}
