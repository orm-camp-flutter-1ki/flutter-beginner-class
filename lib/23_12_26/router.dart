import 'package:flutter_beginner_class/23_12_26/01_go_router.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const StartScreen(),
    ),
    GoRoute(
      path: '/end',
      builder: (context, state) {
        const person = Person(name: '한석봉', age: 10);
        return const EndScreen(person: person);
      },
    ),
  ],
);