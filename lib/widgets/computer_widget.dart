import 'package:flutter/material.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:provider/provider.dart';

class ComputerWidget extends StatelessWidget {
  const ComputerWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Container(
                  width: 275,
                  height: 175,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 5),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Computer",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            if (appState.selectedGame != null)
              Container(
                color: appState.selectedGame!.color,
                height: 100,
                width: 100,
              )
          ],
        );
      },
    );
  }
}
