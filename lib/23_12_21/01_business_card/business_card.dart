import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_20/model/star.dart';

class BusinessCard extends StatelessWidget {
  final Star star;

  final void Function(Star star) onPhotoPressed;
  final void Function(String name) onNamePressed;

  const BusinessCard({
    super.key,
    required this.star,
    required this.onPhotoPressed,
    required this.onNamePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            onPhotoPressed(star);
          },
          child: Hero(
            tag: star.id,
            child: Image.network(
              star.imageUrl,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            onNamePressed(star.title);
            // print(star.title);
          },
          child: Text(
            star.title,
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ],
    );
  }
}
