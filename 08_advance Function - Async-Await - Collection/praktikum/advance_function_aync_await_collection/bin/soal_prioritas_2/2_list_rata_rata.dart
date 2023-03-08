import "dart:collection";
import 'package:collection/collection.dart';

void main() {
  rataRata();
}

rataRata() {
  List<int> number = [7, 5, 3, 5, 2, 1];

  var rataRata = number.average;
  var rata_rata = rataRata;
  var pembulatan = rata_rata.ceil();
  print("List : $number");
  print("Total : $rata_rata");
  print("Hasil dari pembulatan $rata_rata adalah : $pembulatan");
// for(var i=0; i = number.length;)/

  // for (var element in number) {
  //   print(element[]);
  // }
  // for (var i = 0; i < number.length; i++) {
  //   print(number[i]);
  // }c
  // var result = number.map((m) => m['rating']!).average;
}
