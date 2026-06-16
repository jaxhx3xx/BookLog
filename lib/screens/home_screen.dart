import 'package:flutter/material.dart';
import '../widgets/book_card.dart';
import '../database/app_database.dart';
import '../di/locator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final db = getIt<LocalDatabase>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookLog'),
      ),
      body: StreamBuilder<List<Book>>(
        stream: db.watchBooks(),
        builder: (context, snapshot) {

          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final books = snapshot.data!;

          if (books.isEmpty) {
            return const Center(
              child: Text('아직 등록된 책이 없습니다.'),
            );
          }

          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];

              return BookCard(
                title: book.title,
                author: book.author,
                rating: book.rating,
                status: book.status,
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}