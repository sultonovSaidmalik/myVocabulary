import 'package:myvocabulary/pages/game_settings_page.dart';
import 'package:myvocabulary/services/builder.dart';
import 'package:myvocabulary/services/utils.dart';

import '../services/io_service.dart';
import 'intro_page.dart';

class GamePage extends Builder{
 @override
  void builder() {
    super.builder();
    int rightAnswer = 0;
    int totalTest = testList.length;
    double result = 0;
    for (int i = 0; i < testList.length; i++) {
      if (englishMode) {
        print("Ingliz tilidagi so'z: ${testList[i].english}");
        print("Uning uzbek tiliga tarjimasi quyidagilarning qaysi biri?");
        if (i ~/ 4 == 0 && i>=3) {
          print("1. ${testList[i-3].uzbek}");
          print("2. ${testList[i - 2].uzbek}");
          print("3. ${testList[i].uzbek}");
          int answer = io.number;
          if (answer == 3) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 4 == 1 && i>=3) {
          print("1. ${testList[i-1].uzbek}");
          print("2. ${testList[i-2].uzbek}");
          print("3. ${testList[i].uzbek}");
          int answer = io.number;
          if (answer == 3) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 4 == 2 && i>=3) {
          print("1. ${testList[i-1].uzbek}");
          print("2. ${testList[i].uzbek}");
          print("3. ${testList[i-3].uzbek}");
          int answer = io.number;
          if (answer == 2) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 4 == 3 && i>=3) {
          print("1. ${testList[i-1].uzbek}");
          print("2. ${testList[i-2].uzbek}");
          print("3. ${testList[i].uzbek}");
          int answer = io.number;
          if (answer == 3) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 3 == 0 && i<=2) {
          print("1. ${testList[i].uzbek}");
          print("2. ${testList[i+1].uzbek}");
          print("3. ${testList[i+2].uzbek}");
          int answer = io.number;
          if (answer == 1) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 3 == 1 && i<=2) {
          print("1. ${testList[i+1].uzbek}");
          print("2. ${testList[i+2].uzbek}");
          print("3. ${testList[i].uzbek}");
          int answer = io.number;
          if (answer == 3) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 3 == 2 && i<=2) {
          print("1. ${testList[i+1].uzbek}");
          print("2. ${testList[i].uzbek}");
          print("3. ${testList[i+2].uzbek}");
          int answer = io.number;
          if (answer == 2) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }

      }
      else if (uzbekMode) {
        print("Uzbak tilidagi so'z: ${testList[i].uzbek}");
        print("Uning ingliz tiliga tarjimasi quyidagilarning qaysi biri?");
        if (i ~/ 4 == 0 && i>=3) {
          print("1. ${testList[i - 3].english}");
          print("2. ${testList[i - 2].english}");
          print("3. ${testList[i].english}");
          int answer = io.number;
          if (answer == 3) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 4 == 1 && i>=3) {
          print("1. ${testList[i-1].english}");
          print("2. ${testList[i-2].english}");
          print("3. ${testList[i].english}");
          int answer = io.number;
          if (answer == 1) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 4 == 2 && i>=3) {
          print("1. ${testList[i-1].english}");
          print("2. ${testList[i].english}");
          print("3. ${testList[i-3].english}");
          int answer = io.number;
          if (answer == 2) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 4 == 3 && i>=3) {
          print("1. ${testList[i-1].english}");
          print("2. ${testList[i-2].english}");
          print("3. ${testList[i].english}");
          int answer = io.number;
          if (answer == 3) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 3 == 0 && i<=2) {
          print("1. ${testList[i].english}");
          print("2. ${testList[i+1].english}");
          print("3. ${testList[i+2].english}");
          int answer = io.number;
          if (answer == 1) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 3 == 1 && i<=2) {
          print("1. ${testList[i+1].english}");
          print("2. ${testList[i+2].english}");
          print("3. ${testList[i].english}");
          int answer = io.number;
          if (answer == 3) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }
        if (i ~/ 3 == 2 && i<=2) {
          print("1. ${testList[i+1].english}");
          print("2. ${testList[i].english}");
          print("3. ${testList[i+2].english}");
          int answer = io.number;
          if (answer == 2) { print("javob to'gri"); rightAnswer++;}
          else { print("javob xato");}
        }

      }
    }
    print( "to'g'ri javoblar soni: $rightAnswer");
    result=rightAnswer*100/totalTest;
    print( "natija: $result %");

    print('1. Back');
    print('0. Exit');
    int page = io.number;

    switch (page) {
      case 1:
        {
          IntroPage();
        }
        break;
      case 0:
        {
          Utils.exit();
        }
        break;
    }
  }
}