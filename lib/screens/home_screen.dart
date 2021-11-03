import 'package:task_1_animal_app/data/model/animal_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_screen_landscape.dart';
import 'home_screen_portrait.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff6fb0f6),
        centerTitle: true,
        title: const Text(
          'Animals App',
          style: TextStyle(color: Colors.white),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (orientation == Orientation.portrait) {
            return HomeScreenPortrait(animalList: animalList);
          } else {
            return HomeScreenLandscape(animalList: animalList);
          }
        },
      ),
    );
  }
}
