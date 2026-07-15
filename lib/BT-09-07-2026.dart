import 'dart:io';
import 'dart:math';

void main() {
  int choice;

  while (true) {
    print('\n==================== MENU BÀI TẬP DART ====================');
    print('1. In tên sử dụng hàm');
    print('2. In các số chẵn trong khoảng');
    print('3. Hàm chào hỏi greet(name)');
    print('4. Tạo mật khẩu ngẫu nhiên');
    print('5. Tính diện tích hình tròn');
    print('6. Đảo ngược chuỗi');
    print('7. Tính lũy thừa của một số');
    print('8. Hàm cộng hai số');
    print('9. Hàm tìm số lớn nhất trong ba số');
    print('10. Hàm kiểm tra số chẵn (isEven)');
    print('11. Hàm tạo User với tham số mặc định');
    print('12. Hàm tính diện tích hình chữ nhật với tham số mặc định');
    print('0. Thoát chương trình');
    print('===========================================================');
    stdout.write('Nhập lựa chọn của bạn (0-12): ');

    String? input = stdin.readLineSync();
    if (input == null || int.tryParse(input) == null) {
      print('Vui lòng nhập một số hợp lệ từ 0 đến 12!');
      continue;
    }

    choice = int.parse(input);

    if (choice == 0) {
      print('Cảm ơn bạn đã sử dụng chương trình. Tạm biệt!');
      break;
    }

    print('\n--- Kết quả Bài $choice ---');
    switch (choice) {
      case 1:
        doBai1();
        break;
      case 2:
        doBai2();
        break;
      case 3:
        doBai3();
        break;
      case 4:
        doBai4();
        break;
      case 5:
        doBai5();
        break;
      case 6:
        doBai6();
        break;
      case 7:
        doBai7();
        break;
      case 8:
        doBai8();
        break;
      case 9:
        doBai9();
        break;
      case 10:
        doBai10();
        break;
      case 11:
        doBai11();
        break;
      case 12:
        doBai12();
        break;
      default:
        print('Lựa chọn không hợp lệ. Vui lòng chọn lại.');
    }

    // Nhấn Enter để tiếp tục vòng lặp
    print('\nNhấn Enter để quay lại Menu...');
    stdin.readLineSync();
  }
}

// ------------------- CHI TIẾT 12 HÀM BÀI TẬP -------------------

// Bài 1: Hãy viết một chương trình bằng ngôn ngữ Dart để in tên của bạn bằng cách sử dụng hàm.
void printMyName() {
  print('Xin chào, tôi tên là VanAnhDev!');
}
void doBai1() {
  printMyName();
}

// Bài 2: Hãy viết một chương trình bằng ngôn ngữ Dart để in ra các số chẵn, nằm giữa các khoảng bằng cách sử dụng hàm.
void printEvenNumbersInRange(int start, int end) {
  List<int> evens = [];
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      evens.add(i);
    }
  }
  print('Các số chẵn trong khoảng từ $start đến $end là: $evens');
}
void doBai2() {
  stdout.write('Nhập số bắt đầu: ');
  int start = int.parse(stdin.readLineSync() ?? '0');
  stdout.write('Nhập số kết thúc: ');
  int end = int.parse(stdin.readLineSync() ?? '0');
  printEvenNumbersInRange(start, end);
}

// Bài 3: Hãy tạo một hàm có tên là greet nhận một tên làm đối số và in ra một lời chào.
void greet(String name) {
  print('Hello, $name');
}
void doBai3() {
  stdout.write('Nhập tên muốn chào: ');
  String name = stdin.readLineSync() ?? 'User';
  greet(name);
}

// Bài 4: Hãy viết một chương trình bằng ngôn ngữ Dart để tạo mật khẩu ngẫu nhiên.
String generateRandomPassword(int length) {
  const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*';
  Random rand = Random();

  return List.generate(length, (index) => chars[rand.nextInt(chars.length)]).join();
}
void doBai4() {
  stdout.write('Nhập độ dài mật khẩu mong muốn: ');
  int length = int.parse(stdin.readLineSync() ?? '8');
  String password = generateRandomPassword(length);
  print('Mật khẩu ngẫu nhiên của bạn là: $password');
}

// Bài 5: Viết chương trình bằng ngôn ngữ Dart để tính diện tích hình tròn bằng hàm số.
double calculateCircleArea(double radius) {
  return pi * radius * radius;
}
void doBai5() {
  stdout.write('Nhập bán kính hình tròn (r): ');
  double r = double.parse(stdin.readLineSync() ?? '0');
  double area = calculateCircleArea(r);
  print('Diện tích hình tròn có bán kính $r là: ${area.toStringAsFixed(2)}');
}

// Bài 6: Hãy viết một chương trình bằng ngôn ngữ Dart để đảo ngược chuỗi bằng cách sử dụng hàm.
String reverseString(String input) {
  return input.split('').reversed.join('');
}
void doBai6() {
  stdout.write('Nhập vào một chuỗi: ');
  String input = stdin.readLineSync() ?? '';
  print('Chuỗi sau khi đảo ngược: ${reverseString(input)}');
}

// Bài 7: Viết chương trình bằng ngôn ngữ Dart để tính lũy thừa của một số nhất định.
num calculatePower(num base, num exponent) {
  return pow(base, exponent);
}
void doBai7() {
  stdout.write('Nhập cơ số: ');
  num base = num.parse(stdin.readLineSync() ?? '0');
  stdout.write('Nhập số mũ: ');
  num exponent = num.parse(stdin.readLineSync() ?? '0');
  print('Kết quả $base^$exponent = ${calculatePower(base, exponent)}');
}

// Bài 8: Hãy viết một hàm có tên là add trong ngôn ngữ Dart, nhận hai số làm đối số và trả về tổng của chúng.
double add(double a, double b) {
  return a + b;
}
void doBai8() {
  stdout.write('Nhập số thứ nhất: ');
  double num1 = double.parse(stdin.readLineSync() ?? '0');
  stdout.write('Nhập số thứ hai: ');
  double num2 = double.parse(stdin.readLineSync() ?? '0');
  print('Tổng của $num1 và $num2 là: ${add(num1, num2)}');
}

// Bài 9: Hãy viết một hàm trong Dart có tên là maxNumber nhận ba số làm đối số và trả về số lớn nhất.
double maxNumber(double a, double b, double c) {
  return max(a, max(b, c));
}
void doBai9() {
  stdout.write('Nhập số thứ nhất: ');
  double num1 = double.parse(stdin.readLineSync() ?? '0');
  stdout.write('Nhập số thứ hai: ');
  double num2 = double.parse(stdin.readLineSync() ?? '0');
  stdout.write('Nhập số thứ ba: ');
  double num3 = double.parse(stdin.readLineSync() ?? '0');
  print('Số lớn nhất trong 3 số là: ${maxNumber(num1, num2, num3)}');
}

// Bài 10: Hãy viết một hàm trong Dart có tên là isEven nhận một số làm đối số và trả về True/False.
bool isEven(int number) {
  return number % 2 == 0;
}
void doBai10() {
  stdout.write('Nhập vào một số nguyên: ');
  int num = int.parse(stdin.readLineSync() ?? '0');
  print('Số vừa nhập là số chẵn? Kết quả: ${isEven(num)}');
}

// Bài 11: Hãy viết một hàm trong Dart có tên là createUser với các tham số name, age và isActive (mặc định true).
void createUser({required String name, required int age, bool isActive = true}) {
  print('User Info -> Tên: $name | Tuổi: $age | Đang hoạt động: $isActive');
}
void doBai11() {
  stdout.write('Nhập tên User: ');
  String name = stdin.readLineSync() ?? 'No Name';
  stdout.write('Nhập tuổi User: ');
  int age = int.parse(stdin.readLineSync() ?? '0');

  stdout.write('Có kích hoạt tài khoản không? (y/n, bỏ trống mặc định là yes): ');
  String activeInput = (stdin.readLineSync() ?? 'y').toLowerCase();

  if (activeInput == 'n') {
    createUser(name: name, age: age, isActive: false);
  } else {
    createUser(name: name, age: age); // Sử dụng giá trị mặc định true
  }
}

// Bài 12: Viết một hàm trong Dart có tên là calculateArea để tính diện tích của hình chữ nhật (mặc định dài/rộng = 1).
double calculateArea([double length = 1, double width = 1]) {
  return length * width;
}
void doBai12() {
  print('Bấm Enter trực tiếp (bỏ trống) nếu muốn sử dụng kích thước mặc định (= 1).');

  stdout.write('Nhập chiều dài: ');
  String? lenInput = stdin.readLineSync();
  double? length = (lenInput != null && lenInput.isNotEmpty) ? double.parse(lenInput) : null;

  stdout.write('Nhập chiều rộng: ');
  String? widInput = stdin.readLineSync();
  double? width = (widInput != null && widInput.isNotEmpty) ? double.parse(widInput) : null;

  double area;
  if (length == null && width == null) {
    area = calculateArea();
    print('Sử dụng mặc định (Dài: 1, Rộng: 1) -> Diện tích: $area');
  } else if (length != null && width == null) {
    area = calculateArea(length);
    print('Dài: $length, Rộng (mặc định): 1 -> Diện tích: $area');
  } else if (length == null && width != null) {
    area = calculateArea(width);
    print('Dài (mặc định): 1, Rộng: $width -> Diện tích: $area');
  } else {
    area = calculateArea(length!, width!);
    print('Dài: $length, Rộng: $width -> Diện tích: $area');
  }
}