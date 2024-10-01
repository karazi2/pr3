import 'package:flutter/material.dart';
import 'package:pr3/models/note.dart';
import 'package:pr3/pages/note_page.dart'; //
const double textSize = 26;

final List<Note> notes = <Note>[
  Note(
    id: 1,
    photoId: 'assets/images/a.jpg',
    title: 'Квартира 1',
    description: 'Уютная',
    price: 20000,
  ),
  Note(
    id: 2,
    photoId: 'assets/images/2.png',
    title: 'Квартира 2',
    description: 'Большая',
    price: 30000,
  ),
  Note(
    id: 3,
    photoId: 'assets/images/3.jpg',
    title: 'Квартира 3',
    description: 'В хорошем районе',
    price: 40000,
  ),


];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Аренда квартир"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotePage(note: notes[index]),
                    ),
                  );
                },
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1F2024),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: ClipRRect(

                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          child: Image.asset(
                            notes[index].photoId,
                            height: 230,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        notes[index].title,
                        style: const TextStyle(
                          fontSize: textSize,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${notes[index].price}₽',
                        style: TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}