class Vocabulary implements Comparable<Vocabulary> {
  int id;
  String word;
  String translation;
  String createdAt;

  Vocabulary({
      required this.id,
      required this.word,
      required this.translation,
      required this.createdAt});

  @override
  String toString() {
    return 'Vocabulary{id: $id, word: $word, translation: $translation, createdAt: $createdAt}';
  }

  @override
  int compareTo(Vocabulary other) {
    return word.compareTo(other.word);
  }
}
