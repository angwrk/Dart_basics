import 'dart:io';

void main() {
  print("Enter your collection");
  String? s = stdin.readLineSync();
  if (s == null) {
    throw ("your collection is null");
  }
  print(searchNumbersInStringCollection(_stringToWords(s)));
}

Map<String, int> data = {
  "zero": 0,
  "one": 1,
  "two": 2,
  "three": 3,
  "four": 4,
  "five": 5,
  "six": 6,
  "seven": 7,
  "eight": 8,
  "nine": 9,
};

List<String> _stringToWords(String s) {
  List<String> wordList = s.split(' ');
  return wordList;
}

Set<int?> searchNumbersInStringCollection(List<String> collectionWord) {
  Set<int?> result = {};
  for (int i = 0; i < collectionWord.length; i++) {
    if (data.containsKey(collectionWord[i]) == true) {
      if (data[collectionWord[i]] != null) {
        result.add(data[collectionWord[i]]);
      }
    }
  }
  return result;
}
