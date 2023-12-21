import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/star_repository.dart';
import 'package:flutter_beginner_class/23_12_20/model/star.dart';

import 'business_card.dart';
import 'star_detail_screen.dart';

class BusinessCardApp extends StatelessWidget {
  final repository = StarRepository();

  BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    final stars = repository.getStars();
    final iu = stars[0];

    // ==============================

    return Scaffold(
      appBar: AppBar(
        title: const Text('명함'),
      ),
      body: BusinessCard(
        star: iu,
        onPhotoPressed: (Star star) {
          print('onPhotoPressed');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StarDetailScreen(star: star),
            ),
          );
        },
        onNamePressed: (String name) {
          print('onNamePressed : $name');
        },
      ),
    );
  }
}
