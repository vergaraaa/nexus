import 'package:flutter/material.dart';
import 'package:nexus/constants/constants.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:provider/provider.dart';

class BarScreen extends StatelessWidget {
  const BarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const drinks = Constants.drinks;
    AppState appState = Provider.of<AppState>(context, listen: false);

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
          onTap: () {
            if (appState.selectedDrink != null) {
              _showExistentDrinkDialog(context);
            } else {
              appState.selectedDrink = drinks[index];
            }
          },
        );
      },
    );
  }

  Future<dynamic> _showExistentDrinkDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('You have a drink already!'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Finish your drink first and then order another one.'),
                Text('We don\'t want heroes here...'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Got it!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
