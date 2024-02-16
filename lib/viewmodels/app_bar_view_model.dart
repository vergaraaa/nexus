import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nexus/constants/dialogs.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:provider/provider.dart';

class AppBarViewModel {
  void topUp(BuildContext context) async {
    AppState appState = Provider.of<AppState>(context, listen: false);

    if (!appState.authenticated) {
      Dialogs.showNeedAuthDialog(context);
    } else {
      bool minutesAdded = await Dialogs.topUp(context);

      if (minutesAdded) {
        Timer.periodic(const Duration(seconds: 1), (timer) async {
          if (appState.remainingTime <= 0) {
            timer.cancel();
            appState.timerRunning = false;
            appState.selectedGame = null;

            Dialogs.timeOver(context);
          } else {
            appState.remainingTime--;
          }
        });
      }
    }
  }
}
