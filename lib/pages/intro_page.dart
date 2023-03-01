import 'package:myvocabulary/pages/add_vocabulary_page.dart';
import 'package:myvocabulary/pages/all_vocabulary_page.dart';
import 'package:myvocabulary/pages/game_page.dart';
import 'package:myvocabulary/pages/search_page.dart';
import 'package:myvocabulary/services/builder.dart';
import 'package:myvocabulary/services/utils.dart';

import '../services/io_service.dart';

class IntroPage extends Builder{
  @override
  void builder() {
    super.builder();
    print('1. Search Vocabulary');
    print('2. Add Vocabulary');
    print('3. All vocabularies');
    print('4. Game');
    print('0. Exit');

    int number = io.number;

    switch(number){
      case 1:{
        SearchPage();
      }break;
      case 2:{
        AddVocabulary();
      }break;
      case 3:{
        AllVocabularyPage();
      }break;
      case 4:{
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