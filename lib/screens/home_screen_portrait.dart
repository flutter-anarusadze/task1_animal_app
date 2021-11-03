import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1_animal_app/data/model/animal.dart';
import 'package:task_1_animal_app/data/model/animal_list.dart';

class HomeScreenPortrait extends StatefulWidget {
  const HomeScreenPortrait({Key? key, required this.animalList})
      : super(key: key);

  final List<Animal> animalList;

  @override
  State<StatefulWidget> createState() => _HomeScreenPortraitState();
}

class _HomeScreenPortraitState extends State<HomeScreenPortrait> {
  var animalImageUrl = animalList[0].imageUrl;
  var animalDescription = animalList[0].description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.network(animalImageUrl, width: 300, height: 300),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xff6fb0f6),
                border: Border.all(color: const Color(0xff6fb0f6)),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Center(
                      child: Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        animalDescription,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ))),
            )),
        addRow([addButton(animalList[0]), addButton(animalList[1])]),
        addRow([addButton(animalList[2]), addButton(animalList[3])])
      ],
    );
  }

  dynamic addRow(List<Widget> buttons) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: buttons,
    );
  }

  dynamic addButton(Animal animalList) {
    return MaterialButton(
        height: 70,
        onPressed: () {
          setState(() {
            animalImageUrl = animalList.imageUrl;
            animalDescription = animalList.description;
          });
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: Text(animalList.title),
        color: const Color(0xff6fb0f6),
        textColor: CupertinoColors.white);
  }
}
