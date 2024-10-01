import 'package:flutter/material.dart';
import 'package:pr3/models/note.dart';

class ItemNote extends StatelessWidget {
  final Note note;

  const ItemNote({required this.note});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (note.photoId.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.asset(
                note.photoId,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 370,
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              note.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(note.description),
          ),
        ],
      ),
    );
  }
}