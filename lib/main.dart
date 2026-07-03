import 'dart:io';

void main () {
  /*
  print('Hello world!');
  var firstName = "Anh";
  var lastName = "Tran";
  print('Full name is: $firstName $lastName');
  */


  /*
  // CONG, TRU, NHAN, CHIA
  int num1 = 10;
  int num2 = 3;

  int sum = num1 + num2;
  int diff = num1 - num2;
  int mul = num1 + num2;
  double div = num1 / num2;

  // display
  print('The sum of $num1 and $num2 is: $sum');
  print('The diff of $num1 and $num2 is: $diff');
  print('The mul of $num1 and $num2 is: $mul');
  print('The div of $num1 and $num2 is: $div');
  */


  /*
  String name = "Anh";
  String address = "VietNam";
  num age = 20;
  num height = 1.68;
  bool isMarried = false;

  // display
  print('Name: $name');
  print('Address: $address');
  print('Age: $age');
  print('Height: $height');
  print('Is Married: $isMarried');
   */


  /*
  int num1 = 100;
  double num2 = 130.2;
  num num3 = 50;
  num num4 = 50.4;

  // calculate sum
  num sum = num1 + num2 + num3 + num4;

  // dislay
  print('Num 1 is $num1');
  print('Num 2 is $num2');
  print('Num 3 is $num3');
  print('Num 4 is $num4');
  print('Sum is $sum');
  */


  /*
  // DINH DANG HAI SO THAP PHAN
  double price = 1133.322323;
  print('price is: ${price.toStringAsFixed(2)}');
  */

  /*
  String multiLineText = '''
  This is multi line text
  with 3 single quote
  I am also write here
  ''';

  String multiLineText2 = """
  This is multi line text
  with 3 single quote
  I am also write here
  """;

  // display
  print(multiLineText);
  print(multiLineText2);
   */

  /*
  num price = 10;
  String withoutRawString = "The value of price is \t $price";
  // /t, $price bi vo hieu hoa
  String withRawString = r"The value of price is \t $price";
  print("Without Raw: $withoutRawString");
  print("With Raw: $withRawString");
   */


  /*
  // EP KIEU SANG INT
  String strValue = "1";
  print('Type of strValue is: ${strValue.runtimeType}');
  int intValue = int.parse(strValue);
  print('Type of intValue is: ${intValue.runtimeType}');
   */


  /*
  // EP KIEU SANG DOUBLE
  String strValue = "1.1";
  print('Type of strValue is: ${strValue.runtimeType}');
  double doubleValue = double.parse(strValue);
  print('Type of intValue is: ${doubleValue.runtimeType}');
   */


  /*
  // EP KIEU SANG STRING
  int one = 1;
  print('Type of one is: ${one.runtimeType}');
  String oneAsString = one.toString();
  print('Value of oneAsString is: $oneAsString');
  print('Type of oneAsString is: ${oneAsString.runtimeType}');
   */


  /*
  // CONVERT DOUBLE TO INT
  double doubleValue = 10.5;
  print('Value of doubleValue is: $doubleValue');
  print('Type of doubleValue is: ${doubleValue.runtimeType}');

  int intValue = doubleValue.toInt();
  print('Value of intValue is: $intValue');
  print('Type of intValue is: ${intValue.runtimeType}');
  */

  /*
  // EVERYTHING ABOUT LIST
  List<String> names = ["Anh", "Binh", "Chinh"];
  print("Value of names is $names");
  print("Value of names[0] is ${names[0]}"); // index 0
  print("Value of names[1] is ${names[1]}"); // index 1
  print("Value of names[2] is ${names[2]}"); // index 2

  // Finding Length of List
  int length = names.length;
  print("The length of names is $length");

  // Changing values
  names[1] = "Bill";
  print("New value of names is $names");

  // common methods often used about List
  names.add("Dung"); // Add to end
  print("After add: $names");

  names.insert(1, "Hoang"); // Insert at index
  print("After insert: $names");

  names.remove("Bill"); // Remove by value
  print("After remove: $names");

  names.removeAt(0); // Remove by index
  print("After removeAt: $names");

  // remove entire list
  // names.clear();

  // check if element contains in list
  bool isContained = names.contains("Hoang");
  print("Hoang contains in list: $isContained");

  // element is in what index
  print("Hoang is in index of: ${names.indexOf("Hoang")}");
  
  // check list is empty
  print('List is empty: ${names.isEmpty}');
  */
/*
  // EVERYTHING ABOUT SET
  Set<String> names = {"Anh", "Binh", "Chinh"};
  print("Value of names is $names");

  // Common methods often used
  // Adding item to Set
  names.add("Dung");
  names.add("Anh"); // Duplicate value, will not be added
  print("After adding Dung and Anh: $names");

  // Adding collection
  names.addAll(["En", "Giang"]);
  print("After adding collection: $names");

  // Removing item from Set
  names.remove("Binh");
  print("After removing Binh: $names");

  // Check if contains
  print("Contains Chinh: ${names.contains("Chinh")}");

  // Check is empty
  print("Is names empty: ${names.isEmpty}");
  print("Is names not empty: ${names.isNotEmpty}");
  */

  /*
  // EVERYTHING ABOUT MAP: INCLUDING COMMON METHODS OFTEN USED
  Map<String, String> user = {
    "name": "Anh",
    "age": "20",
    "address": "VietNam"
  };

  print("User name: ${user['name']}");

  // Common methods often used
  print("All keys: ${user.keys}");
  print("All values: ${user.values}");
  print("Length of map: ${user.length}");

  // Adding/Updating
  user['phone'] = "0123456789";
  user['age'] = "21";
  print("After update: $user");

  // Removing
  user.remove("address");
  print("After removing address: $user");

  // contains key in map
  print("Contains key 'name': ${user.containsKey('name')}");

  // Check is empty
  print("Is map empty: ${user.isEmpty}");
  print("Is map not empty: ${user.isNotEmpty}");
   */

  /*
  // RUNES: Unicode code points of a string
  String value = "a";
  print(value.runes);
   */

  /*
  var a = 10;
  print(a.runtimeType);
  // Check if a is of type int
  print(a is int);
   */

  /*
  // cannot change the value
  var myVariable = 50;
  myVariable = "Hello World";
  print(myVariable);
   */

  /*
  // Can change the value
  dynamic myVariable = 50;
  myVariable = "Hello World";
  print(myVariable);
   */
  
  // int age = 10;
  // print(age is !int);

  /*
  // Input string 
  print('Enter your name:');
  String? name = stdin.readLineSync();
  print('The entered name is ${name}');
  
  // input number
  print('Enter your age:');
  int? age = int.parse(stdin.readLineSync()!);
  print("The entered age is ${age}");

  print('Enter your height:');
  double? height = double.parse(stdin.readLineSync()!);
  print("The entered height is ${height}");
   */

  // String str = "Hi";
  // print(str.codeUnits);

  // All common methods of String
  // String text = " Hello Dart World ";
  //
  // print("Uppercase: ${text.toUpperCase()}");
  // print("Lowercase: ${text.toLowerCase()}");
  // print("Trimmed: '${text.trim()}'"); // Removes leading and trailing spaces
  // print("Length: ${text.length}");
  // print("Contains 'Dart': ${text.contains('Dart')}");
  // print("Starts with 'Hello': ${text.startsWith('Hello')}");
  // print("Ends with 'World': ${text.endsWith('World')}");
  // print("Index of 'Dart': ${text.indexOf('Dart')}");
  // print("Substring (6, 10): ${text.substring(6, 10)}");
  // // Substring
  // print("Substring (1-6): ${text.substring(1, 6)}"); // "Hello"
  //
  // // Search and Replace
  // print("Contains 'Dart': ${text.contains("Dart")}");
  // print("Starts with ' ': ${text.startsWith(" ")}");
  // print("Replace 'World' with 'Flutter': ${text.replaceAll("World", "Flutter")}");
  //
  // // Splitting
  // List<String> words = text.trim().split(" ");
  // print("Split into list: $words");

  // compared string
  String str1 = "Hello";
  String str2 = "Hello";
  print("Compare str1 and str2: ${str1.compareTo(str2)}");

  // split string to array and reversed join
  String str = "Hello Dart World";
  List<String> words = str.split(" ");
  String reversedStr = words.reversed.join(" ");
  print("Reversed string: $reversedStr");
}

