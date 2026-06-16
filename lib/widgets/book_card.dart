import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final int rating;
  final String status;

  const BookCard({
    super.key,
    required this.title,
    required this.author,
    required this.rating,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(author),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("⭐ $rating"),
            Text(status),
          ],
        ),
      ),
    );
  }
}