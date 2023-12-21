import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/star_repository.dart';

import '00_ui_basic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StarListScreen(),
    );
  }
}

class StarListScreen extends StatelessWidget {
  final repository = StarRepository();

  StarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stars = repository.getStars();
    return Scaffold(
      appBar: AppBar(
        title: const Text('나만의 스타'),
      ),
      body: ListView(
        children: stars.map((star) {
          return SizedBox(
            height: 500,
            child: StarWidget(star: star),
          );
        }).toList(),
      ),
    );
  }
}
