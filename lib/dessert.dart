import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({Key ?key}) : super(key: key);
  // 1
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Center(
      child: Container(),
    );
  }
}