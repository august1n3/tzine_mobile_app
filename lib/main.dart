import 'package:flutter/material.dart';
import 'package:tzine/pages/browse.dart';
import 'package:tzine/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tzine Demo 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 65, 0, 0),
        ),
      ),
      home: const BrowseScreen(),
    );
  }
}
