import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  int _selectedScreen = 0;

  int get selectedScreen => _selectedScreen;

  set selectedScreen(int index) {
    _selectedScreen = index;
    notifyListeners();
  }
}
