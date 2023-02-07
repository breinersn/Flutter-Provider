import 'package:flutter/material.dart';

class VillanosInfo with ChangeNotifier {
  String _villano = 'Red Skull';

  String get villano => _villano;

  set villano(String nombre) {
    _villano = nombre;

    notifyListeners();
  }
}