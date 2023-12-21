import 'package:flutter/material.dart';

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
      home: StarWidget(
        star: Star(
          id: 1,
          title: '아이유',
          subTitle: '아이유는 아이가 아니에요',
          imageUrl:
              'https://i.namu.wiki/i/R0AhIJhNi8fkU2Al72pglkrT8QenAaCJd1as-d_iY6MC8nub1iI5VzIqzJlLa-1uzZm--TkB-KHFiT-P-t7bEg.webp',
          description: '아이유는 어쩌구 저쩌구',
        ),
      ),
    );
  }
}

class StarWidget extends StatefulWidget {
  final Star star;

  const StarWidget({
    super.key,
    required this.star,
  });

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                widget.star.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            secondArea(),
            thirdArea(),
            forthArea(),
          ],
        ),
      ),
    );
  }

  Widget secondArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.star.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.star.subTitle,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Row(
              children: [
                Icon(
                  isFavorite ? Icons.star : Icons.star_border,
                  color: Colors.red,
                ),
                const Text('41'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget thirdArea() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWidget(
          icon: Icon(
            Icons.phone,
            color: Colors.blue,
          ),
          title: 'CALL',
        ),
        IconButtonWidget(
          icon: Icon(
            Icons.near_me,
            color: Colors.blue,
          ),
          title: 'ROUTE',
        ),
        IconButtonWidget(
          icon: Icon(
            Icons.share,
            color: Colors.blue,
          ),
          title: 'SHARE',
        ),
      ],
    );
  }

  Widget forthArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        widget.star.description,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  final String title;
  final Icon icon;

  const IconButtonWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          title,
          style: const TextStyle(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
