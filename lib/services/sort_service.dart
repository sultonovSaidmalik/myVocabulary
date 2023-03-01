import 'package:myvocabulary/database/database.dart';
import 'package:myvocabulary/pages/all_vocabulary_page.dart';
import 'package:myvocabulary/pages/intro_page.dart';
import 'package:myvocabulary/services/io_service.dart';
import 'package:myvocabulary/services/update_delete_service.dart';

class SortVocabulary {
  static void allVocabulary() {
    for (int i = 0; i < vocabulary.length; i++) {
      print("${i + 1} ${vocabulary[i].english} - ${vocabulary[i].uzbek}");
    }
  }

  static void sortInEnglishVocabulary() {
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

    print("""
   1. Return to top of sort
   2. Update
   3. Delete
   0. Back
  """);
    int num = io.number;
    switch (num) {
      case 0:
        {
          AllVocabularyPage();
        }
        break;
      case 1:
        {
          sortInEnglishVocabulary();
        }
        break;
      case 2:
        {
          print("Select the order of the word you want to change");
          String num = io.text;
          for (var item in vocabulary) {
            if (num  == item.english||num  == item.uzbek) {
              UpdateDeleteVocabulary.updateVocabulary(item.id);
              sortInEnglishVocabulary();
            }
          }
        }
        break;
      case 3:
        {
          print("Select the order of the word you want to change");
          String num = io.text;
          for (var item in vocabulary) {
            if (num  == item.english||num  == item.uzbek) {
              UpdateDeleteVocabulary.deleteVocabulary(item.id);
              sortInEnglishVocabulary();
            }
          }
        }
        break;
      default:
        {
          IntroPage();
        }
    }
  }

  static void sortInUzbekVocabulary() {
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
      sortInUzbekVocabulary();
    }

    for (int i = 0; i < vocabulary.length; i++) {
      print("${i + 1} ${vocabulary[i].uzbek} - ${vocabulary[i].english}");
    }

    print("""
   1. Return to top of sort
   2. Update
   3. Delete
   0. Back
  """);
    int num = io.number;
    switch (num) {
      case 0:
        {
          AllVocabularyPage();
        }
        break;
      case 1:
        {
          sortInUzbekVocabulary();
        }
        break;
      case 2:
        {
          print("Select the order of the word you want to change");
          String num = io.text;
          for (var item in vocabulary) {
            if (num  == item.english||num==item.uzbek) {
              UpdateDeleteVocabulary.updateVocabulary(item.id);
              sortInUzbekVocabulary();
            }
          }
        }
        break;
      case 3:
        {
          print("Select the order of the word you want to change");
          String num = io.text;
          for (var item in vocabulary) {
            if (num  == item.english||item.uzbek==num) {
              UpdateDeleteVocabulary.deleteVocabulary(item.id);
              sortInUzbekVocabulary();
            }
          }
        }
        break;
      default:
        {
          IntroPage();
        }
    }
  }

  static void sortCreatedVocabulary() {
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
      sortCreatedVocabulary();
    }
    vocabulary.sort((a, b) {
      return a.createdAt.compareTo(b.createdAt);
    });
    for (int i = 0; i < vocabulary.length; i++) {
      print("${i + 1} ${vocabulary[i].english} - ${vocabulary[i].uzbek}");
    }

    print("""
   1. Return to top of sort
   2. Update
   3. Delete
   0. Back
  """);
    int num = io.number;
    switch (num) {
      case 0:
        {
          AllVocabularyPage();
        }
        break;
      case 1:
        {
          sortInEnglishVocabulary();
        }
        break;
      case 2:
        {
          print("Select the order of the word you want to change");
          String num = io.text;
          for (var item in vocabulary) {
            if (num  == item.english||item.uzbek==num) {
              UpdateDeleteVocabulary.updateVocabulary(item.id);
              sortCreatedVocabulary();
            }
          }
        }
        break;
      case 3:
        {
          print("Select the order of the word you want to change");
          String num = io.text;
          for (var item in vocabulary) {
            if (num == item.english||num==item.uzbek) {
              UpdateDeleteVocabulary.deleteVocabulary(item.id);
              sortCreatedVocabulary();
            }
          }
        }
        break;
      default:
        {
          IntroPage();
        }
    }
  }
}



