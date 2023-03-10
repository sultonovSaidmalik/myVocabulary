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
    print("\n");
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
          allVocabulary();
        }
        break;
      case 2:
        {
          print("Select the order of the word you want to change");
          String num = io.text;
          for (var item in vocabulary) {
            if (num.toLowerCase() == item.english.toLowerCase() || num.toLowerCase() == item.uzbek.toLowerCase()) {
              UpdateDeleteVocabulary.updateVocabulary(item.id);
              allVocabulary();
            }
          }
        }break;
      case 3:
        {
          print("Select the order of the word you want to change");
          String num = io.text;
          for (var item in vocabulary) {
            if (num.toLowerCase() == item.english.toLowerCase() || num.toLowerCase() == item.uzbek.toLowerCase()) {
              UpdateDeleteVocabulary.deleteVocabulary(item.id);
              allVocabulary();
            }
          }
        }
        break;
    }
  }
///Sort English Vocabulary
  static void sortInEnglishVocabulary() {
    print("Do you want to sort alphabetically or vice versa? (y/n)");
    String str = io.text;
    if (str == "n" || str == "no") {
      vocabulary.sort((a, b) {
        return a.english.toLowerCase().compareTo(b.english.toLowerCase());
      });
    } else if (str == "y" || str == "yes") {
      vocabulary.sort((a, b) {
        return b.english.toLowerCase().compareTo(a.english.toLowerCase());
      });
    } else {
      print("Please enter the correct command");
      sortInEnglishVocabulary();
    }

    for (int i = 0; i < vocabulary.length; i++) {
      print("${i + 1} ${vocabulary[i].english} - ${vocabulary[i].uzbek}");
    }
    print("\n");

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
            if (num.toLowerCase() == item.english.toLowerCase() || num.toLowerCase() == item.uzbek.toLowerCase()) {
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
            if (num.toLowerCase() == item.english.toLowerCase() || num.toLowerCase() == item.uzbek.toLowerCase()) {
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
///Sort Uzbek Vocabulary
  static void sortInUzbekVocabulary() {
    print("Do you want to sort alphabetically or vice versa? (y/n)");
    String str = io.text;
    if (str == "n" || str == "no") {
      vocabulary.sort((a, b) {
        return a.uzbek.toLowerCase().compareTo(b.uzbek.toLowerCase());
      });
    } else if (str == "y" || str == "yes") {
      vocabulary.sort((a, b) {
        return b.uzbek.toLowerCase().compareTo(a.uzbek.toLowerCase());
      });
    } else {
      print("Please enter the correct command");
      sortInUzbekVocabulary();
    }

    for (int i = 0; i < vocabulary.length; i++) {
      print("${i + 1} ${vocabulary[i].uzbek} - ${vocabulary[i].english}");
    }
    print("\n");

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
            if (num.toLowerCase() == item.english.toLowerCase() || num.toLowerCase() == item.uzbek.toLowerCase()) {
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
            if (num.toLowerCase() == item.english.toLowerCase() || num.toLowerCase() == item.uzbek.toLowerCase()) {
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
///sort Created Vocabulary
  static void sortCreatedVocabulary() {
    print("Do you want to sort created or vice versa? (y/n)");
    String str = io.text;
    if (str == "n" || str == "no") {
      vocabulary.sort((a, b) {
        return a.createdAt.compareTo(b.createdAt);
      });
    } else if (str == "y" || str == "yes") {
      vocabulary.sort((a, b) {
        return b.createdAt.compareTo(a.createdAt);
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
    print("\n");

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
            if (num.toLowerCase() == item.english.toLowerCase() || num.toLowerCase() == item.uzbek.toLowerCase()) {
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
            if (num.toLowerCase() == item.english.toLowerCase() || num.toLowerCase() == item.uzbek.toLowerCase()) {
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
