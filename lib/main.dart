import 'package:flutter/material.dart';
import 'di/locator.dart';

void main() {
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookLog',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BookLog'),
        ),
        body: const Center(
          child: Text('독서 기록 앱 시작!'),
        ),
      ),
    );
  }
}