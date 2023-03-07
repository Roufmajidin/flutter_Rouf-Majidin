import 'dart:collection';

void main() {
  eksplorasi();
}

eksplorasi() {
  var sampleInput = [
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litchfield',
    'amuse',
    'HKS'
  ];
  List<String> result = LinkedHashSet<String>.from(sampleInput).toList();
  print("list sebelumnya:\n $sampleInput");
  // for (var element in sampleInput) {
  //   print(element);
  // }
  print(result);
}
