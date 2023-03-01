import '../database/database.dart';

class Search{
  int search(String str) {
    for (var item in vocabulary) {
      var regex = RegExp('$str');
      if (regex.hasMatch(item.english.toLowerCase())) {
        return item.id;
      }
      if (regex.hasMatch(item.uzbek.toLowerCase())) {
        return item.id;
      }
    }
    return 00;
  }
}