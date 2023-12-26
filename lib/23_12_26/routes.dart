import 'dart:convert';

import 'package:flutter_beginner_class/23_12_26/01_go_router.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const StartScreen(),
    ),
    GoRoute(
      path: '/end',
      builder: (context, state) {
        // jsonString 으로 넘겨 받는 방식
        final person =
            Person.fromJson(jsonDecode(state.uri.queryParameters['사람']!));

        // Object로 넘겨 받는 방식
        // final person = state.extra! as Person;

        return EndScreen(person: person);
      },
    ),
  ],
);
