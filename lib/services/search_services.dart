import '../database/database.dart';

class Search {
  void search(int id) {
    for (var item in vocabulary) {
    if(item.id == id){
      print("${item.english}  ${item.uzbek}");
    }
    }
  }
}