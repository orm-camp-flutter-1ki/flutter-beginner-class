import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

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

            // context.push('/end', extra: person);

            context.push(
              Uri(
                path: '/end',
                queryParameters: { '사람': jsonEncode(person.toJson()) },
              ).toString(),
            );
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

//<editor-fold desc="Data Methods">
  const Person({
    required this.name,
    required this.age,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age);

  @override
  int get hashCode => name.hashCode ^ age.hashCode;

  @override
  String toString() {
    return 'Person{' + ' name: $name,' + ' age: $age,' + '}';
  }

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'age': this.age,
    };
  }

  factory Person.fromJson(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }

//</editor-fold>
}
