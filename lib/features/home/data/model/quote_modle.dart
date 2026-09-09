class Quote {
  final String id;
  final String text;
  final String author;

  Quote({required this.id, required this.text, required this.author});

  factory Quote.fromFirestore(String id, Map<String, dynamic> data) {
    return Quote(
      id: id,
      text: data['text'] ?? 'Unknown quote',
      author: data['author'] ?? 'Unknown Author',
    );
  }
}
