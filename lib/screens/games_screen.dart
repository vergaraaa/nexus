import 'package:flutter/material.dart';
import 'package:nexus/constants/constants.dart';
import 'package:nexus/constants/dialogs.dart';
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
            onPressed: () async {
              if (!appState.authenticated) {
                Dialogs.showNeedAuthDialog(context);
              } else {
                if (!appState.timerRunning) {
                  await Dialogs.topUp(context);
                }
                if (appState.timerRunning) {
                  appState.selectedGame = games[index];
                  appState.selectedScreen = 0;
                }
              }
            },
            child: const Text("Play"),
          ),
        );
      },
    );
  }
}
