import 'package:myvocabulary/database/database.dart';
import 'package:myvocabulary/pages/all_vocabulary_page.dart';

import 'io_service.dart';

class UpdateDeleteVocabulary {
 static void updateVocabulary(int id) {
    for (var item in vocabulary) {
      if (id == item.id) {
        print("${item.english} -${item.uzbek}");
        print("Add vocabulary to your word y/n");
        String str1 = io.text;
        if (str1.toLowerCase() == "y" || str1.toLowerCase() == "no") {
          print("Enter a vocabulary word:");
          String wordStr = io.text;
          item.english = wordStr;
        }
        print("Add vocabulary to your translation y/n");
        String str2=io.text;
        if(str2.toLowerCase()=="y"||str2.toLowerCase()=="yes"){
          print("Enter a vocabulary translation:");
          String translationStr = io.text;
          item.uzbek = translationStr;
          print("${item.english} ${item.uzbek}");
        }

        print("Update changed successfully");
        AllVocabularyPage();
      }
    }
  }

 static void deleteVocabulary(int id) {
    int itemIndex = vocabulary.indexWhere((item) => item.id == id);
    if (itemIndex == -1) {
      print("Could not find vocabulary item with id $id");
    } else {
      vocabulary.removeAt(itemIndex);
      print("Delete changed successfully");
      AllVocabularyPage();
    }
  }



}
