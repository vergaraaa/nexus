// To parse this JSON data, do
//
//     final drink = drinkFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

DrinkModel drinkFromJson(String str) => DrinkModel.fromJson(json.decode(str));

String drinkToJson(DrinkModel data) => json.encode(data.toJson());

class DrinkModel {
  final String name;
  final Color color;
  final int sips;

  const DrinkModel({
    required this.name,
    required this.color,
    required this.sips,
  });

  factory DrinkModel.fromJson(Map<String, dynamic> json) => DrinkModel(
        name: json["name"],
        color: json["color"],
        sips: json["sips"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "color": color,
        "sips": sips,
      };
}
