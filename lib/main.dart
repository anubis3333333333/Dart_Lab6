import 'package:flutter/material.dart';
import 'game_screen.dart';

void main() {
  runApp(const GuessFlagApp());
}

class GuessFlagApp extends StatelessWidget {
  const GuessFlagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameScreen(),
    );
  }
}
