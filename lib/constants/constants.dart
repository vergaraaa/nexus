import 'package:flutter/material.dart';
import 'package:nexus/models/drink_model.dart';
import 'package:nexus/models/game_model.dart';

class Constants {
  static const drinks = [
    DrinkModel(name: "Rum and Coke", color: Colors.brown, sips: 8),
    DrinkModel(name: "Aperol Spritz", color: Colors.orange, sips: 18),
    DrinkModel(name: "Gin Lemon", color: Colors.yellow, sips: 15),
    DrinkModel(name: "Grasshopper", color: Colors.green, sips: 5),
    DrinkModel(name: "Negroni", color: Colors.red, sips: 13),
    DrinkModel(name: "Azuilito", color: Colors.blue, sips: 20),
  ];

  static const games = [
    GameModel(name: "Metal Slug", color: Colors.orange),
    GameModel(name: "Mario", color: Colors.red),
    GameModel(name: "Duolingo", color: Colors.green),
    GameModel(name: "Sonic", color: Colors.blue),
    GameModel(name: "Counter Strike", color: Colors.brown),
    GameModel(name: "Flappy bird", color: Colors.yellow),
  ];
}
