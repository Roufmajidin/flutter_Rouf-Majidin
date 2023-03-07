void main() async {
  print("loading data (dikali ceritanya)");
  Future.delayed(Duration(seconds: 2), () {
    listnya(2);
  });
}

Future listnya(int angka) async {
  var result = [];
  var li = [1, 2, 3, 4];
  print(li);
  await Future.delayed(Duration(seconds: 2), () {
    // result =
    print("setelah dilakukan pengali: (dikali $angka)");
    for (var element in li) {
      // result.add(element * angka);
      print(element * 2);
    }
  });
}
