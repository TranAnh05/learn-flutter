import 'dart:io';
import 'dart:math';

// BUOI 3
// Order 1
// void printInfo(String name, [int age = 20]) {
//   print('My name is $name and I am $age years old.');
// }

// Order 2
// void printInfo({String? name, String? gender}) {
//   print("My name is $name and My gender is $gender");
// }

// Order 3
// void printInfo({required String name}) {
//   print("Hello $name");
// }

// Order 4
// void printInfo(String name, [int? age]) {
//   if (age == null) {
//     print('Hello $name');
//   } else {
//     print("Hello $name. My age is $age");
//   }
// }

// Order 5
// var cube = (int num) {
//   return num * num * num;
// };

// Order 6
// void printNum(List<int> arr) {
//   arr.forEach((num) {
//     print(num);
//   });
// }

// Order 7
// double calculateInterest(double principal, double rate, double time) =>
//     principal * rate * time / 100;

// Order 8
// double add(double a, double b) => a + b;
// double subtract(double a, double b) => a - b;
// double multiply(double a, double b) => a * b;
// double divide(double a, double b) => a / b;

// Order 9

// Order 10

// Order 11




void main () {
  // Order 1
  // printInfo("Anh", 20);

  // Order 2
  // printInfo(name: "Anh", gender: 'man');
  // printInfo(gender: 'man', name: 'Anh');

  // Order 3
  // printInfo(name: "Anh");

  // Order 4
  // printInfo("Anh");

  // Order 5
  // print(cube(3));

  // Order 6
  // printNum([1, 2, 3, 4, 5]);

  // Order 7
  // print(calculateInterest(1000, 4, 2));

  // Order 8
  // print(add(5, 3));
  // print(subtract(5, 3));
  // print(multiply(5, 3));
  // print(divide(5, 3));

  // Order 9
  // // Ngau nhien tu 0 -> 9
  // Random random = new Random();
  // int ranNum = random.nextInt(10);
  // print(ranNum);
  //
  // // Bat dau tu 1 -> 10
  // int ranNum2 = random.nextInt(10) + 1;
  // print(ranNum2);
  //
  // // Tu a -> b
  // int min = 10;
  // int max = 20;
  // int ranNum3 = min + random.nextInt((max + 1) - min);
  // print(ranNum3);

  // random mang so
  // List<int> ranList = List.generate(10, (_) => Random().nextInt(10) + 1);
  // ranList.forEach((num) => print(num));

  // Order 10
  // var myList = [3, 4, 2, 5];
  // myList.replaceRange(0, 2, [10, 20]);
  // print(myList);

  // var myList = [3, 4, 2, 5];
  // myList.removeRange(0, 2);
  // print(myList);

  // List<int> list = [10, 20];
  // var doubleList = list.map((n) => n * 2);
  // print("Type of List: ${doubleList.runtimeType}");
  //
  // doubleList = doubleList.toList();
  // print("After change type to List: ${doubleList.runtimeType}");

  // List<int> list1 = [10, 20];
  // List<int> list2 = [11, 21];
  //
  // List<int> list = [...list1, ...list2];
  // print(list);
  //
  // bool sad = false;
  // var cart = ['milk', if (sad) 'Beer'];
  // print(cart);

  List<int> nums = [2,3,4,6];
  List<int> even = nums.where((num) => num.isEven).toList();
  print(even);






  // Order 11



}

