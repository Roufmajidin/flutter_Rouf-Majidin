void main() {
  var kata = "Laptop";
  String pembalikan = kata.split('').reversed.join();
  // print(pembalikan);

  if (kata != pembalikan) {
    print("kata $kata Bukan Palindrom");
  } else {
    print("kata yang dimasukkan ($kata) adalah palindrom");
  }
}
