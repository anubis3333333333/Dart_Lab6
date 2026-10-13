import 'dart:math';
import 'package:flutter/material.dart';
import 'flag_display.dart';
import 'action_button.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  final List<Map<String, String>> _flagsData = [
    {'image': 'assets/images/images.jfif', 'country': 'Палестина'},
    {'image': 'assets/images/21361541032512777a81d4a1.jpg', 'country': 'Израиль'},
    {'image': 'assets/images/images (1).jfif', 'country': 'Узбекистан'},
  ];

  int _currentIndex = 0;
  final Random _random = Random();

  void _nextFlag() {
    setState(() {

      _currentIndex = _random.nextInt(_flagsData.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentFlag = _flagsData[_currentIndex];

    return Scaffold(
      body: Container(

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigo, Colors.purple],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Угадай флаг страны!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
               
                FlagDisplay(
                  imagePath: currentFlag['image']!,
                  countryName: currentFlag['country']!,
                ),
                const SizedBox(height: 50),
                
                ActionButton(
                  onPressed: _nextFlag,
                  label: 'Следующий',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
