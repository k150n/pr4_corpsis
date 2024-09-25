import 'package:flutter/material.dart';
import 'package:pr4_corpsis/models/note.dart';

class ItemNote extends StatelessWidget {
  final Note note;

  const ItemNote({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2025), // Новый цвет фона
      appBar: AppBar(
        title: const Text('Детали товара'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (note.photo_id.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.network(
                  note.photo_id,
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 10),
            Text(
              note.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Цвет текста заголовка
              ),
            ),
            const SizedBox(height: 5),
            Text(
              note.description,
              style: const TextStyle(
                color: Colors.white, // Цвет текста описания
              ),
            ),
            const SizedBox(height: 5),
            Text(
              '₽${note.price}', // Добавление цены
              style: TextStyle(
                color: Colors.green, // Цвет для цены
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
