import 'package:flutter/material.dart';
import 'package:nexus/models/drink_model.dart';
import 'package:nexus/models/game_model.dart';

class AppState extends ChangeNotifier {
  int _selectedScreen = 0;
  DrinkModel? _selectedDrink;
  int _sipsLeft = 0;
  GameModel? _selectedGame;
  bool _authenticated = false;

  int get selectedScreen => _selectedScreen;
  DrinkModel? get selectedDrink => _selectedDrink;
  int get sipsLeft => _sipsLeft;
  GameModel? get selectedGame => _selectedGame;
  bool get authenticated => _authenticated;

  set selectedScreen(int index) {
    _selectedScreen = index;
    notifyListeners();
  }

  set selectedDrink(DrinkModel? drink) {
    _selectedDrink = drink;
    _sipsLeft = drink?.sips ?? 0;
    notifyListeners();
  }

  set selectedGame(GameModel? game) {
    _selectedGame = game;
    notifyListeners();
  }

  set authenticated(bool authenticated) {
    _authenticated = authenticated;
    notifyListeners();
  }

  void sip() {
    _sipsLeft -= 1;

    if (_sipsLeft == 0) {
      selectedDrink = null;
    }

    notifyListeners();
  }
}
