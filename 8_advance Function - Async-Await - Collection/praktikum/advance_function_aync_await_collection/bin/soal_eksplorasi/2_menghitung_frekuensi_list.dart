void main() {
  var a = ["Js", "js", "js", "golang", "python", "js", "js", "golang", "Rust"];

  var map = Map();
  a.forEach((element) {
    if (!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] += 1;
    }
  });
  print(map.toString());
  //biar kurawal nya ilang (print data biar bukan map lagi ==> pake foreach)
  // map.forEach((key, value) {
  //   print('${key} : $value');
  // });
  // var b = ['new', 'old'];
  // a.remove('Js');
  // b.remove('old');
  // print(a);
}
