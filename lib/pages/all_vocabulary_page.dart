import 'package:myvocabulary/pages/intro_page.dart';
import 'package:myvocabulary/services/builder.dart';
import 'package:myvocabulary/services/io_service.dart';
import 'package:myvocabulary/services/sort_service.dart';

class AllVocabularyPage extends Builder {
  @override
  void builder() {
    print("""
  In what order do you want to output the dictionary?
   1. All vocabulary
   2. According to the created time
   3. Sort in Uzbek language  
   4. Sort in English
   0. Back
  """);
    int num = io.number;

    switch (num) {
      case 0:
        {
          IntroPage();
        }
        break;
      case 1:
        {
          SortVocabulary.allVocabulary();
        }
        break;
      case 2:
        {
          SortVocabulary.sortCreatedVocabulary();
        }
        break;
      case 3:
        {
          SortVocabulary.sortInUzbekVocabulary();
        }
        break;
      case 4:
        {
          SortVocabulary.sortInEnglishVocabulary();
        }
        break;
      default:
        {
          print("Please enter the order number correctly");
          AllVocabularyPage();
        }
    }
  }
}

