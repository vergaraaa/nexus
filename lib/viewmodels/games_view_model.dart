import 'package:flutter/material.dart';
import 'package:nexus/constants/dialogs.dart';
import 'package:nexus/models/game_model.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:provider/provider.dart';

class GamesViewModel {
  void play(BuildContext context, GameModel game) async {
    AppState appState = Provider.of<AppState>(context, listen: false);

    if (!appState.authenticated) {
      Dialogs.showNeedAuthDialog(context);
    } else {
      if (!appState.timerRunning) {
        Dialogs.timeOver(context);
      }
      if (appState.timerRunning) {
        appState.selectedGame = game;
        appState.selectedScreen = 0;
      }
    }
  }
}
