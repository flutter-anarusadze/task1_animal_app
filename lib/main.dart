import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var animalImageUrl = spongebob;
  static const spongebob = 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/SpongeBob_SquarePants_character.svg/1200px-SpongeBob_SquarePants_character.svg.png';
  static const patrick = 'https://upload.wikimedia.org/wikipedia/en/thumb/3/33/Patrick_Star.svg/1200px-Patrick_Star.svg.png';
  static const squidward = 'https://upload.wikimedia.org/wikipedia/en/thumb/8/8f/Squidward_Tentacles.svg/1200px-Squidward_Tentacles.svg.png';
  static const krabs = 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Mr._Krabs.svg/1200px-Mr._Krabs.svg.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animals App'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(animalImageUrl, width: 250, height: 250),
              addRow([
                addButton(spongebob, "Spongebob"),
                addButton(patrick, "Patrick")
              ]),
              addRow([
                addButton(squidward, "Squidward"),
                addButton(krabs, "Krabs")
              ])
            ],
          )),
    );
  }

  dynamic addRow(List<Widget> buttons) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: buttons,
    );
  }

  dynamic addButton(String imageUrl, String title) {
    return MaterialButton(
        minWidth: 150,
        height: 70,
        onPressed: () {
          setState(() {
            animalImageUrl = imageUrl;
          });
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)
        ),
        child: Text(title),
        color: CupertinoColors.systemTeal,
        textColor: CupertinoColors.white);
  }

}
