import 'dart:io';

// Biến toàn cục phục vụ cho Bài 8 (Quản lý công việc)
List<String> tasks = ['Học lập trình Dart', 'Mua đồ ăn tối'];

void main() {
  while (true) {
    print('\n==================== MENU BÀI TẬP DART (LIST/SET/MAP) ====================');
    print('1. Danh sách tên và in tất cả các tên');
    print('2. Tập hợp (Set) trái cây và in bằng vòng lặp');
    print('3. Tính tổng số tiền chi tiêu do người dùng nhập');
    print('4. Thêm và in 7 ngày trong tuần (List.add)');
    print('5. Tìm tên bạn bè bắt đầu bằng chữ "A" hoặc "a"');
    print('6. Map thông tin cá nhân (Cập nhật quốc gia & in)');
    print('7. Map danh bạ điện thoại (Lọc key có độ dài bằng 4)');
    print('8. Ứng dụng quản lý công việc (Thêm, Xóa, Xem)');
    print('0. Thoát chương trình');
    print('========================================================================');
    stdout.write('Nhập lựa chọn của bạn (0-8): ');

    String? input = stdin.readLineSync();
    int? choice = int.tryParse(input ?? '');

    if (choice == null) {
      print('Vui lòng nhập một số hợp lệ từ 0 đến 8!');
      continue;
    }

    if (choice == 0) {
      print('Cảm ơn bạn đã sử dụng chương trình. Tạm biệt!');
      break;
    }

    print('\n--- KẾT QUẢ BÀI $choice ---');
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
      default:
        print('Lựa chọn không hợp lệ. Vui lòng chọn lại từ 0 đến 8.');
    }

    print('\nNhấn Enter để quay lại Menu...');
    stdin.readLineSync();
  }
}

// ------------------- CHI TIẾT 8 HÀM BÀI TẬP -------------------

// Bài 1: Tạo một danh sách tên và in tất cả các tên bằng cách sử dụng danh sách.
void doBai1() {
  List<String> names = ['An', 'Bình', 'Chân', 'Duy', 'Em'];

  print('Danh sách các tên hiện có:');
  for (String name in names) {
    print('- $name');
  }
}

// Bài 2: Tạo một tập hợp các loại trái cây và in tất cả các loại trái cây đó bằng vòng lặp.
void doBai2() {
  // Dùng Set để đảm bảo các phần tử không bị trùng lặp
  Set<String> fruits = {'Táo', 'Chuối', 'Cam', 'Xoài', 'Sầu riêng'};

  print('Các loại trái cây trong tập hợp (Set):');
  for (var fruit in fruits) {
    print('• $fruit');
  }
}

// Bài 3: Hãy tạo một chương trình đọc danh sách số tiền chi tiêu do người dùng nhập vào và in tổng số tiền đó ra.
void doBai3() {
  List<double> expenses = [];
  print('Nhập số tiền chi tiêu (Nhập "done" hoặc để trống và nhấn Enter để kết thúc):');

  while (true) {
    stdout.write('Nhập số tiền: ');
    String? input = stdin.readLineSync();

    if (input == null || input.trim().toLowerCase() == 'done' || input.trim().isEmpty) {
      break;
    }

    double? amount = double.tryParse(input);
    if (amount != null) {
      expenses.add(amount);
    } else {
      print('Số tiền không hợp lệ, vui lòng nhập lại số!');
    }
  }

  // Tính tổng
  double total = expenses.fold(0, (sum, item) => sum + item);
  print('\nDanh sách chi tiêu của bạn: $expenses');
  print('Tổng số tiền chi tiêu là: $total');
}

// Bài 4: Tạo một danh sách rỗng kiểu chuỗi có tên là days. Sử dụng phương thức add để thêm tên của 7 ngày và in tất cả các ngày.
void doBai4() {
  List<String> days = []; // Khởi tạo danh sách rỗng

  days.add('Thứ Hai');
  days.add('Thứ Ba');
  days.add('Thứ Tư');
  days.add('Thứ Năm');
  days.add('Thứ Sáu');
  days.add('Thứ Bảy');
  days.add('Chủ Nhật');

  print('Danh sách 7 ngày trong tuần sau khi add:');
  days.forEach((day) => print('-> $day'));
}

// Bài 5: Thêm tên 7 người bạn của bạn vào danh sách. Sử dụng công cụ tìm kiếm (hàm lập trình) để tìm một tên bắt đầu bằng chữ cái a.
void doBai5() {
  List<String> friends = ['Hoàng', 'An', 'Bảo', 'Anh Tuấn', 'Linh', 'Ánh', 'Dương'];
  print('Danh sách bạn bè: $friends');

  // Tìm các tên bắt đầu bằng chữ 'A' hoặc 'a'
  var result = friends.where((name) => name.toLowerCase().startsWith('a')).toList();

  if (result.isEmpty) {
    print('Không tìm thấy người bạn nào có tên bắt đầu bằng chữ "A".');
  } else {
    print('Các tên bắt đầu bằng chữ "A" tìm thấy là: $result');
  }
}

// Bài 6: Tạo một bản đồ với các khóa là tên, địa chỉ, tuổi, quốc gia... Cập nhật quốc gia và in tất cả.
void doBai6() {
  Map<String, dynamic> personInfo = {
    'name': 'Nguyễn Văn A',
    'address': '123 Đường Lê Lợi, TP.HCM',
    'age': 20,
    'country': 'Việt Nam'
  };

  print('Thông tin ban đầu:');
  personInfo.forEach((key, value) => print('$key: $value'));

  // Cập nhật quốc gia
  personInfo['country'] = 'Nhật Bản';
  print('\nThông tin sau khi cập nhật quốc gia:');

  for (var entry in personInfo.entries) {
    print('${entry.key}: ${entry.value}');
  }
}

// Bài 7: Tạo một bản đồ với tên, các khóa điện thoại. Sử dụng hàm where để tìm tất cả các khóa có độ dài 4.
void doBai7() {
  // Map với Key là Tên (hoặc nhãn), Value là số điện thoại
  Map<String, String> phoneBook = {
    'Alan': '0901234567',
    'John': '0911222333',
    'Alex': '0988888888',
    'Mom': '0933333333',
    'Peter': '0944444444'
  };

  print('Danh bạ hiện tại: $phoneBook');

  // Map không có hàm .where trực tiếp giống như List,
  // chúng ta lọc trên tập hợp các keys (phoneBook.keys) bằng hàm .where
  var keysLength4 = phoneBook.keys.where((key) => key.length == 4).toList();

  print('Các khóa (Tên) có độ dài bằng 4 kí tự là: $keysLength4');
  print('Chi tiết các liên hệ lọc được:');
  for (var key in keysLength4) {
    print('- $key: ${phoneBook[key]}');
  }
}

// Bài 8: Hãy tạo một ứng dụng quản lý công việc đơn giản cho phép người dùng thêm, xóa và xem các nhiệm vụ của họ.
void doBai8() {
  while (true) {
    print('\n--- QUẢN LÝ CÔNG VIỆC ---');
    print('1. Xem danh sách công việc');
    print('2. Thêm công việc mới');
    print('3. Xóa công việc');
    print('0. Quay lại Menu chính');
    stdout.write('Chọn tính năng (0-3): ');

    String? subInput = stdin.readLineSync();
    int? subChoice = int.tryParse(subInput ?? '');

    if (subChoice == 0) break;

    switch (subChoice) {
      case 1:
        if (tasks.isEmpty) {
          print('Danh sách công việc đang trống!');
        } else {
          print('\nDanh sách công việc hiện tại:');
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
        break;

      case 2:
        stdout.write('Nhập nội dung công việc mới: ');
        String? newTask = stdin.readLineSync();
        if (newTask != null && newTask.trim().isNotEmpty) {
          tasks.add(newTask.trim());
          print('Đã thêm công việc thành công!');
        } else {
          print('Nội dung không được để trống.');
        }
        break;

      case 3:
        if (tasks.isEmpty) {
          print('Không có công việc nào để xóa.');
          break;
        }
        print('\nDanh sách công việc:');
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
        stdout.write('Nhập số thứ tự công việc muốn xóa (1 -> ${tasks.length}): ');
        int? index = int.tryParse(stdin.readLineSync() ?? '');

        if (index != null && index >= 1 && index <= tasks.length) {
          String removed = tasks.removeAt(index - 1);
          print('Đã xóa thành công công việc: "$removed"');
        } else {
          print('Số thứ tự không hợp lệ!');
        }
        break;

      default:
        print('Lựa chọn không hợp lệ.');
    }
  }
}

