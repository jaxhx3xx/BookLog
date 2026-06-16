import 'package:flutter/material.dart';
import '../widgets/book_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookLog'),
      ),
      body: ListView(
        children: const [
          BookCard(
            title: '해리포터',
            author: 'J.K. 롤링',
            rating: 5,
            status: '읽음',
          ),
          BookCard(
            title: '어린 왕자',
            author: '생텍쥐페리',
            rating: 4,
            status: '읽는 중',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}