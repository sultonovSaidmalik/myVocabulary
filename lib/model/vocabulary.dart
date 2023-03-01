class Vocabulary implements Comparable<Vocabulary> {
  int id;
  String english;
  String uzbek;
  String createdAt;

  Vocabulary(
      {required this.id,
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

  @override
  bool operator ==(Object other) =>
      other is Vocabulary &&
          id == other.id &&
          english == other.english &&
          uzbek == other.uzbek &&
          createdAt == other.createdAt;

  @override
  int get hashCode => Object.hash(id, english ,uzbek ,createdAt);
}
