import 'package:flutter/material.dart';
import 'package:nexus/constants/constants.dart';
import 'package:nexus/viewmodels/bar_view_model.dart';

class BarScreen extends StatelessWidget {
  const BarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const drinks = Constants.drinks;

    return ListView.builder(
      itemCount: drinks.length,
      itemBuilder: (context, index) {
        var drink = drinks[index];

        return ListTile(
          leading: Icon(
            Icons.local_drink,
            color: drink.color,
          ),
          title: Text(
            drink.name,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            "Sips ${drink.sips}",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: ElevatedButton(
            onPressed: () => BarViewModel().orderDrink(context, drink),
            child: const Text("Order"),
          ),
        );
      },
    );
  }
}
