import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_28/data_source/time_api.dart';

import 'model/time.dart';

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
      home: const SeoulTimeApp(),
    );
  }
}

class SeoulTimeApp extends StatelessWidget {
  const SeoulTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('원래 방식'),
      ),
      body: FutureBuilder<Time>(
        future: TimeApi().getTime(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (!snapshot.hasData) {
            return const Center(
              child: Text('데이터가 없습니다.'),
            );
          }

          final Time time = snapshot.data!;

          return Center(
            child: Column(
              children: [
                Text(
                  time.time,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  time.utcTime,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
