import 'package:myvocabulary/database/database.dart';
import 'package:myvocabulary/pages/intro_page.dart';
import 'package:myvocabulary/services/builder.dart';
import 'package:myvocabulary/services/io_service.dart';

class AllVocabularyPage extends Builder {
  @override
  void builder() {
    print("""
  In what order do you want to output the dictionary?
   1. Return to home page
   2. According to the created time
   3. Sort in Uzbek language  
   4. Sort in English
  """);
    int num = io.number;

    switch (num) {
      case 1:
        {
          IntroPage();
        }
        break;
      case 2:
        {
          sortCreatedVocabulary();
        }
        break;
      case 3:
        {
          sortInUzbekVocabulary();
        }
        break;
      case 4:
        {
          sortInEnglishVocabulary();
        }
        break;
      default:
        {
          print("Iltimos tartib raqamni tug'ri kiriting");
          AllVocabularyPage();
        }
    }
  }
}

void sortInEnglishVocabulary() {
  print("Do you want to sort alphabetically or vice versa? (y/n)");
  String str = io.text;
  if (str == "n" || str == "no") {
    vocabulary.sort((a, b) {
      return a.english.compareTo(b.english);
    });
  } else if (str == "y" || str == "yes") {
    vocabulary.sort((a, b) {
      return b.english.compareTo(a.english);
    });
  } else {
    print("Please enter the correct command");
    sortInEnglishVocabulary();
  }

  for (int i = 0; i < vocabulary.length; i++) {
    print("${i + 1} ${vocabulary[i].english} - ${vocabulary[i].uzbek}");
  }

  print("Back to Home(1) and Back to All vocabulary(0)");

  int num = io.number;
  if (num == 1) {
    IntroPage();
  } else {
    AllVocabularyPage();
  }
}

void sortInUzbekVocabulary() {
  print("Do you want to sort alphabetically or vice versa? (y/n)");
  String str = io.text;
  if (str == "n" || str == "no") {
    vocabulary.sort((a, b) {
      return a.uzbek.compareTo(b.uzbek);
    });
  } else if (str == "y" || str == "yes") {
    vocabulary.sort((a, b) {
      return b.uzbek.compareTo(a.uzbek);
    });
  } else {
    print("Please enter the correct command");
    sortInEnglishVocabulary();
  }

  for (int i = 0; i < vocabulary.length; i++) {
    print("${i + 1} ${vocabulary[i].uzbek} - ${vocabulary[i].english}");
  }
  print("Back to Home(1) and Back to All vocabulary(0)");
  int num = io.number;
  if (num == 1) {
    IntroPage();
  } else {
    AllVocabularyPage();
  }
}

void sortCreatedVocabulary() {
  print("Do you want to sort created or vice versa? (y/n)");
  String str = io.text;
  if (str == "n" || str == "no") {
    vocabulary.sort((a, b) {
      return a.uzbek.compareTo(b.uzbek);
    });
  } else if (str == "y" || str == "yes") {
    vocabulary.sort((a, b) {
      return b.uzbek.compareTo(a.uzbek);
    });
  } else {
    print("Please enter the correct command");
    sortInEnglishVocabulary();
  }
  vocabulary.sort((a, b) {
    return a.createdAt.compareTo(b.createdAt);
  });
  for (int i = 0; i < vocabulary.length; i++) {
    print("${i + 1} ${vocabulary[i].english} - ${vocabulary[i].uzbek}");
  }
  print("Back to Home(1) and Back to All vocabulary(0)");
  int num = io.number;
  if (num == 1) {
    IntroPage();
  } else {
    AllVocabularyPage();
  }
}
