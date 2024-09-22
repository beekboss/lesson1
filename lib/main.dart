import 'package:flutter/material.dart';
import 'package:lesson1/home.dart';
import 'package:lesson1/second_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SecondScreen());
  }
}