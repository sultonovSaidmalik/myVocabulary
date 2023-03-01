import 'package:myvocabulary/pages/add_vocabulary_page.dart';
import 'package:myvocabulary/pages/all_vocabulary_page.dart';
import 'package:myvocabulary/pages/game_page.dart';
import 'package:myvocabulary/services/builder.dart';
import 'package:myvocabulary/services/utils.dart';

import '../services/io_service.dart';

class IntroPage extends Builder{
  @override
  void builder() {
    super.builder();
    print('1. Add word');
    print('2. All vocabularies');
    print('3. Game');
    print('0. Exit');

    int number = io.number;

    switch(number){
      case 1:{
        AddVocabulary();
      }break;
      case 2:{
        AllVocabularyPage();
      }break;
      case 3:{
        GamePage();
      }break;
      case 0:{
        Utils.exit();
      }break;
      default:{
        print('Wrong command');
        builder();
      }
    }
  }
}