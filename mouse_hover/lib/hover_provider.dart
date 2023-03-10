import 'package:flutter/material.dart';

class StartButtonProvider extends ChangeNotifier {
  int _mouse_state = 0;
  int get mouse_state => _mouse_state;
  
  void clicked() {
    _mouse_state=2;
    notifyListeners();
  }

  void isRegion() {
    _mouse_state=1;
    notifyListeners();
  }

  void isnRegion() {
    _mouse_state=0;
    notifyListeners();
  }
}