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
          BookCard(
            title: '데미안',
            author: '헤르만 헤세',
            rating: 5,
            status: '읽음',
          ),
          BookCard(
            title: '불편한 편의점',
            author: '김호연',
            rating: 4,
            status: '읽고 싶어요',
          ),
          BookCard(
            title: '나미야 잡화점의 기적',
            author: '히가시노 게이고',
            rating: 5,
            status: '읽음',
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