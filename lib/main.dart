import 'package:flutter/material.dart';
import 'di/locator.dart';
import 'screens/home_screen.dart';
import 'package:drift/drift.dart';
import 'database/app_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();

  final db = getIt<LocalDatabase>();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookLog',
      home: HomeScreen(),
    );
  }
}