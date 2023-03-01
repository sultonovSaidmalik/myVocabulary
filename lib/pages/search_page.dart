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
    String str = io.text.trim().toLowerCase();
    print("0 - Back");
    print("1 - Exit");
    int id = Search().search(str);
    if(id != 00){
      SearchPage();
    }else if (str == '0'){
      IntroPage();
    }else if(str == '1'){
      return;
    }else {
      print('Such a word was not found in the dictionary !');
    }
  }
}
