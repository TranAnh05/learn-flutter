import 'dart:io';

void main() {
  // ORDER 1
  // Set<int> nums = {10, 20, 30};
  // nums.addAll([40, 50]);
  // print(nums);
  //
  // // Lap qua set
  // for(int n in nums) {
  //   print(n);
  // }

  // So sanh 2 set
  // Set<String> fruit1 = {"apple", "banana", "cherry"};
  // Set<String> fruit2 = {"banana", "mango", "apple"};
  //
  // final difference = fruit1.difference(fruit2);
  // print(difference);
  // // Phan tu tai vi tri trong set
  // print(fruit1.elementAt(2));
  //
  // // Giao giua 2 tap hop
  // final intersectionSet = fruit1.intersection(fruit2);
  // print(intersectionSet);

  // ORDER 2
  // Map<String, double> expenses = {
  //   'sun': 3000.0,
  //   'mon': 3000.0
  // };
  //
  // print(expenses.keys);
  // print((expenses.keys).runtimeType);
  // print(expenses.values);
  //
  // print(expenses.keys.toList());
  // print((expenses.keys.toList()).runtimeType);
  // print(expenses.values.toList());
  //
  // print(expenses.containsKey('sun'));

  // Map<String, dynamic> book = {
  //   'title': 'Title test',
  //   'page': 200
  // };
  //
  // for(MapEntry book in book.entries) {
  //   print('Key is ${book.key}, value ${book.value}');
  // }
  //
  // book.forEach((key, value) => print('Key is $key, value $value'));
  
  // Map<String, double> mathMarks = {
  //   'ram': 30,
  //   'mark': 32,
  //   'harry': 88,
  //   'raj': 69,
  //   'john': 15,
  // };
  //
  // mathMarks.removeWhere((key, value) => value < 32);
  // print(mathMarks);

  // List<int> nums = [2, 4, 6, 8, 10, 11, 13];
  // List<int> oddNums = nums.where((num) => num.isOdd).toList();
  // print(oddNums);

  // List<String> days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  // List<String> sDays = days.where((day) => day.toLowerCase().startsWith('s')).toList();
  // print(sDays);

  // Doc file txt
  // File file = File('lib/test.txt');
  // String content = file.readAsStringSync();
  // print(content);
  //
  // print('File path: ${file.path}');
  // print('File absolute: ${file.absolute.path}');
  // print('File size: ${file.lengthSync()} bytes');

  // Doc file csv
  File file = File('lib/test.csv');
  String content = file.readAsStringSync();
  List<String> lines = content.split('\n');

  for(var line in lines) {
    print(line);
  }
}