import 'package:flutter/material.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:nexus/widgets/computer_widget.dart';
import 'package:provider/provider.dart';

class LanRoomScreen extends StatelessWidget {
  const LanRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ComputerWidget(index: 0),
            const SizedBox(height: 20),
            if (appState.selectedGame != null)
              ElevatedButton(
                onPressed: () => appState.selectedGame = null,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
                child: const Text("Stop"),
              )
            else
              const SizedBox(height: 47)
          ],
        );
      },
    );
  }
}
