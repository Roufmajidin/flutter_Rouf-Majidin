void main() async {
  //
  await Future.delayed(Duration(seconds: 2), () {
    var input = 5;
    var fak = 1;
    for (int i = 1; i <= input; i++) {
      fak *= i;
    }

    print("Faktorial $input : $fak ");
  });
}
