class Vocabulary implements Comparable<Vocabulary> {
  int id;
  String english;
  String uzbek;
  String createdAt;

  Vocabulary({
      required this.id,
      required this.english,
      required this.uzbek,
      required this.createdAt});

  @override
  String toString() {
    return 'Vocabulary{id: $id, word: $english, translation: $uzbek, createdAt: $createdAt}';
  }

  @override
  int compareTo(Vocabulary other) {
    return createdAt.compareTo(other.createdAt);
  }
}
