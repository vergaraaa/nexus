import 'package:flutter/material.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:provider/provider.dart';

class NexusBottomNavBar extends StatelessWidget {
  const NexusBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.computer),
              label: "Room",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_drink),
              label: "Bar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gamepad_outlined),
              label: "Games",
            ),
          ],
          currentIndex: appState.selectedScreen,
          onTap: (value) {
            appState.selectedScreen = value;
          },
        );
      },
    );
  }
}
