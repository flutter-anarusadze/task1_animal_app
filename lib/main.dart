import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1_animal_app/screens/home_screen.dart';

void main() {
  runApp(const AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animals App',
      home: HomeScreen(),
    );
  }
}


