import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {
  String _heroe = 'Capitan America';
  Color colorBase = Colors.blue;

  String get heroe => _heroe;

  set heroe(String nombre) {
    _heroe = nombre;

    colorBase = nombre == 'Ironman' ? Colors.red : Colors.blue;

    notifyListeners();
  }
}
