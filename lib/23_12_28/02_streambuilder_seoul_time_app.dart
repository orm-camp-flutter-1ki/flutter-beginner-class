import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/seoul_time_repository.dart';
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
      home: SeoulTimeApp(),
    );
  }
}

class SeoulTimeApp extends StatelessWidget {
  final _repository = SeoulTimeRepository();

  SeoulTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamBuilder 방식'),
      ),
      body: StreamBuilder<Time>(
        stream: _repository.getTimeStream(),
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
