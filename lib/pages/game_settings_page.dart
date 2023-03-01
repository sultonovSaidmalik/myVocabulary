import 'package:myvocabulary/model/vocabulary.dart';
import 'package:myvocabulary/database/database.dart';
import 'package:myvocabulary/pages/game_page.dart';
import 'package:myvocabulary/pages/intro_page.dart';
import 'package:myvocabulary/services/io_service.dart';

List<Vocabulary> testList = [];
bool englishMode = false;
bool uzbekMode = false;

class GameSettingsPage{
  GameSettingsPage(){gameSettings();}

  void gameSettings(){
    print('Enter a quantity of test');
    print('You have a ${vocabulary.length-1} dictionary');
    int quantity = io.number;
    if(quantity > vocabulary.length){
      print('No enough dictionary!\n');gameSettings();
    }

    List<Vocabulary> vocabularyCopy = [];
    vocabularyCopy.addAll(vocabulary);



    print('\n\nSelect a Language mode!');
    print('1. Eng to Uzb');
    print('2. Uzb to Eng');
    print('3. Back');

    int command1 = io.number;
    switch(command1){
      case 1:{
        englishMode = true;
        print('\nEnglish mode selected!');
      }break;
      case 2:{
        uzbekMode = true;
        print('\nUzbek mode selected!');
      }break;
      case 3:{
        IntroPage();
      }break;
      default:{
        print('Wrong command!');
        gameSettings();
      }
    }




    print('\n\nSelect a Test mode!');
    print('1. Random');
    print('2. Last');
    print('3. First');
    print('4. Back');
    int command2 = io.number;

    switch(command2){
      case 1:{
        ///RANDOM
        vocabularyCopy.shuffle();
        for(int i = 0; i < quantity; i++){
          testList.add(vocabularyCopy[i]);
        }
        GamePage();
      }break;
      case 2:{
        ///LAST
        vocabularyCopy.reversed;
        for(int i = 0; i < quantity; i++){
          testList.add(vocabularyCopy[i]);
        }
        testList.shuffle();
        GamePage();
      }break;
      case 3:{
        ///FIRST
        for(int i = 0; i < quantity; i++){
          testList.add(vocabularyCopy[i]);
        }
        testList.shuffle();
        GamePage();
      }break;
      case 4:{
        IntroPage();
      }break;
      default:{
        print('Wrong command!');
        gameSettings();
      }
    }
  }
}