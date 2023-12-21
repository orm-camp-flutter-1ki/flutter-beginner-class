import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/star_repository.dart';
import 'package:flutter_beginner_class/23_12_20/model/star.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const CheckBoxListScreen(),
    );
  }
}

class CheckBoxListScreen extends StatefulWidget {
  const CheckBoxListScreen({super.key});

  @override
  State<CheckBoxListScreen> createState() => _CheckBoxListScreenState();
}

class _CheckBoxListScreenState extends State<CheckBoxListScreen> {
  final repository = StarRepository();

  final favorites = <int>{};

  @override
  Widget build(BuildContext context) {
    final stars = repository.getStars();
    return Scaffold(
      appBar: AppBar(
        title: const Text('내가 좋아하는 연예인'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: stars.map((e) {
          return CheckboxListTile(
            title: Text(e.title),
            value: favorites.contains(e.id),
            onChanged: (bool? value) {
              setState(() {
                if (value! == true) {
                  favorites.add(e.id);
                } else {
                  favorites.remove(e.id);
                }
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
