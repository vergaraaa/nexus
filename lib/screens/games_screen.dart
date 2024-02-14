import 'package:flutter/material.dart';
import 'package:nexus/constants/constants.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:provider/provider.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const games = Constants.games;
    AppState appState = Provider.of<AppState>(context, listen: false);

    return ListView.builder(
      itemCount: games.length,
      itemBuilder: (context, index) {
        var game = games[index];

        return ListTile(
          leading: Icon(
            Icons.gamepad,
            color: game.color,
          ),
          title: Text(
            game.name,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              // if (appState.selectedGame != null) {
              //   _showExistentGameDialog(context);
              // } else {
              appState.selectedGame = games[index];
              appState.selectedScreen = 0;
              // }
            },
            child: const Text("Play"),
          ),
        );
      },
    );
  }

  Future<dynamic> _showExistentGameDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('You have a game already!'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Finish your game first and then order another one.'),
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
