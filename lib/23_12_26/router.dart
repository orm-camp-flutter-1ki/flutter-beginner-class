import 'dart:convert';

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
        final person =
            Person.fromJson(jsonDecode(state.uri.queryParameters['사람']!));

        return EndScreen(person: person);
      },
    ),
  ],
);
