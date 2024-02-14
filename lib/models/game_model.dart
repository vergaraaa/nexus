// To parse this JSON data, do
//
//     final game = gameFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

GameModel gameFromJson(String str) => GameModel.fromJson(json.decode(str));

String gameToJson(GameModel data) => json.encode(data.toJson());

class GameModel {
  final String name;
  final Color color;

  const GameModel({
    required this.name,
    required this.color,
  });

  factory GameModel.fromJson(Map<String, dynamic> json) => GameModel(
        name: json["name"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "color": color,
      };
}
