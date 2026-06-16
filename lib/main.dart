import 'package:flutter/material.dart';
import 'di/locator.dart';
import 'screens/home_screen.dart';

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
      home: const HomeScreen(),
    );
  }
}