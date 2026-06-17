import 'package:flutter/material.dart';

class AddBookScreen extends StatefulWidget {
  const AddBookScreen({super.key});

  @override
  State<AddBookScreen> createState() => _AddBookScreenState();
}

class _AddBookScreenState extends State<AddBookScreen> {
  final titleController = TextEditingController();
  final authorController = TextEditingController();
  final memoController = TextEditingController();

  int rating = 0;

  String status = '읽음';

  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('책 추가'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: '책 제목',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: authorController,
              decoration: const InputDecoration(
                labelText: '저자',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: memoController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: '한줄 감상',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            const Text('별점'),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                    (index) => IconButton(
                  onPressed: () {
                    setState(() {
                      rating = index + 1;
                    });
                  },
                  icon: Icon(
                    index < rating
                        ? Icons.star
                        : Icons.star_border,
                  ),
                ),
              ),
            ),

            Text(
              '$rating점',
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {},
              child: const Text('읽은 날짜 선택'),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(10),
              child: DropdownButton<String>(
                value: status,
                items: const [
                  DropdownMenuItem(
                    value: '읽음',
                    child: Text('읽음'),
                  ),
                  DropdownMenuItem(
                    value: '읽는 중',
                    child: Text('읽는 중'),
                  ),
                  DropdownMenuItem(
                    value: '읽고 싶어요',
                    child: Text('읽고 싶어요'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    status = value!;
                  });
                },
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('저장'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}