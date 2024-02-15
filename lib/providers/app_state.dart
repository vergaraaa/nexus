import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nexus/models/drink_model.dart';
import 'package:nexus/models/game_model.dart';

class AppState extends ChangeNotifier {
  int _selectedScreen = 0;
  DrinkModel? _selectedDrink;
  int _sipsLeft = 0;
  GameModel? _selectedGame;
  bool _authenticated = false;
  bool _timerRunning = false;

  int get selectedScreen => _selectedScreen;
  DrinkModel? get selectedDrink => _selectedDrink;
  int get sipsLeft => _sipsLeft;
  GameModel? get selectedGame => _selectedGame;
  bool get authenticated => _authenticated;
  bool get timerRunning => _timerRunning;

  int _remainingTime = 0;
  int get remainingTime => _remainingTime;

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime <= 0) {
        timer.cancel();
        _authenticated = false;
        _selectedGame = null;
        _timerRunning = false;
      }
      _remainingTime--;

      notifyListeners();
    });
  }

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

  set timerRunning(bool timerRunning) {
    _timerRunning = timerRunning;
    notifyListeners();
  }

  void sip() {
    _sipsLeft -= 1;

    if (_sipsLeft == 0) {
      selectedDrink = null;
    }

    notifyListeners();
  }

  set remainingTime(int time) {
    _remainingTime = time;
    notifyListeners();
  }
}
