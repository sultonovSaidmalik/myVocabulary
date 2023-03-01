import 'dart:io';

final IOService io = IOService();

class IOService {
  String get text {
    String word = stdin.readLineSync() ?? '';
    return word.trimRight();
  }

  int get number {
    String word = stdin.readLineSync() ?? '';
    return int.tryParse(word.trim()) ?? 0;
  }


  void console(Object? object) {
    stdout.write(object);
  }
}