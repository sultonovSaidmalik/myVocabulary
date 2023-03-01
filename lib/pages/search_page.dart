import 'package:myvocabulary/database/database.dart';
import 'package:myvocabulary/pages/intro_page.dart';
import 'package:myvocabulary/services/builder.dart';
import 'package:myvocabulary/services/io_service.dart';
import 'package:myvocabulary/services/search_services.dart';
import 'package:myvocabulary/services/utils.dart';

class SearchPage extends Builder {
  @override
  void builder() {
    super.builder();
    print("\t\tSearch Page");
    io.console('Search :');
    String str = io.text.trim();
    for (var item in vocabulary) {
      if (item.uzbek == str || item.english == str) {
        Search().search(item.id);
      }
    }
    print("0 - Back");
    print("1 - Exit");
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
