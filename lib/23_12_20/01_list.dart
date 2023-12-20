import 'package:flutter/material.dart';

import '00_ui_basic.dart';
import 'model/star.dart';

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
  final List<Star> stars = [
    Star(
      title: '아이유',
      subTitle: '아이유는 아이가 아니에요',
      imageUrl:
          'https://i.namu.wiki/i/R0AhIJhNi8fkU2Al72pglkrT8QenAaCJd1as-d_iY6MC8nub1iI5VzIqzJlLa-1uzZm--TkB-KHFiT-P-t7bEg.webp',
      description:
          '아이유는 어쩌구 저쩌구아이유는 어쩌구 저쩌구아이유는 어쩌구 저쩌구아이유는 어쩌구 저쩌구아이유는 어쩌구 저쩌구아이유는 어쩌구 저쩌구아이유는 어쩌구 저쩌구아이유는 어쩌구 저쩌구아이유는 어쩌구 저쩌구아이유는 어쩌구 저쩌구아이유는 어쩌구 저쩌구',
    ),
    Star(
      title: '권은비',
      subTitle: '워터밤 안 보셨나보네요',
      imageUrl:
          'https://cdn.asiaa.co.kr/news/photo/202307/132090_146830_4051.jpg',
      description: '아이유는 어쩌구 저쩌구',
    )
  ];

  StarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
