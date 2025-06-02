import 'package:flutter/material.dart';
import 'package:go_moon/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Moon',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
