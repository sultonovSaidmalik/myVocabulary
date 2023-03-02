import 'package:myvocabulary/pages/intro_page.dart';
import 'package:myvocabulary/services/builder.dart';
import 'package:myvocabulary/services/io_service.dart';

import '../database/database.dart';
import '../model/vocabulary.dart';
import '../services/utils.dart';

class AddVocabulary extends Builder {
  @override
  void builder() {
    super.builder();
    print('\t\tAdd Vocabulary ');
    io.console('English :');
    String english = io.text.trim().toLowerCase();

    io.console('Uzbek :');
    String uzbek = io.text.trim().toLowerCase();
    int count = 0;
    for (var item in vocabulary) {
      if (english == item.english.toLowerCase()) {
        print('\nThere is such a word in the dictionary !');
        AddVocabulary();
        count++;
      }
    }
    if (count == 0) {
      vocabulary.add(Vocabulary(
          id: vocabulary.length + 1,
          english: english,
          uzbek: uzbek,
          createdAt: DateTime.now().toString()));
      print('\t\t Succesfully Created ');
      io.console('Do you want to add more ?\n1.yes\n0.no\n');
      String yesno = io.text;
      if (yesno.toLowerCase() == '1' || yesno.toLowerCase() == '1') {
        AddVocabulary();
      }
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
}
