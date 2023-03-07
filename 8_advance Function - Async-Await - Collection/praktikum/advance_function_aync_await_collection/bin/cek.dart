// void main() {
//   //Future adalah sebuah objek yang merepresentasikan dari suatu tugas yang sedang dijalankan secara asycnchronus
//   print('Memulai download data');
//   downloadData().then((result) {
//     print(result);
//     print('Program berjalan dengan normal');
//   });
// }

// Future<String> downloadData() {
//   return Future.delayed(Duration(seconds: 2), () {
//     return 'Data berhasil diunduh';
//   });
// }

// Future<int> countTheAtoms(){}

void main() {
// import "package:test/test.dart";

  // Your code goes here
  var d = [];
  var s = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

//    s.forEach((data){

  d.add(s[0]);
  d.add(s[1]);
  d.add(s[2]);

//    });
//    for(var element in d){
//      print('($d)');

//    }
  // for (var i = 0; i < s.length; i++) {
  //   print(i);
  //   d.add()
  // }
  var range = s.getRange(0, 3);
  var range2 = s.getRange(3, 6);
  var range3 = s.getRange(6, 9);
  // var a = range + range2;
  var j = range3.join('$range3');
  print(j);

//    expect(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), equals('(123) 456-7890')));
}
