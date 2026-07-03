import 'dart:io';

// Define function
// Viet chuong trinh in ten cua ban
void doBai1() {
  print('Enter your name:');
  String? name = stdin.readLineSync();
  print('Your name is: $name');
}

// chương trình in "Hello I am “John Doe”" và "Hello I’am “John Doe”" với dấu ngoặc đơn và ngoặc kép
void doBai2() {
  print('Hello I am "John Doe"');
  print('Hello I\'am "John Doe"');
}

// Khai báo hằng số kiểu int, đặt giá trị là 7
void doBai3() {
  const int value = 7;
  print('Number is: $value');
}

// chương trình bằng ngôn ngữ Dart tính lãi suất đơn giản. Công thức = (p * t * r) / 100
void doBai4() {
  print('Enter Principal (p):');
  double p = double.parse(stdin.readLineSync()!);
  print('Enter Time (t):');
  double t = double.parse(stdin.readLineSync()!);
  print('Enter Rate (r):');
  double r = double.parse(stdin.readLineSync()!);
  double simpleInterest = (p * t * r) / 100;
  print('Simple Interest is: $simpleInterest');
}

// Viết chương trình in bình phương của một số bằng cách sử dụng dữ liệu do người dùng nhập.
void doBai5() {
  print('Enter a number:');
  double number = double.parse(stdin.readLineSync()!);
  double square = number * number;
  print('Square of $number is: $square');
}

// Viết chương trình in đầy đủ tên và họ bằng cách sử dụng dữ liệu do người dùng nhập.
void doBai6() {
  print('Enter your first name:');
  String? firstName = stdin.readLineSync();
  print('Enter your last name:');
  String? lastName = stdin.readLineSync();
  print('Full name is: $firstName $lastName');
}

// Viết chương trình tìm thương và số dư của hai số nguyên.
void doBai7() {
  print('Enter first integer:');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter second integer:');
  int num2 = int.parse(stdin.readLineSync()!);
  int quotient = num1 ~/ num2;
  int remainder = num1 % num2;
  print('Quotient: $quotient, Remainder: $remainder');
}

// Viết chương trình hoán đổi hai số.
void doBai8() {
  print('Enter first number:');
  double a = double.parse(stdin.readLineSync()!);
  print('Enter second number:');
  double b = double.parse(stdin.readLineSync()!);

  print('Before swap: a = $a, b = $b');

  double temp = a;
  a = b;
  b = temp;

  print('After swap: a = $a, b = $b');
}

// Viết chương trình bằng ngôn ngữ Dart để loại bỏ tất cả khoảng trắng khỏi chuỗi ký tự.
void doBai9() {
  print('Enter a string:');
  String? inputString = stdin.readLineSync();
  String stringWithoutSpaces = inputString!.replaceAll(' ', '');
  print('String without spaces: $stringWithoutSpaces');
}

// Viết chương trình Dart để chuyển đổi chuỗi ký tự thành số nguyên.
void doBai10() {
  print('Enter a numeric string:');
  String? input = stdin.readLineSync();
  int number = int.parse(input!);
  print('Converted integer: $number');
}

// Giả sử, bạn thường xuyên đi ăn nhà hàng với bạn bè và phải chia hóa đơn. Viết chương trình tính toán số tiền phải chia. Công thức = (tổng số tiền hóa đơn) / số người
void doBai11() {
  print('Enter total bill amount:');
  double totalBill = double.parse(stdin.readLineSync()!);
  print('Enter number of people:');
  int numberOfPeople = int.parse(stdin.readLineSync()!);
  double amountPerPerson = totalBill / numberOfPeople;
  print('Amount per person: $amountPerPerson');
}

// Giả sử, khoảng cách từ nhà đến văn phòng là 25 km và bạn đi với tốc độ 40 km/giờ. Hãy viết chương trình để tính thời gian đi đến văn phòng tính bằng phút. Công thức = (khoảng cách) / (tốc độ)
void doBai12() {
  double distance = 25;
  double speed = 40;
  double timeInMinutes = (distance / speed) * 60;
  print('Time to office: $timeInMinutes minutes');
}

void main() {
  // MENU
  print('--- MENU ---');
  print('1. Bai 1');
  print('2. Bai 2');
  print('3. Bai 3');
  print('4. Bai 4');
  print('5. Bai 5');
  print('6. Bai 6');
  print('7. Bai 7');
  print('8. Bai 8');
  print('9. Bai 9');
  print('10. Bai 10');
  print('11. Bai 11');
  print('12. Bai 12');
  print('0. Exit');
  print('Select your option:');
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      doBai1();
      break;
    case '2':
      doBai2();
      break;
    case '3':
      doBai3();
      break;
    case '4':
      doBai4();
      break;
    case '5':
      doBai5();
      break;
    case '6':
      doBai6();
      break;
    case '7':
      doBai7();
      break;
    case '8':
      doBai8();
      break;
    case '9':
      doBai9();
      break;
    case '10':
      doBai10();
      break;
    case '11':
      doBai11();
      break;
    case '12':
      doBai12();
      break;
    case '0':
      print('Exiting...');
      break;
    default:
      print('Invalid option. Please enter number from 1 -> 12!');
  }
}


