import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1_animal_app/data/model/animal.dart';
import 'package:task_1_animal_app/data/model/animal_list.dart';


class HomeScreenLandscape extends StatefulWidget {
  const HomeScreenLandscape({Key? key, required this.animalList})
      : super(key: key);

  final List<Animal> animalList;

  @override
  State<StatefulWidget> createState() => _HomeScreenLandscapeState();
}

class _HomeScreenLandscapeState extends State<HomeScreenLandscape> {

  var animalImageUrl = animalList[0].imageUrl;
  var animalDescription = animalList[0].description;

  @override
  Widget build(BuildContext context) {
    final halfScreen = MediaQuery.of(context).size.width / 2;

    return Row(
        children: [
      Container(
        width: halfScreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(animalImageUrl, width: 250, height: 250),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff6fb0f6),
                    border: Border.all(color: const Color(0xff6fb0f6)),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Center(
                          child: Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                            animalDescription,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ))),
                ))
          ],
        ),
      ),
      Container(
        width: halfScreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            addRow([addButton(animalList[0]), addButton(animalList[1])]),
            addRow([addButton(animalList[2]), addButton(animalList[3])])
          ],
        ),
      )
    ]);
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
