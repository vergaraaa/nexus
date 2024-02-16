import 'package:flutter/material.dart';
import 'package:nexus/constants/dialogs.dart';
import 'package:nexus/models/drink_model.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:provider/provider.dart';

class BarViewModel {
  void orderDrink(BuildContext context, DrinkModel drink) {
    AppState appState = Provider.of<AppState>(context, listen: false);
    if (!appState.authenticated) {
      Dialogs.showNeedAuthDialog(context);
    } else {
      if (appState.selectedDrink != null) {
        Dialogs.showExistentDrinkDialog(context);
      } else {
        appState.selectedDrink = drink;
      }
    }
  }
}
