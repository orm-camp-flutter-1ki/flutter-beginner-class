import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go Router 첫 화면'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const person = Person(name: '홍길동', age: 10);
            context.push('/end');
          },
          child: const Text('이동'),
        ),
      ),
    );
  }
}

class EndScreen extends StatelessWidget {
  final Person person;

  const EndScreen({
    super.key,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EndScreen'),
      ),
      body: Center(
        child: Text(person.toString()),
      ),
    );
  }
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}
