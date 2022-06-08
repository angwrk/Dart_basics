import 'dart:io';

void main() {
  print("Write number in binary format");
  String? a = stdin.readLineSync();
  if (a == null) {
    throw ("Number is null!");
  }
  print("Write number in dec format");
  String? b = stdin.readLineSync();
  if (b == null) {
    throw ("Number is null!");
  }
  binaryToDec(int.parse(a));
  print(decToBinary(int.parse(b)));
}

int binaryToDec(int n) {
  bool negative = false;
  if (n < 0) {
    negative = true;
    n = -n;
  }
  String s = n.toString();
  int k = 1;
  int result = 0;
  for (int i = s.length - 1; i >= 0; i--) {
    result += ((s.codeUnitAt(i) - 48) * k);
    k = k * 2;
  }
  if (negative == true) {
    result = -result;
  }
  print("Your result in dec: " + result.toString());
  return result;
}

int decToBinary(int n) {
  if (n == 1) return 1;
  if (n == -1) return -1;
  ;
  int k;
  bool negative = false;
  if (n < 0) {
    negative = true;
    n = -n;
  }

  String result = "";
  for (n; n != 1;) {
    k = n % 2;
    n = n ~/ 2;
    result = k.toString() + result;
    if (n == 1) {
      result = n.toString() + result;
    }
  }
  if (negative == true) {
    result = "-" + result;
  }
  print("Your result in binary: " + result);
  return int.parse(result);
}
