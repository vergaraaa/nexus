import 'package:flutter/material.dart';
import 'package:nexus/constants/constants.dart';
import 'package:nexus/viewmodels/games_view_model.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const games = Constants.games;

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
            onPressed: () async => GamesViewModel().play(context, game),
            child: const Text("Play"),
          ),
        );
      },
    );
  }
}
