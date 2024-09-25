class Note {
  final int id; // Уникальный ID
  final String title;
  final String description;
  final String photo_id;
  final double price;

  Note({
    required this.id, // Добавлено в конструктор
    required this.title,
    required this.description,
    required this.photo_id,
    required this.price,
  });
}
