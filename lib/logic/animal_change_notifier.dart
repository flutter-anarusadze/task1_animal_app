import 'package:flutter/cupertino.dart';
import 'package:task_1_animal_app/data/model/animal.dart';
import 'package:task_1_animal_app/data/model/animal_list.dart';

class AnimalChangeNotifier extends ChangeNotifier{

  Animal _animal = Animal(title: animalList[0].title, imageUrl: animalList[0].imageUrl, description: animalList[0].description);

  Animal get animal => _animal;

  void setAnimal(Animal animal){
    _animal = animal;
    notifyListeners();
  }
}